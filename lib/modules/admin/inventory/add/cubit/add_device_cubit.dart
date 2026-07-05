import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../repositories/remote_repository/common/models/item_category_res_dm.dart';
import '../../../../../repositories/remote_repository/dropdowns/dropdown_repository.dart';
import '../../../../../repositories/remote_repository/inventory/inventory_repository.dart';
import '../../../../../repositories/remote_repository/inventory/models/create_item_req_dm.dart';
import '../../../../../utilities/api_utilities/error_manager.dart';
import '../../../../../utilities/network/network_state.dart';
import '../../../../../utilities/network/safe_emit.dart';
import '../../../../../values/enumeration/statuses.dart';

part 'add_device_state.dart';

/// Drives the Add Device screen (Inventory Management "Add Device" form):
/// loads item categories for the picker, tracks the new-device form fields,
/// and submits through [InventoryRepository.createItem].
class AddDeviceCubit extends Cubit<AddDeviceState> {
  AddDeviceCubit() : super(const AddDeviceState());

  Future<void> loadCategories() async {
    safeEmit(state.copyWith(categories: const Loading()));
    try {
      final result = await DropdownRepository.instance.fetchItemCategories();
      result.when(
        success: (data) => safeEmit(state.copyWith(categories: Success(data))),
        failure: (error) {
          errorManager.handle(error);
          safeEmit(state.copyWith(categories: Error(error.message)));
        },
      );
    } catch (e, st) {
      onError(e, st);
      safeEmit(state.copyWith(categories: Error(errorManager.handle(e, st).message)));
    }
  }

  void updateName(String value) => safeEmit(state.copyWith(name: value));

  void updateSerialNo(String value) => safeEmit(state.copyWith(serialNo: value));

  void selectCategory(String categoryId, String categoryName) {
    safeEmit(state.copyWith(categoryId: categoryId, categoryName: categoryName));
  }

  void selectOwnerType(OwnerType value) {
    safeEmit(
      state.copyWith(
        ownerType: value,
        clientName: value == OwnerType.company ? '' : state.clientName,
      ),
    );
  }

  void updateClientName(String value) => safeEmit(state.copyWith(clientName: value));

  void updatePurchaseDate(DateTime value) => safeEmit(state.copyWith(purchaseDate: value));

  Future<void> submit() async {
    final categoryId = state.categoryId;
    if (state.name.isEmpty || state.serialNo.isEmpty || categoryId == null) {
      return;
    }
    if (state.ownerType == OwnerType.client && state.clientName.isEmpty) {
      return;
    }

    safeEmit(state.copyWith(submission: const Loading()));
    try {
      final result = await InventoryRepository.instance.createItem(
        CreateItemReqDm(
          name: state.name,
          serialNo: state.serialNo,
          categoryId: categoryId,
          ownerType: state.ownerType,
          clientName: state.ownerType == OwnerType.client ? state.clientName : null,
          purchaseDate: state.purchaseDate,
        ),
      );
      result.when(
        success: (_) => safeEmit(state.copyWith(submission: const Success(null))),
        failure: (error) {
          errorManager.handle(error);
          safeEmit(state.copyWith(submission: Error(error.message)));
        },
      );
    } catch (e, st) {
      onError(e, st);
      safeEmit(state.copyWith(submission: Error(errorManager.handle(e, st).message)));
    }
  }
}
