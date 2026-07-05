import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../repositories/remote_repository/common/models/user_res_dm.dart';
import '../../../utilities/extensions/context_extensions.dart';
import '../../../utilities/navigation/app_routes.dart';
import '../../../widgets/nav/app_bottom_nav.dart';
import '../../../widgets/nav/nav_item.dart';
import '../chatbot/floating_chatbot.dart';
import '../handover/cubit/handover_list_cubit.dart';
import '../handover/handover_detail_screen.dart';
import '../manager/manager_home_screen.dart';
import '../my_devices/cubit/my_devices_cubit.dart';
import '../my_devices/my_devices_screen.dart';
import '../profile/profile_screen.dart';
import '../requests/cubit/requests_cubit.dart';
import '../requests/requests_screen.dart';

const int _devicesTabIndex = 0;
const int _requestsTabIndex = 1;
const int _handoverTabIndex = 2;
const int _profileTabIndex = 3;
const int _approvalsTabIndex = 4;

/// Employee/Manager home shell with bottom navigation (mockup E02 chrome).
///
/// Tab bodies are placeholders; individual feature screens are built later.
/// [user] is the just-logged-in account (carried via the login route's
/// `extra`); when its role is `manager`, a fifth "Approvals" tab is shown,
/// hosting [ManagerHomeScreen] (mockups M01/M03/M04).
class MobileShellScreen extends StatefulWidget {
  const MobileShellScreen({this.user, super.key});

  final UserResDm? user;

  @override
  State<MobileShellScreen> createState() => _MobileShellScreenState();
}

class _MobileShellScreenState extends State<MobileShellScreen> {
  int _index = 0;

  bool get _isManager => widget.user?.role == 'manager';

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
      if (_isManager)
        NavItem(
          id: 'approvals',
          label: l10n.navApprovals,
          icon: Icons.fact_check_outlined,
        ),
    ];
    return Scaffold(
      backgroundColor: context.appColors.scaffoldAlt,
      body: Stack(
        children: [
          switch (_index) {
            _devicesTabIndex => BlocProvider(
              create: (_) => MyDevicesCubit(),
              child: const MyDevicesScreen(),
            ),
            _requestsTabIndex => BlocProvider(
              create: (_) => RequestsCubit(),
              child: const RequestsScreen(),
            ),
            _handoverTabIndex => BlocProvider(
              create: (_) => HandoverListCubit(),
              child: const HandoverDetailsScreen(),
            ),
            _profileTabIndex => ProfileScreen(user: widget.user),
            _approvalsTabIndex => const ManagerHomeScreen(),
            _ => _ComingSoon(label: items[_index].label),
          },
          FloatingChatbot(
            showAboveFab: _index == _devicesTabIndex ||
                _index == _requestsTabIndex ||
                _index == _handoverTabIndex,
          ),
        ],
      ),
      floatingActionButton: _buildFab(context),
      bottomNavigationBar: AppBottomNav(
        items: items,
        selectedIndex: _index,
        onSelected: (i) => setState(() => _index = i),
      ),
    );
  }

  Widget? _buildFab(BuildContext context) {
    final l10n = context.l10n;
    return switch (_index) {
      _devicesTabIndex ||
      _requestsTabIndex => FloatingActionButton(
        tooltip: l10n.createRequestFabTooltip,
        onPressed: () => context.push(Routes.createRequest.path),
        backgroundColor: context.appColors.primary,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
      _handoverTabIndex => FloatingActionButton(
        tooltip: l10n.deviceDetailHandover,
        onPressed: () => context.push(Routes.handoverScan.path),
        backgroundColor: context.appColors.primary,
        foregroundColor: Colors.white,
        child: const Icon(Icons.swap_horiz),
      ),
      _ => null,
    };
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
