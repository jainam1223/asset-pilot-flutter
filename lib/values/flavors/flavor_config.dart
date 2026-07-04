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

  static void apply(Flavor flavor) => FlavorConfig.flavor = flavor;
}
