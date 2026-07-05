import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../repositories/remote_repository/dashboard/models/open_support_snapshot_res_dm.dart';
import '../../../repositories/remote_repository/dashboard/models/recent_request_res_dm.dart';
import '../../../utilities/extensions/context_extensions.dart';
import '../../../utilities/helpers/responsive.dart';
import '../../../utilities/network/network_state.dart';
import '../../../values/constants/app_constants.dart';
import '../../../values/enumeration/statuses.dart';
import '../../../widgets/widgets.dart';
import '../inventory/inventory_status_x.dart';
import '../requests/request_status_x.dart';
import '../shell/admin_shell.dart';
import '../support/support_status_x.dart';
import 'cubit/dashboard_cubit.dart';

/// IT Admin dashboard (mockup A01): KPIs, device status breakdown, pending
/// actions, recent requests, and open support — all live via [DashboardCubit].
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {
    super.initState();
    context.read<DashboardCubit>().loadDashboard();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<DashboardCubit>();
    return AdminShell(
      title: context.l10n.adminDashboard,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(AppConstants.screenPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Single NetworkStateView for the whole `kpis` slice: the KPI
            // row, status breakdown, and pending-actions panel all render
            // the same fetch, so they load/error/retry as one unit instead
            // of each showing its own spinner for one underlying request.
            BlocSelector<DashboardCubit, DashboardState, NetworkState<DashboardKpis>>(
              selector: (state) => state.kpis,
              builder: (context, kpis) {
                return NetworkStateView<DashboardKpis>(
                  state: kpis,
                  onRetry: cubit.loadKpis,
                  onData: (context, data) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _KpiRow(kpis: data),
                      const Gap(18),
                      // Recent Requests (left, wide) beside the status/
                      // pending-actions rail (right, narrow) on desktop —
                      // mirrors mockup A01's panel grid; stacks full-width
                      // on narrower layouts. `data` is already resolved
                      // here, so the rail never re-subscribes to `kpis`.
                      Responsive.isDesktop(context)
                          ? Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: _buildRecentRequests(context, cubit),
                                ),
                                const Gap(18),
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    children: [
                                      _StatusBreakdownCard(kpis: data),
                                      const Gap(18),
                                      _PendingActionsCard(kpis: data),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildRecentRequests(context, cubit),
                                const Gap(18),
                                _StatusBreakdownCard(kpis: data),
                                const Gap(18),
                                _PendingActionsCard(kpis: data),
                              ],
                            ),
                    ],
                  ),
                );
              },
            ),
            const Gap(18),
            Text(
              context.l10n.dashboardOpenSupportTitle,
              style: context.appTextStyles.h3,
            ),
            const Gap(12),
            BlocSelector<
              DashboardCubit,
              DashboardState,
              NetworkState<List<OpenSupportSnapshotResDm>>
            >(
              selector: (state) => state.openSupport,
              builder: (context, openSupport) {
                return NetworkStateView<List<OpenSupportSnapshotResDm>>(
                  state: openSupport,
                  onRetry: cubit.loadOpenSupport,
                  onData: (context, data) => _OpenSupportTable(rows: data),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRecentRequests(BuildContext context, DashboardCubit cubit) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.l10n.dashboardRecentRequestsTitle,
          style: context.appTextStyles.h3,
        ),
        const Gap(12),
        BlocSelector<
          DashboardCubit,
          DashboardState,
          NetworkState<List<RecentRequestResDm>>
        >(
          selector: (state) => state.recentRequests,
          builder: (context, recentRequests) {
            return NetworkStateView<List<RecentRequestResDm>>(
              state: recentRequests,
              onRetry: cubit.loadRecentRequests,
              onData: (context, data) => _RecentRequestsTable(rows: data),
            );
          },
        ),
      ],
    );
  }

}

class _KpiRow extends StatelessWidget {
  const _KpiRow({required this.kpis});

  final DashboardKpis kpis;

  @override
  Widget build(BuildContext context) {
    return StatTileRow(
      tiles: [
        StatTile(
          label: context.l10n.dashboardKpiTotalDevices,
          value: '${kpis.totalDevices}',
        ),
        StatTile(
          label: context.l10n.dashboardKpiAssigned,
          value: '${kpis.assigned}',
          semantic: AppSemantic.success,
        ),
        StatTile(
          label: context.l10n.dashboardKpiPendingRequests,
          value: '${kpis.pendingRequests}',
          semantic: AppSemantic.warning,
        ),
        StatTile(
          label: context.l10n.dashboardKpiOpenSupport,
          value: '${kpis.openSupport}',
          semantic: AppSemantic.danger,
        ),
      ],
    );
  }
}

