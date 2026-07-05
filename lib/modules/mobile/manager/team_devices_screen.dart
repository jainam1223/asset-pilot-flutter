import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../repositories/remote_repository/common/models/request_res_dm.dart';
import '../../../repositories/remote_repository/manager/models/employee_device_res_dm.dart';
import '../../../utilities/extensions/context_extensions.dart';
import '../../../utilities/network/network_state.dart';
import '../../../widgets/widgets.dart';
import '../my_devices/device_status_x.dart';
import 'cubit/team_devices_cubit.dart';

/// Manager's read-only Team Devices list (mockup M04) — every device
/// currently assigned to each direct report.
class TeamDevicesScreen extends StatelessWidget {
  const TeamDevicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Column(
        children: [
          BlocBuilder<TeamDevicesCubit, TeamDevicesState>(
            builder: (context, state) {
              final count = switch (state.members) {
                Success(:final data) => data.length,
                _ => 0,
              };
              return GradientHeader(
                greeting: context.l10n.teamDevicesSubtitle(count),
                title: context.l10n.teamDevicesTitle,
              );
            },
          ),
          Expanded(
            child: BlocBuilder<TeamDevicesCubit, TeamDevicesState>(
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
                            onRetry: () => context
                                .read<TeamDevicesCubit>()
                                .fetchTeamDevices(),
                          ),
                        ),
                        Success(:final data) => _TeamListSliver(
                          members: data,
                        ),
                      },
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _TeamListSliver extends StatelessWidget {
  const _TeamListSliver({required this.members});

  final List<EmployeeDeviceResDm> members;

  @override
  Widget build(BuildContext context) {
    final withDevices = members
        .map(
          (m) => (
            member: m,
            assigned: m.requests.where((r) => r.assignedItem != null).toList(
              growable: false,
            ),
          ),
        )
        .where((m) => m.assigned.isNotEmpty)
        .toList(growable: false);
    if (withDevices.isEmpty) {
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
        itemCount: withDevices.length,
        separatorBuilder: (_, _) => const SizedBox(height: 16),
        itemBuilder: (context, index) => _MemberSection(
          name: withDevices[index].member.name,
          assignedRequests: withDevices[index].assigned,
        ),
      ),
    );
  }
}

class _MemberSection extends StatelessWidget {
  const _MemberSection({required this.name, required this.assignedRequests});

  final String name;
  final List<RequestResDm> assignedRequests;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            AppAvatar(name: name, size: AppAvatarSize.xs),
            const SizedBox(width: 9),
            Text(
              name,
              style: context.appTextStyles.labelLarge.copyWith(
                color: context.appColors.textPrimary,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Column(
          children: [
            for (var i = 0; i < assignedRequests.length; i++) ...[
              if (i > 0) const SizedBox(height: 8),
              _DeviceRow(request: assignedRequests[i]),
            ],
          ],
        ),
      ],
    );
  }
}

class _DeviceRow extends StatelessWidget {
  const _DeviceRow({required this.request});

  final RequestResDm request;

  @override
  Widget build(BuildContext context) {
    final item = request.assignedItem!;
    final categoryName = request.category?.name ?? '';
    final status = deviceStatusFromWire(item.status);
    return ListItemCard(
      leading: IconBox(
        icon: _categoryIcon(categoryName),
        semantic: status.semantic,
      ),
      title: item.name,
      subtitle: categoryName,
      trailing: StatusPill(
        semantic: status.semantic,
        label: status.label,
        dense: true,
      ),
    );
  }

  IconData _categoryIcon(String categoryName) {
    final normalized = categoryName.toLowerCase();
    if (normalized.contains('laptop')) return Icons.laptop_mac_outlined;
    if (normalized.contains('mobile') || normalized.contains('phone')) {
      return Icons.phone_iphone_outlined;
    }
    if (normalized.contains('monitor')) return Icons.desktop_windows_outlined;
    return Icons.devices_other_outlined;
  }
}
