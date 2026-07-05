import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../repositories/remote_repository/device/device_repository.dart';
import '../../../../utilities/api_utilities/error_manager.dart';
import '../../../../utilities/network/network_state.dart';
import '../../../../utilities/network/safe_emit.dart';

part 'return_device_state.dart';

/// Drives the Return Device (WFH) screen (mockup E09): holds the tracking
/// URL and submits `POST /me/devices/{itemId}/return`.
class ReturnDeviceCubit extends Cubit<ReturnDeviceState> {
  ReturnDeviceCubit(this.itemId) : super(const ReturnDeviceState());

  final String itemId;

  void setTrackingUrl(String value) =>
      safeEmit(state.copyWith(trackingUrl: value));

  Future<void> submit() async {
    if (state.submit.isLoading) return;
    safeEmit(state.copyWith(submit: const Loading()));
    try {
      final result = await DeviceRepository.instance.returnDevice(
        itemId,
        state.trackingUrl.trim(),
      );
      result.when(
        success: (_) => safeEmit(state.copyWith(submit: const Success(null))),
        failure: (error) {
          errorManager.handle(error);
          safeEmit(state.copyWith(submit: Error(error.message)));
        },
      );
    } catch (e, st) {
      onError(e, st);
      safeEmit(
        state.copyWith(submit: Error(errorManager.handle(e, st).message)),
      );
    }
  }
}
