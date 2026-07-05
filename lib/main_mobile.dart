import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app.dart';
import 'repositories/local_repository/shared_pref/shared_pref.dart';
import 'values/enumeration/app_variant.dart';
import 'widgets/feedback/app_toast.dart';

/// Entry point for the Employee/Manager (mobile) variant — iOS/Android.
///
/// Run with: `flutter run -t lib/main_mobile.dart`
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  FlavorConfig.applyVariant(AppVariant.mobile);
  currentAppVariant = AppVariant.mobile;
  await SharedPref.instance.init();
  AppToast.configure(SnackBarToastPresenter());
  runApp(const AssetPilotApp(variant: AppVariant.mobile));
}
