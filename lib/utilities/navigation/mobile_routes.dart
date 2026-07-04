import 'package:asset_pilot/repositories/remote_repository/common/models/request_res_dm.dart';
import 'package:go_router/go_router.dart';

import '../../modules/mobile/device_detail/device_detail_screen.dart';
import '../../modules/mobile/handover/cubit/request_handover_cubit.dart';
import '../../modules/mobile/handover/handover_scan_screen.dart';
import '../../modules/mobile/handover/request_handover_screen.dart';
import '../../modules/mobile/login/cubit/login_cubit.dart';
import '../../modules/mobile/login/login_screen.dart';
import '../../modules/mobile/my_devices/cubit/my_devices_cubit.dart';
import '../../modules/mobile/requests/create_request_screen.dart';
import '../../modules/mobile/requests/cubit/create_request_cubit.dart';
import '../../modules/mobile/requests/request_detail_screen.dart';
import '../../modules/mobile/shell/mobile_shell_screen.dart';
import '../../modules/mobile/splash/cubit/splash_cubit.dart';
import '../../modules/mobile/splash/splash_screen.dart';
import '../../repositories/remote_repository/common/models/user_res_dm.dart';
import '../../values/app_global/app_global.dart';
import '../../views/component_showcase/component_showcase_screen.dart';
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
        builder: (context, state) =>
            MobileShellScreen(user: state.extra as UserResDm?),
      ),
      GoRoute(
        path: Routes.createRequest.path,
        name: Routes.createRequest.name,
        builder: (context, state) => const CreateRequestScreen().withProvider(
          (_) => CreateRequestCubit(),
        ),
      ),
      GoRoute(
        path: Routes.requestDetail.path,
        name: Routes.requestDetail.name,
        builder: (context, state) {
          final data = state.extra as RequestResDm;
          return RequestDetailScreen(
            data: data,
          );
        },
      ),
      GoRoute(
        path: Routes.deviceDetail.path,
        name: Routes.deviceDetail.name,
        builder: (context, state) {
          final device = state.extra! as MyDevice;
          return DeviceDetailScreen(
            item: device.item,
            categoryName: device.categoryName,
            assignedFrom: device.item.assignedFrom,
            assignedTo: device.item.assignedTo,
            isWfh: device.item.isWfh,
            shipTrackingUrl: device.item.shipTrackingUrl,
          );
        },
      ),
      GoRoute(
        path: Routes.handoverScan.path,
        name: Routes.handoverScan.name,
        builder: (context, state) => const HandoverScanScreen(),
      ),
      GoRoute(
        path: Routes.requestHandover.path,
        name: Routes.requestHandover.name,
        builder: (context, state) {
          final itemId = state.extra! as String;
          return const RequestHandoverScreen().withProvider(
            (_) => RequestHandoverCubit(itemId),
          );
        },
      ),
      GoRoute(
        path: Routes.componentShowcase.path,
        name: Routes.componentShowcase.name,
        builder: (context, state) => const ComponentShowcaseScreen(),
      ),
    ],
  );
}
