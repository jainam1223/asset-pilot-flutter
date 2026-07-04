import 'package:flutter/material.dart';

import '../../../utilities/extensions/context_extensions.dart';
import '../../../utilities/helpers/responsive.dart';
import '../../../widgets/nav/app_side_nav.dart';
import '../../../widgets/nav/nav_item.dart';

/// IT Admin desktop/web shell with a persistent left navigation rail
/// (mockup A01 chrome). Collapses to icon-only on narrow widths so the same
/// shell serves web and desktop without platform branching.
class AdminShell extends StatelessWidget {
  const AdminShell({super.key, required this.title, required this.child});

  final String title;
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
            selectedId: 'dashboard',
            onSelected: (_) {},
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
