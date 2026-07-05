import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../modules/admin/assignment/cubit/client_assignment_cubit.dart';
import '../../modules/admin/assignment/direct_client_assignment_screen.dart';
import '../../modules/admin/dashboard/cubit/dashboard_cubit.dart';
import '../../modules/admin/dashboard/dashboard_screen.dart';
import '../../modules/admin/extension_requests/list/cubit/extension_request_list_cubit.dart';
import '../../modules/admin/extension_requests/list/extension_request_list_screen.dart';
import '../../modules/admin/inventory/add/add_device_screen.dart';
import '../../modules/admin/inventory/add/cubit/add_device_cubit.dart';
import '../../modules/admin/inventory/detail/cubit/inventory_detail_cubit.dart';
import '../../modules/admin/inventory/detail/inventory_detail_screen.dart';
import '../../modules/admin/inventory/list/cubit/inventory_list_cubit.dart';
import '../../modules/admin/inventory/list/inventory_list_screen.dart';
import '../../modules/admin/inventory/timeline/cubit/inventory_timeline_cubit.dart';
import '../../modules/admin/inventory/timeline/inventory_timeline_screen.dart';
import '../../modules/admin/login/cubit/login_cubit.dart';
import '../../modules/admin/login/login_screen.dart';
import '../../modules/admin/maintenance/list/cubit/maintenance_list_cubit.dart';
import '../../modules/admin/maintenance/list/maintenance_list_screen.dart';
import '../../modules/admin/requests/detail/cubit/request_detail_cubit.dart';
import '../../modules/admin/requests/detail/request_detail_screen.dart';
import '../../modules/admin/requests/list/cubit/request_list_cubit.dart';
import '../../modules/admin/requests/list/request_list_screen.dart';
import '../../modules/admin/shell/admin_shell.dart';
import '../../modules/admin/support/list/cubit/support_list_cubit.dart';
import '../../modules/admin/support/list/support_list_screen.dart';
import '../../utilities/extensions/context_extensions.dart';
import '../../views/component_showcase/component_showcase_screen.dart';
import '../../views/invalid_route/invalid_route_screen.dart';
import 'app_routes.dart';

/// GoRouter for the IT Admin (web/desktop) variant.
GoRouter buildAdminRouter() {
  return GoRouter(
    initialLocation: Routes.login.path,
    errorBuilder: (context, state) =>
        InvalidRouteScreen(path: state.uri.toString()),
    routes: [
      // Login sits outside the shell — no nav rail on the auth screen.
      GoRoute(
        path: Routes.login.path,
        name: Routes.login.name,
        builder: (context, state) =>
            const AdminLoginScreen().withProvider((_) => AdminLoginCubit()),
      ),
      // Persistent-chrome shell: the side nav is built once here and the
      // matched child (below) is swapped into the content area on navigation,
      // so switching destinations never rebuilds/re-navigates the whole page.
      ShellRoute(
        builder: (context, state, child) => Scaffold(
          backgroundColor: context.appColors.adminCanvas,
          body: Row(
            children: [
              const AdminNavRail(),
              Expanded(child: child),
            ],
          ),
        ),
        routes: [
          GoRoute(
            path: Routes.adminDashboard.path,
            name: Routes.adminDashboard.name,
            pageBuilder: (context, state) => NoTransitionPage(
              child: const DashboardScreen().withProvider(
                (_) => DashboardCubit(),
              ),
            ),
          ),
          GoRoute(
            path: Routes.adminRequests.path,
            name: Routes.adminRequests.name,
            pageBuilder: (context, state) => NoTransitionPage(
              child: const RequestListScreen().withProvider(
                (_) => RequestListCubit(),
              ),
            ),
          ),
          GoRoute(
            path: Routes.adminRequestDetail.path,
            name: Routes.adminRequestDetail.name,
            pageBuilder: (context, state) {
              final id = Uri.decodeComponent(state.pathParameters['id'] ?? '');
              return NoTransitionPage(
                child: const RequestDetailScreen().withProvider(
                  (_) => RequestDetailCubit(id),
                ),
              );
            },
          ),
          GoRoute(
            path: Routes.adminInventory.path,
            name: Routes.adminInventory.name,
            pageBuilder: (context, state) => NoTransitionPage(
              child: const InventoryListScreen().withProvider(
                (_) => InventoryListCubit(),
              ),
            ),
          ),
          GoRoute(
            path: Routes.adminInventoryAdd.path,
            name: Routes.adminInventoryAdd.name,
            pageBuilder: (context, state) => NoTransitionPage(
              child: const AddDeviceScreen().withProvider(
                (_) => AddDeviceCubit(),
              ),
            ),
          ),
          GoRoute(
            path: Routes.adminInventoryDetail.path,
            name: Routes.adminInventoryDetail.name,
            pageBuilder: (context, state) {
              final id = Uri.decodeComponent(state.pathParameters['id'] ?? '');
              return NoTransitionPage(
                child: const InventoryDetailScreen().withProvider(
                  (_) => InventoryDetailCubit(id),
                ),
              );
            },
          ),
          GoRoute(
            path: Routes.adminInventoryTimeline.path,
            name: Routes.adminInventoryTimeline.name,
            pageBuilder: (context, state) {
              final id = Uri.decodeComponent(state.pathParameters['id'] ?? '');
              final deviceName = state.extra as String? ?? id;
              return NoTransitionPage(
                child: InventoryTimelineScreen(
                  deviceName: deviceName,
                ).withProvider((_) => InventoryTimelineCubit(id)),
              );
            },
          ),
          GoRoute(
            path: Routes.adminMaintenance.path,
            name: Routes.adminMaintenance.name,
            pageBuilder: (context, state) => NoTransitionPage(
              child: const MaintenanceListScreen().withProvider(
                (_) => MaintenanceListCubit(),
              ),
            ),
          ),
          GoRoute(
            path: Routes.adminExtensionRequests.path,
            name: Routes.adminExtensionRequests.name,
            pageBuilder: (context, state) => NoTransitionPage(
              child: const ExtensionRequestListScreen().withProvider(
                (_) => ExtensionRequestListCubit(),
              ),
            ),
          ),
          GoRoute(
            path: Routes.adminAssignment.path,
            name: Routes.adminAssignment.name,
            pageBuilder: (context, state) => NoTransitionPage(
              child: const DirectClientAssignmentScreen().withProvider(
                (_) => ClientAssignmentCubit(),
              ),
            ),
          ),
          GoRoute(
            path: Routes.adminSupport.path,
            name: Routes.adminSupport.name,
            pageBuilder: (context, state) => NoTransitionPage(
              child: const SupportListScreen().withProvider(
                (_) => SupportListCubit(),
              ),
            ),
          ),
        ],
      ),
      GoRoute(
        path: Routes.componentShowcase.path,
        name: Routes.componentShowcase.name,
        pageBuilder: (context, state) =>
            const NoTransitionPage(child: ComponentShowcaseScreen()),
      ),
    ],
  );
}
