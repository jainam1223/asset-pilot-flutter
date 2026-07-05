// Dev-only CORS proxy for the AI chatbot service.
//
// Flutter web runs in a browser, which blocks cross-origin calls to the chat
// backend because that backend does not return CORS headers (and 405s the
// preflight OPTIONS request). This tiny proxy sits in front of it, adds the
// `Access-Control-Allow-*` headers the browser requires, and forwards
// everything else through unchanged. It is a local development aid only — in
// production the backend itself must send proper CORS headers.
//
// Usage:
//   dart run tool/chat_cors_proxy.dart
// then point FlavorConfig.chatBaseUrl at http://localhost:8080/ for web dev.
//
// Optional overrides:
//   CHAT_PROXY_PORT   local port to listen on (default 8080)
//   CHAT_TARGET_URL   upstream base url (default http://172.16.5.71:8000)

import 'dart:io';

Future<void> main() async {
  final port = int.tryParse(
        Platform.environment['CHAT_PROXY_PORT'] ?? '',
      ) ??
      8080;
  final target = Uri.parse(
    Platform.environment['CHAT_TARGET_URL'] ?? 'https://app-asset-pilot-ai.azurewebsites.net',
  );

  final client = HttpClient();
  final server = await HttpServer.bind(InternetAddress.anyIPv4, port);
  stdout.writeln('Chat CORS proxy: http://localhost:$port -> $target');

  await for (final req in server) {
    _addCorsHeaders(req.response);

    // Answer the browser's preflight directly.
    if (req.method == 'OPTIONS') {
      req.response.statusCode = HttpStatus.noContent;
      await req.response.close();
      continue;
    }

    try {
      final upstreamUri = target.replace(
        path: req.uri.path,
        query: req.uri.query.isEmpty ? null : req.uri.query,
      );
      // Read the incoming body before opening the upstream request.
      final bodyChunks = <int>[];
      await for (final chunk in req) {
        bodyChunks.addAll(chunk);
      }

      final upstreamReq = await client.openUrl(req.method, upstreamUri);

      // Forward request headers (except hop-by-hop / host / content-length,
      // which the client sets itself from the body we write below).
      req.headers.forEach((name, values) {
        final lower = name.toLowerCase();
        if (lower == 'host' ||
            lower == 'connection' ||
            lower == 'content-length') {
          return;
        }
        upstreamReq.headers.set(name, values.join(','));
      });

      if (bodyChunks.isNotEmpty) upstreamReq.add(bodyChunks);
      final upstreamResp = await upstreamReq.close();

      req.response.statusCode = upstreamResp.statusCode;
      upstreamResp.headers.forEach((name, values) {
        final lower = name.toLowerCase();
        if (lower.startsWith('access-control-')) return; // we set our own
        req.response.headers.set(name, values.join(','));
      });
      _addCorsHeaders(req.response); // re-assert after copying upstream headers
      await upstreamResp.pipe(req.response);
    } catch (e) {
      stderr.writeln('proxy error: $e');
      req.response.statusCode = HttpStatus.badGateway;
      req.response.write('Proxy error: $e');
      await req.response.close();
    }
  }
}

void _addCorsHeaders(HttpResponse response) {
  response.headers
    ..set('Access-Control-Allow-Origin', '*')
    ..set('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, OPTIONS')
    ..set('Access-Control-Allow-Headers', '*')
    ..set('Access-Control-Max-Age', '86400');
}
