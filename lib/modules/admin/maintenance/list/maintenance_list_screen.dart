import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../../repositories/remote_repository/maintenance/models/maintenance_item_res_dm.dart';
import '../../../../utilities/extensions/context_extensions.dart';
import '../../../../utilities/network/network_state.dart';
import '../../../../values/constants/app_constants.dart';
import '../../../../values/enumeration/statuses.dart';
import '../../../../widgets/widgets.dart';
import '../../inventory/inventory_status_x.dart';
import '../../shell/admin_shell.dart';
import 'cubit/maintenance_list_cubit.dart';

/// IT Admin Maintenance screen (mockup A10): a working queue of devices
/// under repair/maintenance, with a right-side "Change Status" panel for
/// whichever device is selected, backed by [MaintenanceListCubit].
class MaintenanceListScreen extends StatefulWidget {
  const MaintenanceListScreen({super.key});

  @override
  State<MaintenanceListScreen> createState() => _MaintenanceListScreenState();
}

class _MaintenanceListScreenState extends State<MaintenanceListScreen> {
  @override
  void initState() {
    super.initState();
    context.read<MaintenanceListCubit>().loadQueue();
  }

  @override
  Widget build(BuildContext context) {
    return AdminShell(
      title: context.l10n.adminMaintenance,
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.screenPadding),
        child: BlocListener<MaintenanceListCubit, MaintenanceListState>(
          listenWhen: (previous, current) =>
              previous.submission != current.submission,
          listener: (context, state) {
            if (state.submission is Success<void>) {
              AppToast.success(context, context.l10n.maintenanceStatusUpdated);
            } else if (state.submission case Error<void>(:final message)) {
              AppToast.error(context, message);
            }
          },
          child: BlocBuilder<MaintenanceListCubit, MaintenanceListState>(
            builder: (context, state) {
              return NetworkStateView<List<MaintenanceItemResDm>>(
                state: state.items,
                isEmpty: (data) => data.isEmpty,
                onData: (context, data) => Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(flex: 17, child: _MaintenanceTable(items: data)),
                    const Gap(18),
                    const Expanded(flex: 10, child: _ChangeStatusPanel()),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class _MaintenanceTable extends StatelessWidget {
  const _MaintenanceTable({required this.items});

  final List<MaintenanceItemResDm> items;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<MaintenanceListCubit>();
    return AppDataTable<MaintenanceItemResDm>(
      columns: [
        TableColumn<MaintenanceItemResDm>(
          header: context.l10n.maintenanceColumnDevice,
          flex: 2,
          cellBuilder: (context, row) => Text(row.name),
        ),
        TableColumn<MaintenanceItemResDm>(
          header: context.l10n.maintenanceColumnSerial,
          cellBuilder: (context, row) => Text(row.serial),
        ),
        TableColumn<MaintenanceItemResDm>(
          header: context.l10n.columnCategory,
          cellBuilder: (context, row) => Text(row.category),
        ),
        TableColumn<MaintenanceItemResDm>(
          header: context.l10n.columnStatus,
          cellBuilder: (context, row) => StatusPill(
            semantic: row.status.semantic,
            label: row.status.label,
            dense: true,
          ),
        ),
        TableColumn<MaintenanceItemResDm>(
          header: context.l10n.maintenanceColumnSetAt,
          cellBuilder: (context, row) => Text(row.setAt),
        ),
        TableColumn<MaintenanceItemResDm>(
          header: context.l10n.columnActions,
          cellBuilder: (context, row) => PillActionButton(
            label: context.l10n.maintenanceActionChangeStatus,
            onPressed: () => cubit.selectDevice(row.id),
          ),
        ),
      ],
      rows: items,
    );
  }
}

class _ChangeStatusPanel extends StatelessWidget {
  const _ChangeStatusPanel();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MaintenanceListCubit, MaintenanceListState>(
      builder: (context, state) {
        final cubit = context.read<MaintenanceListCubit>();
        final selected = _selectedItem(state);

        return AppCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                context.l10n.maintenancePanelTitle,
                style: context.appTextStyles.h3,
              ),
              const Gap(6),
              Text(
                selected?.name ?? context.l10n.maintenanceNoSelection,
                style: context.appTextStyles.bodyMedium.copyWith(
                  color: context.appColors.textSecondary,
                ),
              ),
              const Gap(16),
              if (selected != null) ...[
                Builder(
                  builder: (fieldContext) => PickerField(
                    label: context.l10n.maintenanceNewStatus,
                    valueText:
                        (state.newStatus ?? DeviceStatus.available).label,
                    onTap: () => _showStatusMenu(fieldContext, cubit),
                  ),
                ),
                const Gap(14),
                AppTextField.multiline(
                  label: context.l10n.maintenanceNoteLabel,
                  onChanged: cubit.setNote,
                ),
                const Gap(16),
                AppButton(
                  label: context.l10n.maintenanceConfirm,
                  isLoading: state.submission is Loading<void>,
                  onPressed: cubit.confirmStatusChange,
                ),
              ],
            ],
          ),
        );
      },
    );
  }

  MaintenanceItemResDm? _selectedItem(MaintenanceListState state) {
    final id = state.selectedDeviceId;
    final items = state.items.dataOrNull;
    if (id == null || items == null) return null;
    for (final item in items) {
      if (item.id == id) return item;
    }
    return null;
  }

  void _showStatusMenu(BuildContext context, MaintenanceListCubit cubit) {
    final position = context.menuPositionBelow();
    if (position == null) return;
    showMenu<DeviceStatus>(
      context: context,
      position: position,
      items: [
        for (final status in kMaintenanceTargetStatuses)
          PopupMenuItem(value: status, child: Text(status.label)),
      ],
    ).then((value) {
      if (value != null && context.mounted) cubit.setNewStatus(value);
    });
  }
}
