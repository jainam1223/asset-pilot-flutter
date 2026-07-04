import 'package:envied/envied.dart';

part 'env.g.dart';

/// Build flavors. Wiring for dev/uat/prod builds is deferred, but the shape is
/// in place so flavored entry points can set [Env.current] at startup.
enum Flavor { dev, uat, prod }

/// Compile-time env config generated from `.env` by `envied` — obfuscated in
/// the build output, unlike a runtime-loaded `.env` file. Regenerate with
/// `dart run build_runner build --delete-conflicting-outputs` after editing
/// `.env`.
@Envied(path: '.env', obfuscate: true)
abstract class _Env {
  @EnviedField(varName: 'BASE_URL', defaultValue: '')
  static final String baseUrl = _Env.baseUrl;
}

/// Per-flavor environment configuration.
///
/// Today a single [dev] config is provided and used by default, sourced from
/// [_Env.baseUrl] (compile-time, from `.env`) when set, falling back to the
/// hardcoded dev URL otherwise. When flavors are introduced, each flavored
/// `main_*` entry sets [Env.current] before `runApp`, and [values] gains
/// uat/prod entries — nothing else changes.
class Env {
  const Env({required this.flavor, required this.baseUrl});

  final Flavor flavor;
  final String baseUrl;

  static Map<Flavor, Env> values = <Flavor, Env>{
    Flavor.dev: Env(
      flavor: Flavor.dev,
      baseUrl: _Env.baseUrl.isNotEmpty
          ? _Env.baseUrl
          : 'https://dev.api.assetpilot.example/v1',
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

  static void init(Flavor flavor) => current = values[flavor]!;
}
