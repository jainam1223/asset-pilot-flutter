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
          tabs: const [
            PillTab(id: 'all', label: 'All'),
            PillTab(id: 'pendingManager', label: 'Pending RM'),
            PillTab(id: 'pendingIt', label: 'Pending IT'),
            PillTab(id: 'assigned', label: 'Assigned'),
            PillTab(id: 'rejected', label: 'Rejected'),
            PillTab(id: 'completed', label: 'Completed'),
          ],
          selectedId: state.statusFilter,
          onChanged: context.read<RequestListCubit>().setStatusFilter,
        );
      },
    );
  }
}

class _FiltersRow extends StatelessWidget {
  const _FiltersRow();

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
              label: 'Priority',
              valueLabel: state.priorityFilter?.label ?? 'All',
              onTap: () => _showPriorityMenu(context, cubit),
            ),
            FilterDropdownChip(
              label: 'Category',
              valueLabel: state.categoryFilter == 'all' ? 'All' : state.categoryFilter,
              onTap: () => _showCategoryMenu(context, cubit),
            ),
            // TODO(date-range): no date-range picker widget exists yet in the
            // shared library — this trigger is a display-only stub for now.
            FilterDropdownChip(
              label: 'Date range',
              valueLabel: 'All',
              onTap: () => AppToast.info(context, context.l10n.comingSoon),
            ),
            SizedBox(
              width: 260,
              child: AppSearchField(
                hintText: 'Search requests…',
                onChanged: cubit.setSearchQuery,
              ),
            ),
          ],
        );
      },
    );
  }

  void _showPriorityMenu(BuildContext context, RequestListCubit cubit) {
    showMenu<RequestPriority?>(
      context: context,
      position: const RelativeRect.fromLTRB(200, 200, 0, 0),
      items: [
        const PopupMenuItem(value: null, child: Text('All')),
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
      position: const RelativeRect.fromLTRB(360, 200, 0, 0),
      items: [
        for (final category in categories)
          PopupMenuItem(value: category, child: Text(category == 'all' ? 'All' : category)),
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
                header: 'ID',
                cellBuilder: (context, row) => Text(row.id),
              ),
              TableColumn<RequestSummaryResDm>(
                header: 'Employee',
                flex: 2,
                cellBuilder: (context, row) => Text(row.employeeName),
              ),
              TableColumn<RequestSummaryResDm>(
                header: 'Category',
                cellBuilder: (context, row) => Text(row.category),
              ),
              TableColumn<RequestSummaryResDm>(
                header: 'Priority',
                cellBuilder: (context, row) => PriorityTag(
                  semantic: row.priority.semantic,
                  label: row.priority.label,
                ),
              ),
              TableColumn<RequestSummaryResDm>(
                header: 'Status',
                cellBuilder: (context, row) => StatusPill(
                  semantic: row.status.semantic,
                  label: row.status.label,
                  dense: true,
                ),
              ),
              TableColumn<RequestSummaryResDm>(
                header: 'Dates',
                flex: 2,
                cellBuilder: (context, row) => Text('${row.requestedFrom} – ${row.requestedTo}'),
              ),
              TableColumn<RequestSummaryResDm>(
                header: 'Mgr',
                cellBuilder: (context, row) => Text(row.managerApproved ? 'Approved' : 'Pending'),
              ),
              TableColumn<RequestSummaryResDm>(
                header: 'Actions',
                cellBuilder: (context, row) => PillActionButton(
                  label: row.status == RequestStatus.pendingIt ? 'Assign' : 'View',
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
