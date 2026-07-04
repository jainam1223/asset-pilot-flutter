import 'package:go_router/go_router.dart';

import '../../modules/mobile/login/cubit/login_cubit.dart';
import '../../modules/mobile/login/login_screen.dart';
import '../../modules/mobile/shell/mobile_shell_screen.dart';
import '../../modules/mobile/splash/cubit/splash_cubit.dart';
import '../../modules/mobile/splash/splash_screen.dart';
import '../../values/app_global/app_global.dart';
import '../../views/invalid_route/invalid_route_screen.dart';
import 'app_routes.dart';

/// GoRouter for the Employee/Manager (mobile) variant.
///
/// Cubits are attached per-route with `.withProvider()` (the no-`get_it` DI
/// convention).
GoRouter buildMobileRouter() {
  return GoRouter(
    navigatorKey: AppGlobal.navigatorKey,
    initialLocation: Routes.splash.path,
    errorBuilder: (context, state) =>
        InvalidRouteScreen(path: state.uri.toString()),
    routes: [
      GoRoute(
        path: Routes.splash.path,
        name: Routes.splash.name,
        builder: (context, state) =>
            const SplashScreen().withProvider((_) => SplashCubit()),
      ),
      GoRoute(
        path: Routes.login.path,
        name: Routes.login.name,
        builder: (context, state) =>
            const LoginScreen().withProvider((_) => LoginCubit()),
      ),
      GoRoute(
        path: Routes.mobileShell.path,
        name: Routes.mobileShell.name,
        builder: (context, state) => const MobileShellScreen(),
      ),
    ],
  );
}
