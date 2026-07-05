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
    Flavor.dev:
        'https://asset-pilot-fastapi-app-prod.azurewebsites.net/api/v1/',
    Flavor.uat:
        'https://asset-pilot-fastapi-app-prod.azurewebsites.net/api/v1/',
    Flavor.prod:
        'https://asset-pilot-fastapi-app-prod.azurewebsites.net/api/v1/',
  };

  static const Map<Flavor, String> _mobileBaseUrls = {
    Flavor.dev: 'https://app-asset-pilot.azurewebsites.net/',
    Flavor.uat: 'https://app-asset-pilot.azurewebsites.net/',
    Flavor.prod: 'https://app-asset-pilot.azurewebsites.net/',
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
  static const String _chatDirectUrl =
      'https://app-asset-pilot-ai.azurewebsites.net/';

  /// Base URL the chatbot posts `/chat` to. The backend now sends proper CORS
  /// headers, so web and native both hit it directly.
  static String get chatBaseUrl => _chatDirectUrl;

  // Direct base URL for the mobile AI chatbot service (independent of the main API).
  // TODO: CHANGE WITH ACTUAL MOBILE AI CHATBOT BASE URL.
  static const String _mobileChatDirectUrl = 'https://app-asset-pilot-ai.azurewebsites.net/';

  // Local dev CORS proxy for mobile chatbot.
  static const String _mobileChatWebProxyUrl = 'https://app-asset-pilot-ai.azurewebsites.net/';

  /// Base URL the mobile chatbot posts `/chat` to.
  static String get mobileChatBaseUrl => kIsWeb ? _mobileChatWebProxyUrl : _mobileChatDirectUrl;

  static void apply(Flavor flavor) => FlavorConfig.flavor = flavor;
}
