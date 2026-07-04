import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(const SplashState()) {
    unawaited(loadSplashScreen());
  }

  Future<void> loadSplashScreen() async {
    if (state.navigateToLogin == true) {
      return;
    }
    //TODO(Rajvi): Initialize app with user data.
    await Future<void>.delayed(const Duration(seconds: 2), () {});
    emit(
      state.copyWith(
        navigateToLogin: true,
      ),
    );
  }
}
