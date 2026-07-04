import 'package:go_router/go_router.dart';

import '../../modules/admin/dashboard/cubit/dashboard_cubit.dart';
import '../../modules/admin/dashboard/dashboard_screen.dart';
import '../../modules/admin/extension_requests/list/cubit/extension_request_list_cubit.dart';
import '../../modules/admin/extension_requests/list/extension_request_list_screen.dart';
import '../../modules/admin/inventory/detail/cubit/inventory_detail_cubit.dart';
import '../../modules/admin/inventory/detail/inventory_detail_screen.dart';
import '../../modules/admin/inventory/list/cubit/inventory_list_cubit.dart';
import '../../modules/admin/inventory/list/inventory_list_screen.dart';
import '../../modules/admin/inventory/timeline/cubit/inventory_timeline_cubit.dart';
import '../../modules/admin/inventory/timeline/inventory_timeline_screen.dart';
import '../../modules/admin/maintenance/list/cubit/maintenance_list_cubit.dart';
import '../../modules/admin/maintenance/list/maintenance_list_screen.dart';
import '../../modules/admin/requests/detail/cubit/request_detail_cubit.dart';
import '../../modules/admin/requests/detail/request_detail_screen.dart';
import '../../modules/admin/requests/list/cubit/request_list_cubit.dart';
import '../../modules/admin/requests/list/request_list_screen.dart';
import '../../views/component_showcase/component_showcase_screen.dart';
import '../../views/invalid_route/invalid_route_screen.dart';
import 'app_routes.dart';

/// GoRouter for the IT Admin (web/desktop) variant.
GoRouter buildAdminRouter() {
  return GoRouter(
    initialLocation: Routes.adminDashboard.path,
    errorBuilder: (context, state) =>
        InvalidRouteScreen(path: state.uri.toString()),
    routes: [
      GoRoute(
        path: Routes.adminDashboard.path,
        name: Routes.adminDashboard.name,
        builder: (context, state) =>
            const DashboardScreen().withProvider((_) => DashboardCubit()),
      ),
      GoRoute(
        path: Routes.adminRequests.path,
        name: Routes.adminRequests.name,
        builder: (context, state) =>
            const RequestListScreen().withProvider((_) => RequestListCubit()),
      ),
      GoRoute(
        path: Routes.adminRequestDetail.path,
        name: Routes.adminRequestDetail.name,
        builder: (context, state) {
          final id = Uri.decodeComponent(state.pathParameters['id'] ?? '');
          return const RequestDetailScreen()
              .withProvider((_) => RequestDetailCubit(id));
        },
      ),
      GoRoute(
        path: Routes.adminInventory.path,
        name: Routes.adminInventory.name,
        builder: (context, state) =>
            const InventoryListScreen().withProvider((_) => InventoryListCubit()),
      ),
      GoRoute(
        path: Routes.adminInventoryDetail.path,
        name: Routes.adminInventoryDetail.name,
        builder: (context, state) {
          final id = Uri.decodeComponent(state.pathParameters['id'] ?? '');
          return const InventoryDetailScreen()
              .withProvider((_) => InventoryDetailCubit(id));
        },
      ),
      GoRoute(
        path: Routes.adminInventoryTimeline.path,
        name: Routes.adminInventoryTimeline.name,
        builder: (context, state) {
          final id = Uri.decodeComponent(state.pathParameters['id'] ?? '');
          final deviceName = state.extra as String? ?? id;
          return InventoryTimelineScreen(deviceName: deviceName)
              .withProvider((_) => InventoryTimelineCubit(id));
        },
      ),
      GoRoute(
        path: Routes.adminMaintenance.path,
        name: Routes.adminMaintenance.name,
        builder: (context, state) => const MaintenanceListScreen()
            .withProvider((_) => MaintenanceListCubit()),
      ),
      GoRoute(
        path: Routes.adminExtensionRequests.path,
        name: Routes.adminExtensionRequests.name,
        builder: (context, state) => const ExtensionRequestListScreen()
            .withProvider((_) => ExtensionRequestListCubit()),
      ),
      GoRoute(
        path: Routes.componentShowcase.path,
        name: Routes.componentShowcase.name,
        builder: (context, state) => const ComponentShowcaseScreen(),
      ),
    ],
  );
}
