import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../repositories/remote_repository/requests/models/assign_device_req_dm.dart';
import '../../../../../repositories/remote_repository/requests/models/reject_request_req_dm.dart';
import '../../../../../repositories/remote_repository/requests/models/request_detail_res_dm.dart';
import '../../../../../repositories/remote_repository/requests/models/suggested_device_res_dm.dart';
import '../../../../../repositories/remote_repository/requests/request_repository.dart';
import '../../../../../utilities/api_utilities/error_manager.dart';
import '../../../../../utilities/network/network_state.dart';
import '../../../../../utilities/network/safe_emit.dart';

part 'request_detail_state.dart';

/// Drives the Request Detail & Assign screen (mockup A03): loads the
/// request's detail + suggested devices, tracks the assign form (selected
/// device, date range, WFH toggle), and submits Assign/Reject through
/// [RequestRepository].
class RequestDetailCubit extends Cubit<RequestDetailState> {
  RequestDetailCubit(this.requestId) : super(const RequestDetailState());

  final String requestId;

  Future<void> loadDetail() async {
    safeEmit(state.copyWith(detail: const Loading()));
    try {
      final result = await RequestRepository.instance.fetchRequestDetail(requestId);
      result.when(
        success: (data) => safeEmit(
          state.copyWith(
            detail: Success(data),
            assignedFrom: data.requestedFrom,
            assignedTo: data.requestedTo,
            workFromHome: data.isWfh,
          ),
        ),
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

  Future<void> loadSuggestions() async {
    safeEmit(state.copyWith(suggestions: const Loading()));
    try {
      final result = await RequestRepository.instance.fetchSuggestedDevices(requestId);
      result.when(
        success: (data) => safeEmit(
          state.copyWith(
            suggestions: Success(data),
            selectedDeviceId: data.isNotEmpty ? data.first.itemId : null,
          ),
        ),
        failure: (error) {
          errorManager.handle(error);
          safeEmit(state.copyWith(suggestions: Error(error.message)));
        },
      );
    } catch (e, st) {
      onError(e, st);
      safeEmit(state.copyWith(suggestions: Error(errorManager.handle(e, st).message)));
    }
  }

  void selectDevice(String deviceId) {
    safeEmit(state.copyWith(selectedDeviceId: deviceId));
  }

  void toggleWorkFromHome(bool value) => safeEmit(state.copyWith(workFromHome: value));

  void updateAssignedFrom(DateTime value) =>
      safeEmit(state.copyWith(assignedFrom: value));

  void updateAssignedTo(DateTime value) =>
      safeEmit(state.copyWith(assignedTo: value));

  Future<void> assign() async {
    final deviceId = state.selectedDeviceId;
    final assignedFrom = state.assignedFrom;
    final assignedTo = state.assignedTo;
    if (deviceId == null || assignedFrom == null || assignedTo == null) return;

    safeEmit(state.copyWith(submission: const Loading()));
    try {
      final result = await RequestRepository.instance.assignDevice(
        requestId,
        AssignDeviceReqDm(
          itemId: deviceId,
          assignedFrom: assignedFrom,
          assignedTo: assignedTo,
          isWfh: state.workFromHome,
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

  Future<void> reject({String? note}) async {
    safeEmit(state.copyWith(submission: const Loading()));
    try {
      final result = await RequestRepository.instance.rejectRequest(
        requestId,
        RejectRequestReqDm(
          rejectedReason: note ?? 'Rejected by IT admin',
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
