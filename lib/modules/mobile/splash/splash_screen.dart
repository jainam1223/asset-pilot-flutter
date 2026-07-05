import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../repositories/local_repository/shared_pref/shared_pref.dart';
import '../../../utilities/navigation/app_routes.dart';
import 'cubit/splash_cubit.dart';
import 'cubit/splash_state.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listenWhen: (previous, current) =>
          (previous.navigateToLogin != current.navigateToLogin &&
              current.navigateToLogin) ||
          (previous.navigateToHome != current.navigateToHome &&
              current.navigateToHome),
      listener: (context, state) {
        _navigateToNextScreen(context, state);
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: BlocBuilder<SplashCubit, SplashState>(
            builder: (context, state) {
              return Center(
                child: Image.asset(
                  'assets/images/splash.png',
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void _navigateToNextScreen(BuildContext context, SplashState state) {
    if (state.navigateToHome) {
      context.goNamed(
        Routes.mobileShell.name,
        extra: SharedPref.instance.user,
      );
    } else {
      context.goNamed(Routes.login.name);
    }
  }
}
