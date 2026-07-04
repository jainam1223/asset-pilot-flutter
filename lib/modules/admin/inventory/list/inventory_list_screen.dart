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
                      allFiltered: context.read<InventoryListCubit>().filteredItems,
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

class _FiltersRow extends StatefulWidget {
  const _FiltersRow();

  @override
  State<_FiltersRow> createState() => _FiltersRowState();
}

class _FiltersRowState extends State<_FiltersRow> {
  final _statusChipKey = GlobalKey();
  final _categoryChipKey = GlobalKey();

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
              key: _statusChipKey,
              label: context.l10n.inventoryFilterStatus,
              valueLabel: state.statusFilter == 'all'
                  ? context.l10n.inventoryFilterAll
                  : DeviceStatus.values
                      .firstWhere((s) => s.name == state.statusFilter)
                      .label,
              onTap: () => _showStatusMenu(context, cubit),
            ),
            FilterDropdownChip(
              key: _categoryChipKey,
              label: context.l10n.inventoryFilterCategory,
              valueLabel: state.categoryFilter == 'all'
                  ? context.l10n.inventoryFilterAll
                  : state.categoryFilter,
              onTap: () => _showCategoryMenu(context, cubit),
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

  void _showStatusMenu(BuildContext context, InventoryListCubit cubit) {
    showMenu<String>(
      context: context,
      position: _menuPosition(_statusChipKey),
      items: [
        PopupMenuItem(value: 'all', child: Text(context.l10n.inventoryFilterAll)),
        for (final status in DeviceStatus.values)
          PopupMenuItem(value: status.name, child: Text(status.label)),
      ],
    ).then((value) {
      if (value != null && context.mounted) cubit.setStatusFilter(value);
    });
  }

  void _showCategoryMenu(BuildContext context, InventoryListCubit cubit) {
    const categories = ['all', 'Laptop', 'Monitor', 'Mobile', 'Accessory'];
    showMenu<String>(
      context: context,
      position: _menuPosition(_categoryChipKey),
      items: [
        for (final category in categories)
          PopupMenuItem(
            value: category,
            child: Text(category == 'all' ? context.l10n.inventoryFilterAll : category),
          ),
      ],
    ).then((value) {
      if (value != null && context.mounted) cubit.setCategoryFilter(value);
    });
  }
}

class _InventoryTable extends StatelessWidget {
  const _InventoryTable({required this.allFiltered, required this.currentPage});

  final List<InventoryItemResDm> allFiltered;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<InventoryListCubit>();
    final start = (currentPage - 1) * kInventoryListPageSize;
    final end = (start + kInventoryListPageSize).clamp(0, allFiltered.length);
    final pageRows = start < allFiltered.length ? allFiltered.sublist(start, end) : <InventoryItemResDm>[];

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
                cellBuilder: (context, row) => Text(row.serial),
              ),
              TableColumn<InventoryItemResDm>(
                header: context.l10n.columnCategory,
                cellBuilder: (context, row) => Text(row.category),
              ),
              TableColumn<InventoryItemResDm>(
                header: context.l10n.inventoryFieldOwnerType,
                cellBuilder: (context, row) => Text(
                  row.ownerType == OwnerType.client
                      ? context.l10n.inventoryOwnerTypeClient(row.clientName)
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
                  row.currentOwnerName.isEmpty
                      ? context.l10n.inventoryUnassignedOwner
                      : row.currentOwnerName,
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
            rows: pageRows,
            pagination: TablePagination(
              currentPage: currentPage,
              totalItems: allFiltered.length,
              pageSize: kInventoryListPageSize,
              onPageChanged: cubit.setPage,
            ),
          ),
        ),
      ],
    );
  }
}
