import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../repositories/remote_repository/inventory/inventory_repository.dart';
import '../../../../../repositories/remote_repository/inventory/models/inventory_detail_res_dm.dart';
import '../../../../../utilities/api_utilities/error_manager.dart';
import '../../../../../utilities/network/network_state.dart';
import '../../../../../utilities/network/safe_emit.dart';

part 'inventory_detail_state.dart';

/// Drives the admin Device Detail screen (mockup A05): loads full detail
/// for a single device. "Change Status" and "Process Return" are TODO
/// stubs (no design/backend for those flows yet), so no submission state
/// is needed here — only the detail load.
class InventoryDetailCubit extends Cubit<InventoryDetailState> {
  InventoryDetailCubit(this.deviceId) : super(const InventoryDetailState());

  final String deviceId;

  Future<void> loadDetail() async {
    safeEmit(state.copyWith(detail: const Loading()));
    try {
      final result =
          await InventoryRepository.instance.fetchInventoryDetail(deviceId);
      result.when(
        success: (data) => safeEmit(state.copyWith(detail: Success(data))),
        failure: (error) {
          errorManager.handle(error);
          safeEmit(state.copyWith(detail: Error(error.message)));
        },
      );
    } catch (e, st) {
      onError(e, st);
      safeEmit(state.copyWith(detail: Error(errorManager.handle(e, st).message)));
    }
  }
}
