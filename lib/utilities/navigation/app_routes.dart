import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// All named routes across both variants.
///
/// Each entry carries its `path` and `name`. Use [Routes.path] where a raw
/// path string is needed (e.g. `context.go(Routes.login.path)`).
enum Routes {
  // Mobile (Employee/Manager)
  splash(path: '/splash', name: 'splash'),
  login(path: '/login', name: 'login'),
  mobileShell(path: '/home', name: 'mobileShell'),
  createRequest(path: '/requests/new', name: 'createRequest'),
  requestDetail(path: '/requests/:id', name: 'requestDetail'),
  deviceDetail(path: '/devices/:id', name: 'deviceDetail'),

  // Admin (IT)
  adminDashboard(path: '/dashboard', name: 'adminDashboard'),
  adminRequests(path: '/requests', name: 'adminRequests'),
  adminRequestDetail(path: '/requests/:id', name: 'adminRequestDetail'),
  adminInventory(path: '/inventory', name: 'adminInventory'),
  adminInventoryDetail(path: '/inventory/:id', name: 'adminInventoryDetail'),
  adminInventoryTimeline(
    path: '/inventory/:id/timeline',
    name: 'adminInventoryTimeline',
  ),
  adminMaintenance(path: '/maintenance', name: 'adminMaintenance'),
  adminExtensionRequests(
    path: '/extension-requests',
    name: 'adminExtensionRequests',
  ),

  // Shared (temporary, both variants — component library verification)
  componentShowcase(path: '/showcase', name: 'componentShowcase');

  const Routes({required this.path, required this.name});

  final String path;
  final String name;
}

/// Wraps a screen widget in a [BlocProvider] for its cubit, so cubits are
/// scoped per-route (the DI convention when `get_it` is not used).
extension WithProvider on Widget {
  Widget withProvider<C extends StateStreamableSource<Object?>>(
    C Function(BuildContext) create,
  ) {
    return BlocProvider<C>(create: create, child: this);
  }
}
