import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../utilities/extensions/context_extensions.dart';
import '../../../utilities/helpers/responsive.dart';
import '../../../utilities/navigation/app_routes.dart';
import '../../../widgets/nav/app_side_nav.dart';
import '../../../widgets/nav/nav_item.dart';

/// IT Admin desktop/web shell with a persistent left navigation rail
/// (mockup A01 chrome). Collapses to icon-only on narrow widths so the same
/// shell serves web and desktop without platform branching.
class AdminShell extends StatelessWidget {
  const AdminShell({
    super.key,
    required this.title,
    required this.selectedNavId,
    required this.child,
  });

  final String title;

  /// Which [NavItem.id] is highlighted in the side nav (e.g. `'dashboard'`,
  /// `'requests'`). Only ids with a built screen route via [_onSelected];
  /// the rest are inert until their screens exist.
  final String selectedNavId;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final expanded = Responsive.isDesktop(context);
    final l10n = context.l10n;
    final items = [
      NavItem(
        id: 'dashboard',
        label: l10n.adminDashboard,
        icon: Icons.dashboard_outlined,
      ),
      NavItem(
        id: 'requests',
        label: l10n.adminRequests,
        icon: Icons.list_alt_outlined,
      ),
      NavItem(
        id: 'inventory',
        label: l10n.adminInventory,
        icon: Icons.inventory_2_outlined,
      ),
      NavItem(
        id: 'settings',
        label: l10n.adminSettings,
        icon: Icons.settings_outlined,
      ),
    ];
    return Scaffold(
      backgroundColor: context.appColors.adminCanvas,
      body: Row(
        children: [
          AppSideNav(
            items: items,
            selectedId: selectedNavId,
            onSelected: (id) => _onSelected(context, id),
            brandLabel: 'ASSETPILOT',
            expanded: expanded,
          ),
          Expanded(
            child: Column(
              children: [
                _AdminTopBar(title: title),
                Expanded(child: child),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _onSelected(BuildContext context, String id) {
    final path = switch (id) {
      'dashboard' => Routes.adminDashboard.path,
      'requests' => Routes.adminRequests.path,
      _ => null,
    };
    if (path != null) context.go(path);
  }
}

class _AdminTopBar extends StatelessWidget {
  const _AdminTopBar({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      padding: const EdgeInsets.symmetric(horizontal: 28),
      decoration: BoxDecoration(
        color: context.appColors.surface,
        border: Border(
          bottom: BorderSide(color: context.appColors.borderSubtle),
        ),
      ),
      alignment: Alignment.centerLeft,
      child: Text(title, style: context.appTextStyles.h2),
    );
  }
}
