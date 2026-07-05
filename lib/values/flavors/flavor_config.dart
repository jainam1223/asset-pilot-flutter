import 'package:flutter/foundation.dart' show kIsWeb;

import '../enumeration/app_variant.dart';

/// Build flavors. Wiring for dev/uat/prod builds is deferred, but the shape
/// is in place so flavored entry points can call [FlavorConfig.apply] at
/// startup.
enum Flavor { dev, uat, prod }

/// Build-flavor configuration, including the per-flavor, per-variant API
/// base URL.
///
/// Flavors (dev/uat/prod) are DEFERRED in this scaffold — [flavor] defaults
/// to [Flavor.dev] and only the dev base URL is realistic today. When
/// flavored entry points are introduced, each will call [FlavorConfig.apply]
/// before `runApp`.
///
/// Admin and mobile are separate backends/deployments in principle, so each
/// gets its own base-URL map even though they currently point at the same
/// dev tunnel.
abstract final class FlavorConfig {
  static Flavor flavor = Flavor.dev;

  // TODO(Vasu): CHANGE WITH ACTUAL BASE URLS FOR DEV/UAT/PROD. The `/api/v1/`
  // prefix is baked in here so endpoint paths in `ApiService` read as
  // `admin/...` / `auth/...` without repeating the version segment.
  static const Map<Flavor, String> _adminBaseUrls = {
    Flavor.dev: 'https://gigahertz-superior-cupbearer.ngrok-free.dev/api/v1/',
    Flavor.uat: 'https://gigahertz-superior-cupbearer.ngrok-free.dev/api/v1/',
    Flavor.prod: 'https://gigahertz-superior-cupbearer.ngrok-free.dev/api/v1/',
  };

  static const Map<Flavor, String> _mobileBaseUrls = {
    Flavor.dev: 'http://172.16.5.165:3000/',
    Flavor.uat: 'http://172.16.5.165:3000/',
    Flavor.prod: 'http://172.16.5.165:3000/',
  };

  static String get adminBaseUrl => _adminBaseUrls[flavor]!;

  static String get mobileBaseUrl => _mobileBaseUrls[flavor]!;

  /// Base URL for whichever variant this process is running as.
  static String get baseUrl => switch (currentAppVariant) {
    AppVariant.admin => adminBaseUrl,
    AppVariant.mobile => mobileBaseUrl,
  };

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
