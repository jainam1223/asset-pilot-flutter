import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../../repositories/remote_repository/common/models/item_category_res_dm.dart';
import '../../../../utilities/extensions/context_extensions.dart';
import '../../../../utilities/navigation/app_routes.dart';
import '../../../../utilities/network/network_state.dart';
import '../../../../values/constants/app_constants.dart';
import '../../../../values/enumeration/statuses.dart';
import '../../../../widgets/widgets.dart';
import '../../shell/admin_shell.dart';
import '../inventory_status_x.dart';
import 'cubit/add_device_cubit.dart';

/// IT Admin "Add Device" form (Inventory Management A04 toolbar action):
/// creates a new device via [AddDeviceCubit], backed by `POST /admin/items`.
class AddDeviceScreen extends StatefulWidget {
  const AddDeviceScreen({super.key});

  @override
  State<AddDeviceScreen> createState() => _AddDeviceScreenState();
}

class _AddDeviceScreenState extends State<AddDeviceScreen> {
  @override
  void initState() {
    super.initState();
    context.read<AddDeviceCubit>().loadCategories();
  }

  @override
  Widget build(BuildContext context) {
    return AdminShell(
      title: context.l10n.inventoryAddDevice,
      child: BlocConsumer<AddDeviceCubit, AddDeviceState>(
        listenWhen: (previous, current) => previous.submission != current.submission,
        listener: (context, state) {
          switch (state.submission) {
            case Success():
              AppToast.success(context, context.l10n.inventoryAddDeviceSuccess);
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
            child: Align(
              alignment: Alignment.topCenter,
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 560),
                child: _AddDeviceFormPanel(state: state),
              ),
            ),
          );
        },
      ),
    );
  }
}

final _purchaseDateFormat = DateFormat('dd MMM yyyy');

Future<void> _pickPurchaseDate({
  required BuildContext context,
  required DateTime? initial,
  required ValueChanged<DateTime> onPicked,
}) async {
  final now = DateTime.now();
  final picked = await showDatePicker(
    context: context,
    initialDate: initial ?? now,
    firstDate: DateTime(now.year - 20),
    lastDate: now,
  );
  if (picked == null) return;
  onPicked(picked);
}

class _AddDeviceFormPanel extends StatelessWidget {
  const _AddDeviceFormPanel({required this.state});

  final AddDeviceState state;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AddDeviceCubit>();
    final canSubmit = state.name.isNotEmpty &&
        state.serialNo.isNotEmpty &&
        state.categoryId != null &&
        (state.ownerType != OwnerType.client || state.clientName.isNotEmpty);

    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(context.l10n.inventoryAddDevice, style: context.appTextStyles.h3),
          const Gap(14),
          AppTextField(
            label: context.l10n.columnName,
            onChanged: cubit.updateName,
          ),
          const Gap(14),
          AppTextField(
            label: context.l10n.inventoryFieldSerial,
            onChanged: cubit.updateSerialNo,
          ),
          const Gap(14),
          SearchableDropdownField<ItemCategoryResDm>(
            key: ValueKey(state.categoryId),
            label: context.l10n.inventoryFieldCategory,
            initialText: state.categoryName ?? '',
            options: state.categories.dataOrNull ?? const [],
            displayStringFor: (category) => category.name,
            onSelected: (category) => cubit.selectCategory(category.id, category.name),
          ),
          const Gap(14),
          Text(
            context.l10n.inventoryFieldOwnerType,
            style: context.appTextStyles.emphasisSmall.copyWith(
              color: context.appColors.textTertiary,
            ),
          ),
          const Gap(6),
          SegmentedControl<OwnerType>(
            options: [
              SegmentOption(value: OwnerType.company, label: OwnerType.company.label),
              SegmentOption(value: OwnerType.client, label: OwnerType.client.label),
            ],
            value: state.ownerType,
            onChanged: cubit.selectOwnerType,
          ),
          if (state.ownerType == OwnerType.client) ...[
            const Gap(14),
            AppTextField(
              label: context.l10n.inventoryFieldClientName,
              onChanged: cubit.updateClientName,
            ),
          ],
          const Gap(14),
          PickerField(
            label: context.l10n.inventoryFieldPurchaseDate,
            valueText: state.purchaseDate == null
                ? ''
                : _purchaseDateFormat.format(state.purchaseDate!.toLocal()),
            trailingIcon: Icons.calendar_today_outlined,
            onTap: () => _pickPurchaseDate(
              context: context,
              initial: state.purchaseDate,
              onPicked: cubit.updatePurchaseDate,
            ),
          ),
          const Gap(18),
          AppButton(
            label: context.l10n.inventoryAddDevice,
            expand: true,
            isLoading: state.submission is Loading,
            onPressed: !canSubmit || state.submission is Loading ? null : cubit.submit,
          ),
        ],
      ),
    );
  }
}
