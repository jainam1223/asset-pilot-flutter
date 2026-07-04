import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

import '../../../../repositories/remote_repository/extension_requests/models/extension_request_summary_res_dm.dart';
import '../../../../utilities/extensions/context_extensions.dart';
import '../../../../values/constants/app_constants.dart';
import '../../../../values/enumeration/statuses.dart';
import '../../../../widgets/widgets.dart';
import '../../shell/admin_shell.dart';
import '../extension_status_x.dart';
import 'cubit/extension_request_list_cubit.dart';

/// IT Admin Extension Requests screen (mockup A11): filterable, paginated
/// table of assignment-extension requests, backed by
/// [ExtensionRequestListCubit].
class ExtensionRequestListScreen extends StatefulWidget {
  const ExtensionRequestListScreen({super.key});

  @override
  State<ExtensionRequestListScreen> createState() =>
      _ExtensionRequestListScreenState();
}

class _ExtensionRequestListScreenState
    extends State<ExtensionRequestListScreen> {
  @override
  void initState() {
    super.initState();
    context.read<ExtensionRequestListCubit>().loadExtensionRequests();
  }

  @override
  Widget build(BuildContext context) {
    return AdminShell(
      title: context.l10n.adminExtensionRequests,
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.screenPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const _StatusPillsRow(),
            const Gap(16),
            Expanded(
              child:
                  BlocBuilder<
                    ExtensionRequestListCubit,
                    ExtensionRequestListState
                  >(
                    builder: (context, state) {
                      return NetworkStateView<
                        List<ExtensionRequestSummaryResDm>
                      >(
                        state: state.extensions,
                        isEmpty: (data) => data.isEmpty,
                        onData: (context, data) => _ExtensionsTable(
                          allFiltered: context
                              .read<ExtensionRequestListCubit>()
                              .filteredExtensionRequests,
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
    return BlocBuilder<ExtensionRequestListCubit, ExtensionRequestListState>(
      builder: (context, state) {
        return FilterPillTabs(
          tabs: [
            PillTab(id: 'pending', label: context.l10n.extensionFilterPending),
            PillTab(
              id: 'approved',
              label: context.l10n.extensionFilterApproved,
            ),
            PillTab(
              id: 'rejected',
              label: context.l10n.extensionFilterRejected,
            ),
          ],
          selectedId: state.statusFilter,
          onChanged: context.read<ExtensionRequestListCubit>().setStatusFilter,
        );
      },
    );
  }
}

class _ExtensionsTable extends StatelessWidget {
  const _ExtensionsTable({
    required this.allFiltered,
    required this.currentPage,
  });

  final List<ExtensionRequestSummaryResDm> allFiltered;
  final int currentPage;

  static final _dateFormat = DateFormat('dd MMM yyyy');

  static String _formatDate(DateTime? date) =>
      date == null ? '—' : _dateFormat.format(date.toLocal());

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ExtensionRequestListCubit>();
    final start = (currentPage - 1) * kExtensionRequestListPageSize;
    final end = (start + kExtensionRequestListPageSize).clamp(
      0,
      allFiltered.length,
    );
    final pageRows = start < allFiltered.length
        ? allFiltered.sublist(start, end)
        : <ExtensionRequestSummaryResDm>[];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: AppDataTable<ExtensionRequestSummaryResDm>(
            columns: [
              TableColumn<ExtensionRequestSummaryResDm>(
                header: context.l10n.extensionColumnId,
                cellBuilder: (context, row) => Text(row.id),
              ),
              TableColumn<ExtensionRequestSummaryResDm>(
                header: context.l10n.extensionColumnEmployee,
                cellBuilder: (context, row) => Text(row.employeeName),
              ),
              TableColumn<ExtensionRequestSummaryResDm>(
                header: context.l10n.extensionColumnDevice,
                flex: 2,
                cellBuilder: (context, row) => Text(row.deviceName),
              ),
              TableColumn<ExtensionRequestSummaryResDm>(
                header: context.l10n.extensionColumnCurrentTo,
                cellBuilder: (context, row) => Text(_formatDate(row.currentToDate)),
              ),
              TableColumn<ExtensionRequestSummaryResDm>(
                header: context.l10n.extensionColumnExtendTo,
                cellBuilder: (context, row) => Text(_formatDate(row.extendToDate)),
              ),
              TableColumn<ExtensionRequestSummaryResDm>(
                header: context.l10n.extensionColumnMgr,
                cellBuilder: (context, row) => Text(
                  row.mgrApprovalStatus == MgrApprovalStatus.approved
                      ? context.l10n.requestApproved
                      : context.l10n.requestPending,
                ),
              ),
              TableColumn<ExtensionRequestSummaryResDm>(
                header: context.l10n.columnActions,
                flex: 2,
                cellBuilder: (context, row) {
                  final isPending = row.status == ExtensionStatus.pending;
                  if (!isPending) {
                    return StatusPill(
                      semantic: row.status.semantic,
                      label: row.status.label,
                      dense: true,
                    );
                  }
                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      PillActionButton(
                        label: context.l10n.extensionActionApprove,
                        variant: AppButtonVariant.success,
                        onPressed: () async {
                          await cubit.approve(row.id);
                          if (context.mounted) {
                            AppToast.success(
                              context,
                              context.l10n.extensionApprovedToast,
                            );
                          }
                        },
                      ),
                      const Gap(6),
                      PillActionButton(
                        label: context.l10n.extensionActionReject,
                        variant: AppButtonVariant.destructive,
                        onPressed: () async {
                          await cubit.reject(row.id);
                          if (context.mounted) {
                            AppToast.success(
                              context,
                              context.l10n.extensionRejectedToast,
                            );
                          }
                        },
                      ),
                    ],
                  );
                },
              ),
            ],
            rows: pageRows,
            pagination: TablePagination(
              currentPage: currentPage,
              totalItems: allFiltered.length,
              pageSize: kExtensionRequestListPageSize,
              onPageChanged: cubit.setPage,
            ),
          ),
        ),
      ],
    );
  }
}
