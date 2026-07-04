import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../utilities/extensions/context_extensions.dart';
import '../../../utilities/navigation/app_routes.dart';
import '../../../widgets/nav/app_bottom_nav.dart';
import '../../../widgets/nav/nav_item.dart';
import '../my_devices/cubit/my_devices_cubit.dart';
import '../my_devices/my_devices_screen.dart';
import '../requests/cubit/requests_cubit.dart';
import '../requests/requests_screen.dart';

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
      body: switch (_index) {
        0 => BlocProvider(
          create: (_) => MyDevicesCubit(),
          child: const MyDevicesScreen(),
        ),
        1 => BlocProvider(
          create: (_) => RequestsCubit(),
          child: const RequestsScreen(),
        ),
        _ => _ComingSoon(label: items[_index].label),
      },
      floatingActionButton: FloatingActionButton(
        tooltip: l10n.createRequestFabTooltip,
        onPressed: () => context.push(Routes.createRequest.path),
        backgroundColor: context.appColors.primary,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
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
