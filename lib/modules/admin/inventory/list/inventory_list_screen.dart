import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../repositories/remote_repository/inventory/models/inventory_item_res_dm.dart';
import '../../../../utilities/extensions/context_extensions.dart';
import '../../../../utilities/navigation/app_routes.dart';
import '../../../../values/constants/app_constants.dart';
import '../../../../values/enumeration/statuses.dart';
import '../../../../widgets/widgets.dart';
import '../../shell/admin_shell.dart';
import '../inventory_status_x.dart';
import 'cubit/inventory_list_cubit.dart';

/// IT Admin Inventory Management screen (mockup A04): filterable, paginated
/// table of every device, backed by [InventoryListCubit].
class InventoryListScreen extends StatefulWidget {
  const InventoryListScreen({super.key});

  @override
  State<InventoryListScreen> createState() => _InventoryListScreenState();
}

class _InventoryListScreenState extends State<InventoryListScreen> {
  @override
  void initState() {
    super.initState();
    context.read<InventoryListCubit>().loadInventory();
  }

  @override
  Widget build(BuildContext context) {
    return AdminShell(
      title: context.l10n.adminInventory,
      selectedNavId: 'inventory',
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.screenPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const _ToolbarRow(),
            const Gap(16),
            const _FiltersRow(),
            const Gap(16),
            Expanded(
              child: BlocBuilder<InventoryListCubit, InventoryListState>(
                builder: (context, state) {
                  return NetworkStateView<List<InventoryItemResDm>>(
                    state: state.items,
                    isEmpty: (data) => data.isEmpty,
                    onData: (context, data) => _InventoryTable(
                      rows: data,
                      currentPage: state.currentPage,
                      totalItems: state.totalItems,
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

class _ToolbarRow extends StatelessWidget {
  const _ToolbarRow();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        AppButton(
          label: context.l10n.inventoryAddDevice,
          leadingIcon: Icons.add,
          size: AppButtonSize.medium,
          // TODO: wire to real Add Device form when backend + design are
          // ready.
          onPressed: () => AppToast.info(context, context.l10n.comingSoon),
        ),
      ],
    );
  }
}

class _FiltersRow extends StatelessWidget {
  const _FiltersRow();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InventoryListCubit, InventoryListState>(
      builder: (context, state) {
        final cubit = context.read<InventoryListCubit>();
        return Wrap(
          spacing: 10,
          runSpacing: 10,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            FilterDropdownChip(
              label: context.l10n.inventoryFilterStatus,
              valueLabel: state.statusFilter == 'all'
                  ? context.l10n.inventoryFilterAll
                  : DeviceStatus.values
                      .firstWhere((s) => s.name == state.statusFilter)
                      .label,
              onTap: () => _showStatusMenu(context, cubit),
            ),
            // TODO(category-filter): category filtering by id needs the
            // categories dropdown endpoint wired to a picker; stubbed as
            // display-only until that UI exists.
            FilterDropdownChip(
              label: context.l10n.inventoryFilterCategory,
              valueLabel: context.l10n.inventoryFilterAll,
              onTap: () => AppToast.info(context, context.l10n.comingSoon),
            ),
            SizedBox(
              width: 280,
              child: AppSearchField(
                hintText: context.l10n.inventorySearchHint,
                onChanged: cubit.setSearchQuery,
              ),
            ),
          ],
        );
      },
    );
  }

  void _showStatusMenu(BuildContext context, InventoryListCubit cubit) {
    showMenu<String>(
      context: context,
      position: const RelativeRect.fromLTRB(200, 200, 0, 0),
      items: [
        PopupMenuItem(value: 'all', child: Text(context.l10n.inventoryFilterAll)),
        for (final status in DeviceStatus.values)
          PopupMenuItem(value: status.name, child: Text(status.label)),
      ],
    ).then((value) {
      if (value != null && context.mounted) cubit.setStatusFilter(value);
    });
  }
}

class _InventoryTable extends StatelessWidget {
  const _InventoryTable({
    required this.rows,
    required this.currentPage,
    required this.totalItems,
  });

  final List<InventoryItemResDm> rows;
  final int currentPage;
  final int totalItems;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<InventoryListCubit>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: AppDataTable<InventoryItemResDm>(
            columns: [
              TableColumn<InventoryItemResDm>(
                header: context.l10n.columnName,
                flex: 2,
                cellBuilder: (context, row) => Text(row.name),
              ),
              TableColumn<InventoryItemResDm>(
                header: context.l10n.inventoryFieldSerial,
                cellBuilder: (context, row) => Text(row.serialNo),
              ),
              TableColumn<InventoryItemResDm>(
                header: context.l10n.columnCategory,
                cellBuilder: (context, row) => Text(row.categoryName),
              ),
              TableColumn<InventoryItemResDm>(
                header: context.l10n.inventoryFieldOwnerType,
                cellBuilder: (context, row) => Text(
                  row.ownerType == OwnerType.client
                      ? context.l10n.inventoryOwnerTypeClient(row.clientName ?? '')
                      : row.ownerType.label,
                ),
              ),
              TableColumn<InventoryItemResDm>(
                header: context.l10n.columnStatus,
                cellBuilder: (context, row) => StatusPill(
                  semantic: row.status.semantic,
                  label: row.status.label,
                  dense: true,
                ),
              ),
              TableColumn<InventoryItemResDm>(
                header: context.l10n.inventoryFieldCurrentOwner,
                cellBuilder: (context, row) => Text(
                  (row.currentOwnerName ?? '').isEmpty
                      ? context.l10n.inventoryUnassignedOwner
                      : row.currentOwnerName!,
                ),
              ),
              TableColumn<InventoryItemResDm>(
                header: context.l10n.columnActions,
                flex: 2,
                cellBuilder: (context, row) => Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    PillActionButton(
                      label: context.l10n.inventoryActionView,
                      onPressed: () => context.go(
                        Routes.adminInventoryDetail.path.replaceFirst(
                          ':id',
                          Uri.encodeComponent(row.id),
                        ),
                      ),
                    ),
                    const Gap(6),
                    PillActionButton(
                      label: context.l10n.inventoryActionEdit,
                      variant: AppButtonVariant.secondary,
                      // TODO: wire to real Edit Device form when backend +
                      // design are ready.
                      onPressed: () => AppToast.info(context, context.l10n.comingSoon),
                    ),
                  ],
                ),
              ),
            ],
            rows: rows,
            pagination: TablePagination(
              currentPage: currentPage,
              totalItems: totalItems,
              pageSize: kInventoryListPageSize,
              onPageChanged: cubit.setPage,
            ),
          ),
        ),
      ],
    );
  }
}
