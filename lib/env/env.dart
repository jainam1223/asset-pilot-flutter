import 'package:flutter_dotenv/flutter_dotenv.dart';

/// Build flavors. Wiring for dev/uat/prod builds is deferred, but the shape is
/// in place so flavored entry points can set [Env.current] at startup.
enum Flavor { dev, uat, prod }

/// Per-flavor environment configuration.
///
/// Today a single [dev] config is provided and used by default, sourced from
/// `.env` (BASE_URL) via [load]. When flavors are introduced, each flavored
/// `main_*` entry sets [Env.current] before `runApp`, and [values] gains
/// uat/prod entries — nothing else changes.
class Env {
  const Env({required this.flavor, required this.baseUrl});

  final Flavor flavor;
  final String baseUrl;

  static Map<Flavor, Env> values = <Flavor, Env>{
    Flavor.dev: const Env(
      flavor: Flavor.dev,
      baseUrl: 'https://dev.api.assetpilot.example/v1',
    ),
    Flavor.uat: const Env(
      flavor: Flavor.uat,
      baseUrl: 'https://uat.api.assetpilot.example/v1',
    ),
    Flavor.prod: const Env(
      flavor: Flavor.prod,
      baseUrl: 'https://api.assetpilot.example/v1',
    ),
  };

  /// The active environment. Defaults to [Flavor.dev] until flavors are wired.
  static Env current = values[Flavor.dev]!;

  /// Loads `.env` and overrides [values]'s dev entry with `BASE_URL`.
  ///
  /// Call once at app startup, before [runApp]. Falls back to the hardcoded
  /// dev URL above if `.env` is missing or `BASE_URL` is unset.
  static Future<void> load() async {
    await dotenv.load(fileName: '.env');
    final baseUrl = dotenv.env['BASE_URL'];
    if (baseUrl != null && baseUrl.isNotEmpty) {
      values = {
        ...values,
        Flavor.dev: Env(flavor: Flavor.dev, baseUrl: baseUrl),
      };
      current = values[Flavor.dev]!;
    }
  }

  static void init(Flavor flavor) => current = values[flavor]!;
}
