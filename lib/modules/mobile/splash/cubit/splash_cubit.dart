import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../repositories/local_repository/shared_pref/shared_pref.dart';
import 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(const SplashState()) {
    unawaited(loadSplashScreen());
  }

  Future<void> loadSplashScreen() async {
    if (state.navigateToLogin || state.navigateToHome) {
      return;
    }
    await Future<void>.delayed(const Duration(seconds: 2));
    final signedIn = SharedPref.instance.user != null;
    emit(
      state.copyWith(
        navigateToHome: signedIn,
        navigateToLogin: !signedIn,
      ),
    );
  }
}