/// One labeled progress bar per [DeviceStatus] present in
/// [DashboardKpis.statusBreakdown], proportional to the device total
/// (mockup A01's "Device Status Breakdown" panel).
class _StatusBreakdownCard extends StatelessWidget {
  const _StatusBreakdownCard({required this.kpis});

  final DashboardKpis kpis;

  @override
  Widget build(BuildContext context) {
    final total = kpis.totalDevices;
    final rows = <Widget>[];
    for (final status in DeviceStatus.values) {
      final count = kpis.statusBreakdown[status.toJson()];
      if (count == null) continue;
      if (rows.isNotEmpty) rows.add(const Gap(13));
      rows.add(
        AppProgressBar(
          label: status.label,
          value: total == 0 ? 0 : count / total,
          valueLabel: '$count',
          semantic: status.semantic,
        ),
      );
    }

    return AppCard(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            context.l10n.dashboardStatusBreakdownTitle,
            style: context.appTextStyles.h3,
          ),
          const Gap(16),
          ...rows,
        ],
      ),
    );
  }
}

/// Single-counter "Pending Actions" panel (mockup A01). Only "Approvals to
/// review" is backed by a real field on [DashboardSummaryResDm] today; the
/// mockup's other two counters (awaiting shipment / returns to confirm) are
/// intentionally omitted rather than sourced from extra network calls.
class _PendingActionsCard extends StatelessWidget {
  const _PendingActionsCard({required this.kpis});

  final DashboardKpis kpis;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            context.l10n.dashboardPendingActionsTitle,
            style: context.appTextStyles.h3,
          ),
          const Gap(14),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                context.l10n.dashboardPendingActionsApprovals,
                style: context.appTextStyles.bodyMedium,
              ),
              StatusPill(
                semantic: AppSemantic.warning,
                label: '${kpis.pendingRequests}',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _RecentRequestsTable extends StatelessWidget {
  const _RecentRequestsTable({required this.rows});

  final List<RecentRequestResDm> rows;

  @override
  Widget build(BuildContext context) {
    return AppDataTable<RecentRequestResDm>(
      columns: [
        TableColumn<RecentRequestResDm>(
          header: context.l10n.dashboardColumnId,
          cellBuilder: (context, row) => Text(row.id),
        ),
        TableColumn<RecentRequestResDm>(
          header: context.l10n.dashboardColumnRequester,
          flex: 2,
          cellBuilder: (context, row) => Text(row.requesterName),
        ),
        TableColumn<RecentRequestResDm>(
          header: context.l10n.columnCategory,
          cellBuilder: (context, row) => Text(row.categoryName),
        ),
        TableColumn<RecentRequestResDm>(
          header: context.l10n.columnStatus,
          cellBuilder: (context, row) => StatusPill(
            semantic: row.status.semantic,
            label: row.status.label,
            dense: true,
          ),
        ),
      ],
      rows: rows,
      emptyState: EmptyStateView(
        icon: Icons.assignment_outlined,
        title: context.l10n.dashboardRecentRequestsEmptyTitle,
        message: context.l10n.dashboardRecentRequestsEmptyMessage,
      ),
    );
  }
}

class _OpenSupportTable extends StatelessWidget {
  const _OpenSupportTable({required this.rows});

  final List<OpenSupportSnapshotResDm> rows;

  @override
  Widget build(BuildContext context) {
    return AppDataTable<OpenSupportSnapshotResDm>(
      columns: [
        TableColumn<OpenSupportSnapshotResDm>(
          header: context.l10n.dashboardColumnId,
          cellBuilder: (context, row) => Text(row.id),
        ),
        TableColumn<OpenSupportSnapshotResDm>(
          header: context.l10n.dashboardColumnItem,
          flex: 2,
          cellBuilder: (context, row) => Text(row.itemName),
        ),
        TableColumn<OpenSupportSnapshotResDm>(
          header: context.l10n.dashboardColumnType,
          cellBuilder: (context, row) => Text(row.type.label),
        ),
        TableColumn<OpenSupportSnapshotResDm>(
          header: context.l10n.columnStatus,
          cellBuilder: (context, row) => StatusPill(
            semantic: row.status.semantic,
            label: row.status.label,
            dense: true,
          ),
        ),
      ],
      rows: rows,
      emptyState: EmptyStateView(
        icon: Icons.support_agent_outlined,
        title: context.l10n.dashboardOpenSupportEmptyTitle,
        message: context.l10n.dashboardOpenSupportEmptyMessage,
      ),
    );
  }
}
