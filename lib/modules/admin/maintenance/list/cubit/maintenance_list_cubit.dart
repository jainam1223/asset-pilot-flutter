import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../repositories/remote_repository/maintenance/maintenance_repository.dart';
import '../../../../../repositories/remote_repository/maintenance/models/maintenance_item_res_dm.dart';
import '../../../../../repositories/remote_repository/maintenance/models/update_device_status_req_dm.dart';
import '../../../../../utilities/api_utilities/error_manager.dart';
import '../../../../../utilities/network/network_state.dart';
import '../../../../../utilities/network/safe_emit.dart';
import '../../../../../values/enumeration/statuses.dart';

part 'maintenance_list_state.dart';

/// Target statuses selectable from the Maintenance "Change Status" panel
/// (mockup A10).
const List<DeviceStatus> kMaintenanceTargetStatuses = [
  DeviceStatus.available,
  DeviceStatus.underRepair,
  DeviceStatus.retired,
];

/// Drives the Maintenance screen (mockup A10): loads the queue of devices
/// under repair/maintenance, and lets IT change a selected device's status.
class MaintenanceListCubit extends Cubit<MaintenanceListState> {
  MaintenanceListCubit() : super(const MaintenanceListState());

  Future<void> loadQueue() async {
    safeEmit(state.copyWith(items: const Loading()));
    try {
      final result =
          await MaintenanceRepository.instance.fetchMaintenanceQueue();
      result.when(
        success: (data) => safeEmit(
          state.copyWith(items: Success(data), clearSelection: data.isEmpty),
        ),
        failure: (error) {
          errorManager.handle(error);
          safeEmit(state.copyWith(items: Error(error.message)));
        },
      );
    } catch (e, st) {
      onError(e, st);
      safeEmit(state.copyWith(items: Error(errorManager.handle(e, st).message)));
    }
  }

  void selectDevice(String deviceId) {
    safeEmit(
      state.copyWith(
        selectedDeviceId: deviceId,
        newStatus: kMaintenanceTargetStatuses.first,
        note: '',
        submission: const Idle(),
      ),
    );
  }

  void setNewStatus(DeviceStatus status) {
    safeEmit(state.copyWith(newStatus: status));
  }

  void setNote(String note) {
    safeEmit(state.copyWith(note: note));
  }

  Future<void> confirmStatusChange() async {
    final deviceId = state.selectedDeviceId;
    final newStatus = state.newStatus;
    if (deviceId == null || newStatus == null) return;

    safeEmit(state.copyWith(submission: const Loading()));
    try {
      final result = await MaintenanceRepository.instance.updateDeviceStatus(
        UpdateDeviceStatusReqDm(
          deviceId: deviceId,
          newStatus: newStatus,
          note: state.note.isEmpty ? null : state.note,
        ),
      );
      result.when(
        success: (_) {
          safeEmit(state.copyWith(submission: const Success(null)));
          loadQueue();
        },
        failure: (error) {
          errorManager.handle(error);
          safeEmit(state.copyWith(submission: Error(error.message)));
        },
      );
    } catch (e, st) {
      onError(e, st);
      safeEmit(
        state.copyWith(submission: Error(errorManager.handle(e, st).message)),
      );
    }
  }
}
