import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../utilities/extensions/context_extensions.dart';
import '../../../utilities/helpers/responsive.dart';
import '../../../utilities/navigation/app_routes.dart';
import '../../../widgets/nav/app_side_nav.dart';
import '../../../widgets/nav/nav_item.dart';
import '../chatbot/floating_chatbot.dart';

/// Persistent left navigation rail for the IT Admin (web/desktop) variant.
///
/// Built ONCE by the admin `ShellRoute` (see `admin_routes.dart`), so it stays
/// fixed while only the content area to its right swaps between destinations.
/// The highlighted item is derived from the current route location rather than
/// passed in per-screen, so no screen has to know its own nav id.
class AdminNavRail extends StatelessWidget {
  const AdminNavRail({super.key});

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
        id: 'maintenance',
        label: l10n.adminMaintenance,
        icon: Icons.build_outlined,
      ),
      NavItem(
        id: 'extensionRequests',
        label: l10n.adminExtensionRequests,
        icon: Icons.event_repeat_outlined,
      ),
      NavItem(
        id: 'assignment',
        label: l10n.adminAssignment,
        icon: Icons.badge_outlined,
      ),
      NavItem(
        id: 'support',
        label: l10n.adminSupport,
        icon: Icons.support_agent_outlined,
      ),
      NavItem(
        id: 'settings',
        label: l10n.adminSettings,
        icon: Icons.settings_outlined,
      ),
    ];
    return AppSideNav(
      items: items,
      selectedId: _selectedNavId(GoRouterState.of(context).uri.path),
      onSelected: (id) => _onSelected(context, id),
      brandLabel: 'ASSETPILOT',
      expanded: expanded,
      footer: _ChatLauncher(expanded: expanded),
    );
  }

  /// Maps the current location to the nav id that should be highlighted.
  /// Nested detail/timeline routes highlight their parent destination.
  /// Returns `null` for locations with no corresponding nav item (e.g. the
  /// showcase route, or an unmapped future screen) so the rail shows no
  /// selection rather than misleadingly highlighting Dashboard.
  String? _selectedNavId(String location) {
    const segmentToId = {
      'dashboard': 'dashboard',
      'requests': 'requests',
      'inventory': 'inventory',
      'maintenance': 'maintenance',
      'extension-requests': 'extensionRequests',
      'assignment': 'assignment',
      'support': 'support',
    };
    final segment = Uri.parse(location).pathSegments.firstOrNull;
    return segmentToId[segment];
  }

  void _onSelected(BuildContext context, String id) {
    final path = switch (id) {
      'dashboard' => Routes.adminDashboard.path,
      'requests' => Routes.adminRequests.path,
      'inventory' => Routes.adminInventory.path,
      'maintenance' => Routes.adminMaintenance.path,
      'extensionRequests' => Routes.adminExtensionRequests.path,
      'assignment' => Routes.adminAssignment.path,
      'support' => Routes.adminSupport.path,
      _ => null,
    };
    if (path != null) context.go(path);
  }
}

/// Chat launcher pinned to the bottom of [AdminNavRail], styled to match the
/// rail's nav items. Opens the AI assistant as a centered modal dialog.
class _ChatLauncher extends StatelessWidget {
  const _ChatLauncher({required this.expanded});

  final bool expanded;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Tooltip(
      message: l10n.chatbotTooltip,
      child: InkWell(
        onTap: () => showChatbotDialog(context),
        borderRadius: BorderRadius.circular(10),
        child: Container(
          margin: const EdgeInsets.only(bottom: 5),
          padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 13),
          child: Row(
            children: [
              Icon(
                Icons.chat_bubble_outline_rounded,
                size: 19,
                color: context.appColors.primaryAccent,
              ),
              if (expanded) ...[
                const SizedBox(width: 11),
                Expanded(
                  child: Text(
                    l10n.chatbotTooltip,
                    style: context.appTextStyles.bodyLarge.copyWith(
                      fontSize: 13,
                      color: context.appColors.primaryAccent,
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

/// Per-screen content wrapper for the IT Admin variant: a top bar plus the
/// screen body. The persistent side nav is provided separately by the admin
/// `ShellRoute` via [AdminNavRail], so switching destinations only rebuilds
/// this part — the rail stays put.
class AdminShell extends StatelessWidget {
  const AdminShell({
    super.key,
    required this.title,
    required this.child,
    this.leading,
    this.trailing,
  });

  final String title;
  final Widget child;

  /// Optional widget placed before [title] in the top bar (e.g. a back
  /// button on a nested detail screen).
  final Widget? leading;

  /// Optional widget placed at the end of the top bar (e.g. a view-mode
  /// toggle).
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _AdminTopBar(title: title, leading: leading, trailing: trailing),
        Expanded(child: child),
      ],
    );
  }
}

class _AdminTopBar extends StatelessWidget {
  const _AdminTopBar({required this.title, this.leading, this.trailing});

  final String title;
  final Widget? leading;
  final Widget? trailing;

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
      child: Row(
        children: [
          if (leading != null) ...[leading!, const SizedBox(width: 6)],
          Text(title, style: context.appTextStyles.h2),
          const Spacer(),
          ?trailing,
        ],
      ),
    );
  }
}
