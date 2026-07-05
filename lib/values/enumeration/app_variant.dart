/// Which product variant is running.
///
/// The two entry points (`main_mobile.dart`, `main_admin.dart`) each construct
/// `AssetPilotApp` with a fixed variant, which selects the router and
/// navigation shell. This keeps mobile and admin UI trees from mixing.
enum AppVariant {
  /// Employee/Manager experience — iOS/Android.
  mobile,

  /// IT Admin experience — web/desktop.
  admin,
}

/// The variant this process is running as — set once at startup by each
/// entry point's `main()`, before `runApp`. [DioClient] reads this to build
/// the right base URL and interceptor set; a single process only ever runs
/// one variant, so this never changes after startup.
AppVariant currentAppVariant = AppVariant.mobile;
