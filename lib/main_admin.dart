import 'package:flutter/material.dart';

import 'app.dart';
import 'env/env.dart';
import 'repositories/local_repository/shared_pref/shared_pref.dart';
import 'values/enumeration/app_variant.dart';
import 'widgets/feedback/app_toast.dart';

/// Entry point for the IT Admin variant — web/desktop.
///
/// Run with: `flutter run -t lib/main_admin.dart -d chrome`
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Env.load();
  await SharedPref.instance.init();
  AppToast.configure(OverlayToastPresenter());
  runApp(const AssetPilotApp(variant: AppVariant.admin));
}
