import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../repositories/remote_repository/requests/models/request_summary_res_dm.dart';
import '../../../../utilities/extensions/context_extensions.dart';
import '../../../../utilities/navigation/app_routes.dart';
import '../../../../values/constants/app_constants.dart';
import '../../../../values/enumeration/statuses.dart';
import '../../../../widgets/widgets.dart';
import '../../shell/admin_shell.dart';
import '../request_status_x.dart';
import 'cubit/request_list_cubit.dart';

/// IT Admin Request Management screen (mockup A02): filterable, paginated
/// table of all device requests, backed by [RequestListCubit].
class RequestListScreen extends StatefulWidget {
  const RequestListScreen({super.key});

  @override
  State<RequestListScreen> createState() => _RequestListScreenState();
}

class _RequestListScreenState extends State<RequestListScreen> {
  @override
  void initState() {
    super.initState();
    context.read<RequestListCubit>().loadRequests();
  }

  @override
  Widget build(BuildContext context) {
    return AdminShell(
      title: context.l10n.adminRequests,
      selectedNavId: 'requests',
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.screenPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const _StatusPillsRow(),
            const Gap(12),
            const _FiltersRow(),
            const Gap(16),
            Expanded(
              child: BlocBuilder<RequestListCubit, RequestListState>(
                builder: (context, state) {
                  return NetworkStateView<List<RequestSummaryResDm>>(
                    state: state.requests,
                    isEmpty: (data) => data.isEmpty,
                    onData: (context, data) => _RequestsTable(
                      allFiltered: context.read<RequestListCubit>().filteredRequests,
                      currentPage: state.currentPage,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _StatusPillsRow extends StatelessWidget {
  const _StatusPillsRow();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RequestListCubit, RequestListState>(
      builder: (context, state) {
        return FilterPillTabs(
          tabs: [
            PillTab(id: 'all', label: context.l10n.requestFilterAll),
            PillTab(id: 'pendingMgrApproval', label: context.l10n.requestFilterPendingMgr),
            PillTab(id: 'pendingItApproval', label: context.l10n.requestFilterPendingIt),
            PillTab(id: 'assigned', label: context.l10n.requestFilterAssigned),
            PillTab(id: 'rejected', label: context.l10n.requestFilterRejected),
            PillTab(id: 'completed', label: context.l10n.requestFilterCompleted),
          ],
          selectedId: state.statusFilter,
          onChanged: context.read<RequestListCubit>().setStatusFilter,
        );
      },
    );
  }
}

class _FiltersRow extends StatefulWidget {
  const _FiltersRow();

  @override
  State<_FiltersRow> createState() => _FiltersRowState();
}

class _FiltersRowState extends State<_FiltersRow> {
  final _priorityChipKey = GlobalKey();
  final _categoryChipKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RequestListCubit, RequestListState>(
      builder: (context, state) {
        final cubit = context.read<RequestListCubit>();
        return Wrap(
          spacing: 10,
          runSpacing: 10,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            FilterDropdownChip(
              key: _priorityChipKey,
              label: context.l10n.requestFilterPriority,
              valueLabel: state.priorityFilter?.label ?? context.l10n.requestFilterAll,
              onTap: () => _showPriorityMenu(context, cubit),
            ),
            FilterDropdownChip(
              key: _categoryChipKey,
              label: context.l10n.requestFilterCategory,
              valueLabel: state.categoryFilter == 'all'
                  ? context.l10n.requestFilterAll
                  : state.categoryFilter,
              onTap: () => _showCategoryMenu(context, cubit),
            ),
            // TODO(date-range): no date-range picker widget exists yet in the
            // shared library — this trigger is a display-only stub for now.
            FilterDropdownChip(
              label: context.l10n.requestFilterDateRange,
              valueLabel: context.l10n.requestFilterAll,
              onTap: () => AppToast.info(context, context.l10n.comingSoon),
            ),
            SizedBox(
              width: 260,
              child: AppSearchField(
                hintText: context.l10n.requestSearchHint,
                onChanged: cubit.setSearchQuery,
              ),
            ),
          ],
        );
      },
    );
  }

  RelativeRect _menuPosition(GlobalKey chipKey) {
    final chipBox = chipKey.currentContext!.findRenderObject()! as RenderBox;
    final overlayBox =
        Navigator.of(context).overlay!.context.findRenderObject()! as RenderBox;
    final topLeft = chipBox.localToGlobal(
      Offset(0, chipBox.size.height),
      ancestor: overlayBox,
    );
    final bottomRight = chipBox.localToGlobal(
      chipBox.size.bottomRight(Offset.zero),
      ancestor: overlayBox,
    );
    return RelativeRect.fromRect(
      Rect.fromPoints(topLeft, bottomRight),
      Offset.zero & overlayBox.size,
    );
  }

  void _showPriorityMenu(BuildContext context, RequestListCubit cubit) {
    showMenu<RequestPriority?>(
      context: context,
      position: _menuPosition(_priorityChipKey),
      items: [
        PopupMenuItem(value: null, child: Text(context.l10n.requestFilterAll)),
        for (final priority in RequestPriority.values)
          PopupMenuItem(value: priority, child: Text(priority.label)),
      ],
    ).then((value) {
      if (context.mounted) cubit.setPriorityFilter(value);
    });
  }

  void _showCategoryMenu(BuildContext context, RequestListCubit cubit) {
    const categories = ['all', 'Laptop', 'Monitor', 'Mobile', 'Accessory'];
    showMenu<String>(
      context: context,
      position: _menuPosition(_categoryChipKey),
      items: [
        for (final category in categories)
          PopupMenuItem(
            value: category,
            child: Text(category == 'all' ? context.l10n.requestFilterAll : category),
          ),
      ],
    ).then((value) {
      if (value != null && context.mounted) cubit.setCategoryFilter(value);
    });
  }
}

class _RequestsTable extends StatelessWidget {
  const _RequestsTable({required this.allFiltered, required this.currentPage});

  final List<RequestSummaryResDm> allFiltered;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RequestListCubit>();
    final start = (currentPage - 1) * kRequestListPageSize;
    final end = (start + kRequestListPageSize).clamp(0, allFiltered.length);
    final pageRows = start < allFiltered.length ? allFiltered.sublist(start, end) : <RequestSummaryResDm>[];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: AppDataTable<RequestSummaryResDm>(
            columns: [
              TableColumn<RequestSummaryResDm>(
                header: context.l10n.requestColumnId,
                cellBuilder: (context, row) => Text(row.id),
              ),
              TableColumn<RequestSummaryResDm>(
                header: context.l10n.requestColumnEmployee,
                flex: 2,
                cellBuilder: (context, row) => Text(row.employeeName),
              ),
              TableColumn<RequestSummaryResDm>(
                header: context.l10n.columnCategory,
                cellBuilder: (context, row) => Text(row.category),
              ),
              TableColumn<RequestSummaryResDm>(
                header: context.l10n.requestColumnPriority,
                cellBuilder: (context, row) => PriorityTag(
                  semantic: row.priority.semantic,
                  label: row.priority.label,
                ),
              ),
              TableColumn<RequestSummaryResDm>(
                header: context.l10n.columnStatus,
                cellBuilder: (context, row) => StatusPill(
                  semantic: row.status.semantic,
                  label: row.status.label,
                  dense: true,
                ),
              ),
              TableColumn<RequestSummaryResDm>(
                header: context.l10n.requestColumnDates,
                flex: 2,
                cellBuilder: (context, row) => Text('${row.requestedFrom} – ${row.requestedTo}'),
              ),
              TableColumn<RequestSummaryResDm>(
                header: context.l10n.requestColumnMgr,
                cellBuilder: (context, row) => Text(
                  row.managerApproved ? context.l10n.requestApproved : context.l10n.requestPending,
                ),
              ),
              TableColumn<RequestSummaryResDm>(
                header: context.l10n.columnActions,
                cellBuilder: (context, row) => PillActionButton(
                  label: row.status == RequestStatus.pendingItApproval
                      ? context.l10n.requestActionAssign
                      : context.l10n.requestActionView,
                  onPressed: () => context.go(
                    Routes.adminRequestDetail.path.replaceFirst(
                      ':id',
                      Uri.encodeComponent(row.id),
                    ),
                  ),
                ),
              ),
            ],
            rows: pageRows,
            pagination: TablePagination(
              currentPage: currentPage,
              totalItems: allFiltered.length,
              pageSize: kRequestListPageSize,
              onPageChanged: cubit.setPage,
            ),
          ),
        ),
      ],
    );
  }
}
