import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../repositories/remote_repository/common/models/user_res_dm.dart';
import '../../../repositories/remote_repository/inventory/models/inventory_item_res_dm.dart';
import '../../../utilities/extensions/context_extensions.dart';
import '../../../utilities/navigation/app_routes.dart';
import '../../../utilities/network/network_state.dart';
import '../../../values/constants/app_constants.dart';
import '../../../widgets/widgets.dart';
import '../shell/admin_shell.dart';
import 'cubit/client_assignment_cubit.dart';

/// IT Admin Direct Client Assignment screen (mockup A07): assign a
/// client-owned device straight to an employee, bypassing the request/
/// approval lifecycle, backed by [ClientAssignmentCubit].
class DirectClientAssignmentScreen extends StatefulWidget {
  const DirectClientAssignmentScreen({super.key});

  @override
  State<DirectClientAssignmentScreen> createState() =>
      _DirectClientAssignmentScreenState();
}

class _DirectClientAssignmentScreenState
    extends State<DirectClientAssignmentScreen> {
  @override
  void initState() {
    super.initState();
    context.read<ClientAssignmentCubit>().loadDevices();
    context.read<ClientAssignmentCubit>().loadEmployees();
  }

  @override
  Widget build(BuildContext context) {
    return AdminShell(
      title: context.l10n.assignmentTitle,
      child: BlocConsumer<ClientAssignmentCubit, ClientAssignmentState>(
        listenWhen: (previous, current) => previous.submission != current.submission,
        listener: (context, state) {
          switch (state.submission) {
            case Success():
              AppToast.success(context, context.l10n.assignmentUpdatedSuccess);
              context.go(Routes.adminInventory.path);
            case Error(:final message):
              AppToast.error(context, message);
            case Idle() || Loading():
              break;
          }
        },
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(AppConstants.screenPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InlineAlert(
                  semantic: AppSemantic.warning,
                  message: context.l10n.assignmentSkipsApprovalWarning,
                ),
                const Gap(18),
                Expanded(
                  child: NetworkStateView<List<InventoryItemResDm>>(
                    state: state.devices,
                    onData: (context, devices) => Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 11,
                          child: _SelectDevicePanel(devices: devices, state: state),
                        ),
                        const Gap(18),
                        Expanded(flex: 10, child: _AssignmentFormPanel(state: state)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _SelectDevicePanel extends StatelessWidget {
  const _SelectDevicePanel({required this.devices, required this.state});

  final List<InventoryItemResDm> devices;
  final ClientAssignmentState state;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ClientAssignmentCubit>();
    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.l10n.assignmentSelectDeviceTitle,
            style: context.appTextStyles.h3,
          ),
          const Gap(14),
          ...devices.map(
            (device) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: AppCard(
                selected: device.id == state.selectedDeviceId,
                onTap: () => cubit.selectDevice(device.id),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(device.name, style: context.appTextStyles.labelLarge),
                        const Gap(5),
                        Text(
                          device.serialNo,
                          style: context.appTextStyles.bodySmall.copyWith(
                            fontFamily: 'monospace',
                          ),
                        ),
                      ],
                    ),
                    StatusPill(
                      semantic: AppSemantic.info,
                      label: '${context.l10n.assignmentClientPrefix} ${device.clientName}',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

final _assignedDateFormat = DateFormat('dd MMM yyyy');

Future<void> _pickAssignedDate({
  required BuildContext context,
  required DateTime? initial,
  required ValueChanged<DateTime> onPicked,
}) async {
  final now = DateTime.now();
  final picked = await showDatePicker(
    context: context,
    initialDate: initial ?? now,
    firstDate: DateTime(now.year - 1),
    lastDate: DateTime(now.year + 5),
  );
  if (picked == null) return;
  onPicked(picked);
}

class _AssignmentFormPanel extends StatelessWidget {
  const _AssignmentFormPanel({required this.state});

  final ClientAssignmentState state;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ClientAssignmentCubit>();
    final canSubmit = state.selectedDeviceId != null &&
        state.selectedEmployeeId != null &&
        state.assignedFrom != null &&
        state.assignedTo != null;
    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(context.l10n.assignmentFormTitle, style: context.appTextStyles.h3),
          const Gap(14),
          if (state.selectedEmployeeName != null) ...[
            Row(
              children: [
                AppAvatar(name: state.selectedEmployeeName!),
                const Gap(11),
                Text(
                  state.selectedEmployeeName!,
                  style: context.appTextStyles.labelLarge,
                ),
              ],
            ),
            const Gap(14),
          ],
          SearchableDropdownField<UserResDm>(
            key: ValueKey(state.selectedEmployeeId),
            label: context.l10n.assignmentAssignToEmployee,
            initialText: state.selectedEmployeeName ?? '',
            options: state.employees.dataOrNull ?? const [],
            displayStringFor: (employee) => employee.name,
            onSelected: (employee) => cubit.selectEmployee(employee.id, employee.name),
          ),
          const Gap(14),
          Row(
            children: [
              Expanded(
                child: PickerField(
                  label: context.l10n.assignmentAssignedFrom,
                  valueText: state.assignedFrom == null
                      ? ''
                      : _assignedDateFormat.format(state.assignedFrom!.toLocal()),
                  trailingIcon: Icons.calendar_today_outlined,
                  onTap: () => _pickAssignedDate(
                    context: context,
                    initial: state.assignedFrom,
                    onPicked: cubit.updateAssignedFrom,
                  ),
                ),
              ),
              const Gap(12),
              Expanded(
                child: PickerField(
                  label: context.l10n.assignmentAssignedTo,
                  valueText: state.assignedTo == null
                      ? ''
                      : _assignedDateFormat.format(state.assignedTo!.toLocal()),
                  trailingIcon: Icons.calendar_today_outlined,
                  onTap: () => _pickAssignedDate(
                    context: context,
                    initial: state.assignedTo,
                    onPicked: cubit.updateAssignedTo,
                  ),
                ),
              ),
            ],
          ),
          const Gap(14),
          AppTextField.multiline(
            label: context.l10n.assignmentNotes,
            onChanged: cubit.updateNotes,
          ),
          const Gap(16),
          AppButton(
            label: context.l10n.assignmentConfirm,
            expand: true,
            isLoading: state.submission is Loading,
            onPressed: !canSubmit || state.submission is Loading ? null : cubit.submit,
          ),
        ],
      ),
    );
  }
}
