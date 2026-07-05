import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../repositories/remote_repository/common/models/handover_request_res_dm.dart';
import '../../../../repositories/remote_repository/handover/handover_repository.dart';
import '../../../../repositories/remote_repository/handover/models/create_handover_request_req_dm.dart';
import '../../../../repositories/remote_repository/handover/models/device_handover_lookup_res_dm.dart';
import '../../../../utilities/api_utilities/error_manager.dart';
import '../../../../utilities/network/network_state.dart';
import '../../../../utilities/network/safe_emit.dart';

part 'request_handover_state.dart';

/// Default loan duration pre-filled on Request Handover (mockup E13). The
/// borrower can edit it in the duration field before submitting.
const int kDefaultHandoverDurationHours = 48;

/// Drives the Request Handover screen (mockup E13): loads the scanned
/// device via `GET /me/devices/{itemId}`, holds the optional note, and
/// submits `POST /me/handover-requests` for [itemId].
class RequestHandoverCubit extends Cubit<RequestHandoverState> {
  RequestHandoverCubit(this.itemId) : super(const RequestHandoverState()) {
    _loadDevice();
  }

  final String itemId;

  Future<void> _loadDevice() async {
    safeEmit(state.copyWith(device: const Loading()));
    try {
      final result = await HandoverRepository.instance.getDeviceHandoverLookup(
        itemId,
      );
      result.when(
        success: (data) => safeEmit(state.copyWith(device: Success(data))),
        failure: (error) {
          errorManager.handle(error);
          safeEmit(state.copyWith(device: Error(error.message)));
        },
      );
    } catch (e, st) {
      onError(e, st);
      safeEmit(
        state.copyWith(device: Error(errorManager.handle(e, st).message)),
      );
    }
  }

  void setNote(String value) => safeEmit(state.copyWith(note: value));

  /// Set the requested loan duration in hours. Ignores empty/invalid input,
  /// keeping the last valid value.
  void setDuration(String value) {
    final hours = int.tryParse(value.trim());
    if (hours == null || hours <= 0) return;
    safeEmit(state.copyWith(durationHours: hours));
  }

  Future<void> submit() async {
    if (state.submit.isLoading) return;
    safeEmit(state.copyWith(submit: const Loading()));
    try {
      final result = await HandoverRepository.instance.createHandoverRequest(
        CreateHandoverRequestReqDm(
          itemId: itemId,
          requestedDurationHours: state.durationHours,
          note: state.note.trim().isEmpty ? null : state.note.trim(),
        ),
      );
      result.when(
        success: (data) => safeEmit(state.copyWith(submit: Success(data))),
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
