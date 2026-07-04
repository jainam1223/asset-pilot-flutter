import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../utilities/navigation/app_routes.dart';
import 'cubit/splash_cubit.dart';
import 'cubit/splash_state.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listenWhen: (previous, current) =>
      previous.navigateToLogin != current.navigateToLogin &&
          current.navigateToLogin,
      listener: (context, state) {
        _navigateToNextScreen(context);
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

  void _navigateToNextScreen(BuildContext context) {
    context.goNamed(Routes.login.name);
  }
}
