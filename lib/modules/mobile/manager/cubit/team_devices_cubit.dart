import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../repositories/remote_repository/manager/manager_repository.dart';
import '../../../../repositories/remote_repository/manager/models/team_device_res_dm.dart';
import '../../../../utilities/api_utilities/error_manager.dart';
import '../../../../utilities/network/network_state.dart';
import '../../../../utilities/network/safe_emit.dart';

part 'team_devices_state.dart';

/// Drives the read-only Team Devices list (mockup M04).
class TeamDevicesCubit extends Cubit<TeamDevicesState> {
  TeamDevicesCubit() : super(const TeamDevicesState()) {
    fetchTeamDevices();
  }

  Future<void> fetchTeamDevices() async {
    safeEmit(state.copyWith(members: const Loading()));
    try {
      final result = await ManagerRepository.instance.getTeamDevices();
      result.when(
        success: (data) => safeEmit(state.copyWith(members: Success(data))),
        failure: (error) {
          errorManager.handle(error);
          safeEmit(state.copyWith(members: Error(error.message)));
        },
      );
    } catch (e, st) {
      onError(e, st);
      safeEmit(
        state.copyWith(members: Error(errorManager.handle(e, st).message)),
      );
    }
  }
}
