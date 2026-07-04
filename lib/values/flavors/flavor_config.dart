import 'package:flutter/foundation.dart' show kIsWeb;

/// Build flavors. Wiring for dev/uat/prod builds is deferred, but the shape
/// is in place so flavored entry points can call [FlavorConfig.apply] at
/// startup.
enum Flavor { dev, uat, prod }

/// Build-flavor configuration, including the per-flavor API base URL.
///
/// Flavors (dev/uat/prod) are DEFERRED in this scaffold — [flavor] defaults
/// to [Flavor.dev] and only the dev base URL is realistic today. When
/// flavored entry points are introduced, each will call [FlavorConfig.apply]
/// before `runApp`.
abstract final class FlavorConfig {
  static Flavor flavor = Flavor.dev;

  // TODO(Vasu): CHANGE WITH ACTUAL BASE URLS FOR DEV/UAT/PROD
  static const Map<Flavor, String> _baseUrls = {
    Flavor.dev: 'http://172.16.5.165:3000/',
    Flavor.uat: 'http://172.16.5.165:3000/',
    Flavor.prod: 'http://172.16.5.165:3000/',
  };

  static String get baseUrl => _baseUrls[flavor]!;

  // Direct base URL for the AI chatbot service (independent of the main API).
  // TODO(Vasu): CHANGE WITH ACTUAL AI CHATBOT BASE URL.
  static const String _chatDirectUrl = 'http://172.16.5.71:8000/';

  // Local dev CORS proxy (see tool/chat_cors_proxy.dart). The browser blocks
  // direct cross-origin calls to the chat backend (no CORS headers), so on web
  // we route through the proxy; native platforms hit the backend directly.
  static const String _chatWebProxyUrl = 'http://localhost:8080/';

  /// Base URL the chatbot posts `/chat` to. On web this is the CORS proxy; on
  /// desktop/mobile it's the backend directly. Override the web value once the
  /// backend sends proper CORS headers.
  static String get chatBaseUrl => kIsWeb ? _chatWebProxyUrl : _chatDirectUrl;

  static void apply(Flavor flavor) => FlavorConfig.flavor = flavor;
}
