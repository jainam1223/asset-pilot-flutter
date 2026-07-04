import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../repositories/remote_repository/inventory/inventory_repository.dart';
import '../../../../../repositories/remote_repository/inventory/models/device_timeline_event_res_dm.dart';
import '../../../../../utilities/api_utilities/error_manager.dart';
import '../../../../../utilities/network/network_state.dart';
import '../../../../../utilities/network/safe_emit.dart';

part 'inventory_timeline_state.dart';

/// Drives the admin Device Timeline screen (mockup A06): loads the
/// append-only audit trail for a device.
class InventoryTimelineCubit extends Cubit<InventoryTimelineState> {
  InventoryTimelineCubit(this.deviceId) : super(const InventoryTimelineState());

  final String deviceId;

  Future<void> loadTimeline() async {
    safeEmit(state.copyWith(events: const Loading()));
    try {
      final result =
          await InventoryRepository.instance.fetchDeviceTimeline(deviceId);
      result.when(
        success: (data) => safeEmit(state.copyWith(events: Success(data))),
        failure: (error) {
          errorManager.handle(error);
          safeEmit(state.copyWith(events: Error(error.message)));
        },
      );
    } catch (e, st) {
      onError(e, st);
      safeEmit(state.copyWith(events: Error(errorManager.handle(e, st).message)));
    }
  }
}
