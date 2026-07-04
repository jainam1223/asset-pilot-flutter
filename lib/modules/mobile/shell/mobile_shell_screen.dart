import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../utilities/extensions/context_extensions.dart';
import '../../../widgets/nav/app_bottom_nav.dart';
import '../../../widgets/nav/nav_item.dart';

/// Employee/Manager home shell with bottom navigation (mockup E02 chrome).
///
/// Tab bodies are placeholders; individual feature screens are built later.
class MobileShellScreen extends StatefulWidget {
  const MobileShellScreen({super.key});

  @override
  State<MobileShellScreen> createState() => _MobileShellScreenState();
}

class _MobileShellScreenState extends State<MobileShellScreen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final items = [
      NavItem(
        id: 'devices',
        label: l10n.navDevices,
        icon: Icons.laptop_mac_outlined,
      ),
      NavItem(
        id: 'requests',
        label: l10n.navRequests,
        icon: Icons.list_alt_outlined,
      ),
      NavItem(
        id: 'handover',
        label: l10n.navHandover,
        icon: Icons.swap_horiz_outlined,
      ),
      NavItem(
        id: 'profile',
        label: l10n.navProfile,
        icon: Icons.person_outline,
      ),
    ];
    return Scaffold(
      backgroundColor: context.appColors.scaffoldAlt,
      appBar: AppBar(
        title: Text(items[_index].label, style: context.appTextStyles.h2),
      ),
      body: _ComingSoon(label: items[_index].label),
      bottomNavigationBar: AppBottomNav(
        items: items,
        selectedIndex: _index,
        onSelected: (i) => setState(() => _index = i),
      ),
    );
  }
}

class _ComingSoon extends StatelessWidget {
  const _ComingSoon({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.dashboard_customize_outlined,
            size: 40,
            color: context.appColors.primary,
          ),
          const Gap(12),
          Text(label, style: context.appTextStyles.h3),
          const Gap(4),
          Text(context.l10n.comingSoon, style: context.appTextStyles.bodySmall),
        ],
      ),
    );
  }
}
