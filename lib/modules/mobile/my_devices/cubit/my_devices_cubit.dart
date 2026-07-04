import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../repositories/remote_repository/device/device_repository.dart';
import '../../../../repositories/remote_repository/device/models/my_device_res_dm.dart';
import '../../../../utilities/api_utilities/error_manager.dart';
import '../../../../utilities/network/network_state.dart';
import '../../../../utilities/network/safe_emit.dart';

part 'my_devices_state.dart';

/// Drives the My Devices screen (mockup E02).
class MyDevicesCubit extends Cubit<MyDevicesState> {
  MyDevicesCubit() : super(const MyDevicesState()) {
    fetchMyDevices();
  }

  Future<void> fetchMyDevices() async {
    safeEmit(state.copyWith(devices: const Loading()));
    try {
      final result = await DeviceRepository.instance.getMyDevices();
      result.when(
        success: (data) => safeEmit(state.copyWith(devices: Success(data))),
        failure: (error) {
          errorManager.handle(error);
          safeEmit(state.copyWith(devices: Error(error.message)));
        },
      );
    } catch (e, st) {
      onError(e, st);
      safeEmit(
        state.copyWith(devices: Error(errorManager.handle(e, st).message)),
      );
    }
  }
}
