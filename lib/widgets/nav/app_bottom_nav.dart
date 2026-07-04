import 'package:flutter/material.dart';

import '../../utilities/extensions/context_extensions.dart';
import 'nav_item.dart';

/// Mobile bottom tab bar. Thin wrapper over Material's [NavigationBar]
/// that consumes the shared [NavItem] model, so iconography/labels/badges
/// stay consistent with [AppSideNav] even though layout is structurally
/// different (horizontal tabs vs vertical rail).
class AppBottomNav extends StatelessWidget {
  const AppBottomNav({
    super.key,
    required this.items,
    required this.selectedIndex,
    required this.onSelected,
  });

  final List<NavItem> items;
  final int selectedIndex;
  final ValueChanged<int> onSelected;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: selectedIndex,
      onDestinationSelected: onSelected,
      backgroundColor: context.appColors.surface,
      indicatorColor: context.appColors.surfaceMuted,
      destinations: [
        for (final item in items)
          NavigationDestination(
            icon: Icon(item.icon),
            selectedIcon: Icon(
              item.selectedIcon ?? item.icon,
              color: context.appColors.primary,
            ),
            label: item.label,
          ),
      ],
    );
  }
}
