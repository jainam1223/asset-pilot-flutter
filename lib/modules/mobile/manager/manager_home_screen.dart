import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utilities/extensions/context_extensions.dart';
import '../../../widgets/nav/nav_item.dart';
import 'cubit/manager_extensions_cubit.dart';
import 'cubit/pending_approvals_cubit.dart';
import 'cubit/team_devices_cubit.dart';
import 'extension_approvals_screen.dart';
import 'pending_approvals_screen.dart';
import 'team_devices_screen.dart';

const int _approvalsSubTabIndex = 0;
const int _extensionsSubTabIndex = 1;

/// Manager's "Approvals" tab body — an internal 3-way switcher (mockups
/// M01/M03/M04's shared bottom icon row: Approvals · Extensions · Team
/// Devices), embedded inside the employee/manager [MobileShellScreen]
/// rather than as its own [Scaffold]/bottom-nav.
class ManagerHomeScreen extends StatefulWidget {
  const ManagerHomeScreen({super.key});

  @override
  State<ManagerHomeScreen> createState() => _ManagerHomeScreenState();
}

class _ManagerHomeScreenState extends State<ManagerHomeScreen> {
  int _index = _approvalsSubTabIndex;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final items = [
      NavItem(
        id: 'approvals',
        label: l10n.navApprovals,
        icon: Icons.fact_check_outlined,
      ),
      NavItem(
        id: 'extensions',
        label: l10n.navExtensions,
        icon: Icons.list_alt_outlined,
      ),
      NavItem(
        id: 'team-devices',
        label: l10n.navTeamDevices,
        icon: Icons.laptop_mac_outlined,
      ),
    ];
    return Column(
      children: [
        Expanded(
          child: switch (_index) {
            _approvalsSubTabIndex => BlocProvider(
              create: (_) => PendingApprovalsCubit(),
              child: const PendingApprovalsScreen(),
            ),
            _extensionsSubTabIndex => BlocProvider(
              create: (_) => ManagerExtensionsCubit(),
              child: const ExtensionApprovalsScreen(),
            ),
            _ => BlocProvider(
              create: (_) => TeamDevicesCubit(),
              child: const TeamDevicesScreen(),
            ),
          },
        ),
        _ManagerSubNav(
          items: items,
          selectedIndex: _index,
          onSelected: (i) => setState(() => _index = i),
        ),
      ],
    );
  }
}

/// Compact icon row matching mockups M01/M03/M04's bottom chrome — kept
/// local to this screen (rather than [AppBottomNav]) since it sits above
/// the outer shell's real [AppBottomNav], not in place of it.
class _ManagerSubNav extends StatelessWidget {
  const _ManagerSubNav({
    required this.items,
    required this.selectedIndex,
    required this.onSelected,
  });

  final List<NavItem> items;
  final int selectedIndex;
  final ValueChanged<int> onSelected;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.appColors.surface,
        border: Border(
          top: BorderSide(color: context.appColors.divider),
        ),
      ),
      child: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              for (var i = 0; i < items.length; i++)
                _ManagerSubNavItem(
                  item: items[i],
                  selected: i == selectedIndex,
                  onTap: () => onSelected(i),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ManagerSubNavItem extends StatelessWidget {
  const _ManagerSubNavItem({
    required this.item,
    required this.selected,
    required this.onTap,
  });

  final NavItem item;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final color = selected
        ? context.appColors.primary
        : context.appColors.textHint;
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(item.icon, size: 23, color: color),
            const SizedBox(height: 5),
            Text(
              item.label,
              style: context.appTextStyles.labelSmall.copyWith(
                fontSize: 10,
                color: color,
                fontWeight: selected ? FontWeight.w600 : FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
