import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../repositories/remote_repository/manager/models/team_device_res_dm.dart';
import '../../../utilities/extensions/context_extensions.dart';
import '../../../utilities/network/network_state.dart';
import '../../../widgets/widgets.dart';
import 'cubit/team_devices_cubit.dart';
import 'manager_status_x.dart';

/// Manager's read-only Team Devices list (mockup M04) — every device
/// currently assigned to each direct report.
class TeamDevicesScreen extends StatelessWidget {
  const TeamDevicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: context.appColors.scaffoldAlt,
        appBar: AppBar(
          backgroundColor: context.appColors.surface,
          elevation: 0,
          scrolledUnderElevation: 0,
          automaticallyImplyLeading: false,
          titleSpacing: 20,
          title: BlocBuilder<TeamDevicesCubit, TeamDevicesState>(
            builder: (context, state) {
              final count = switch (state.members) {
                Success(:final data) => data.length,
                _ => 0,
              };
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    context.l10n.teamDevicesTitle,
                    style: context.appTextStyles.h2,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    context.l10n.teamDevicesSubtitle(count),
                    style: context.appTextStyles.bodyXSmall.copyWith(
                      color: context.appColors.textTertiary,
                    ),
                  ),
                ],
              );
            },
          ),
          toolbarHeight: 66,
        ),
        body: BlocBuilder<TeamDevicesCubit, TeamDevicesState>(
          builder: (context, state) {
            return RefreshIndicator(
              onRefresh: () =>
                  context.read<TeamDevicesCubit>().fetchTeamDevices(),
              child: CustomScrollView(
                slivers: [
                  switch (state.members) {
                    Idle() || Loading() => SliverSkeletonList(
                      itemBuilder: (_) => const ListItemCardSkeleton(),
                    ),
                    Error(:final message) => SliverFillRemaining(
                      hasScrollBody: false,
                      child: ErrorStateView(
                        title: context.l10n.somethingWentWrong,
                        message: message,
                        onRetry: () =>
                            context.read<TeamDevicesCubit>().fetchTeamDevices(),
                      ),
                    ),
                    Success(:final data) => _TeamListSliver(members: data),
                  },
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class _TeamListSliver extends StatelessWidget {
  const _TeamListSliver({required this.members});

  final List<TeamMemberResDm> members;

  @override
  Widget build(BuildContext context) {
    if (members.isEmpty) {
      return SliverFillRemaining(
        hasScrollBody: false,
        child: EmptyStateView(
          icon: Icons.groups_outlined,
          title: context.l10n.teamDevicesEmptyTitle,
          message: context.l10n.teamDevicesEmptyMessage,
        ),
      );
    }
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 20),
      sliver: SliverList.separated(
        itemCount: members.length,
        separatorBuilder: (_, _) => const SizedBox(height: 16),
        itemBuilder: (context, index) => _MemberSection(member: members[index]),
      ),
    );
  }
}

class _MemberSection extends StatelessWidget {
  const _MemberSection({required this.member});

  final TeamMemberResDm member;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            AppAvatar(name: member.name, size: AppAvatarSize.xs),
            const SizedBox(width: 9),
            Text(
              member.name,
              style: context.appTextStyles.labelLarge.copyWith(
                color: context.appColors.textPrimary,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Column(
          children: [
            for (var i = 0; i < member.devices.length; i++) ...[
              if (i > 0) const SizedBox(height: 8),
              _DeviceRow(device: member.devices[i]),
            ],
          ],
        ),
      ],
    );
  }
}

class _DeviceRow extends StatelessWidget {
  const _DeviceRow({required this.device});

  final TeamDeviceResDm device;

  @override
  Widget build(BuildContext context) {
    return ListItemCard(
      leading: IconBox(
        icon: Icons.laptop_mac_outlined,
        semantic: device.status.teamDeviceSemantic,
      ),
      title: device.deviceName,
      subtitle: device.category,
      trailing: StatusPill(
        semantic: device.status.teamDeviceSemantic,
        label: device.status.teamDeviceLabel,
        dense: true,
      ),
    );
  }
}
