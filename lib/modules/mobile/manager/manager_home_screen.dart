import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utilities/extensions/context_extensions.dart';
import '../../../widgets/widgets.dart';
import 'cubit/pending_approvals_cubit.dart';
import 'cubit/team_devices_cubit.dart';
import 'pending_approvals_screen.dart';
import 'team_devices_screen.dart';

const int _approvalsTabIndex = 0;
const int _teamDevicesTabIndex = 1;

/// Manager's "Approvals" tab body — a 2-way tab switcher (Approvals · Team
/// Devices), embedded inside the employee/manager [MobileShellScreen]
/// rather than as its own [Scaffold]/bottom-nav.
class ManagerHomeScreen extends StatefulWidget {
  const ManagerHomeScreen({super.key});

  @override
  State<ManagerHomeScreen> createState() => _ManagerHomeScreenState();
}

class _ManagerHomeScreenState extends State<ManagerHomeScreen> {
  int _index = _approvalsTabIndex;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      children: [
        Expanded(
          child: switch (_index) {
            _approvalsTabIndex => BlocProvider(
              create: (_) => PendingApprovalsCubit(),
              child: const PendingApprovalsScreen(),
            ),
            _ => BlocProvider(
              create: (_) => TeamDevicesCubit(),
              child: const TeamDevicesScreen(),
            ),
          },
        ),
        DecoratedBox(
          decoration: BoxDecoration(
            color: context.appColors.surface,
            border: Border(
              top: BorderSide(color: context.appColors.divider),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
            child: SegmentedControl<int>(
              value: _index,
              onChanged: (i) => setState(() => _index = i),
              options: [
                SegmentOption(
                  value: _approvalsTabIndex,
                  label: l10n.navApprovals,
                ),
                SegmentOption(
                  value: _teamDevicesTabIndex,
                  label: l10n.navTeamDevices,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
