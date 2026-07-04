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
/// request's detail + AI-ranked suggested devices, tracks the assign form
/// (selected device, date range, WFH toggle), and submits Assign/Reject
/// through the mocked [RequestRepository].
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
            workFromHome: data.workFromHome,
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
        success: (data) {
          final recommended = data.where((d) => d.recommended).firstOrNull ??
              (data.isNotEmpty ? data.first : null);
          safeEmit(
            state.copyWith(
              suggestions: Success(data),
              selectedDeviceId: recommended?.deviceId,
            ),
          );
        },
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

  void updateAssignedFrom(String value) => safeEmit(state.copyWith(assignedFrom: value));

  void updateAssignedTo(String value) => safeEmit(state.copyWith(assignedTo: value));

  void toggleWorkFromHome(bool value) => safeEmit(state.copyWith(workFromHome: value));

  Future<void> assign() async {
    final deviceId = state.selectedDeviceId;
    if (deviceId == null) return;

    safeEmit(state.copyWith(submission: const Loading()));
    try {
      final result = await RequestRepository.instance.assignDevice(
        AssignDeviceReqDm(
          requestId: requestId,
          deviceId: deviceId,
          assignedFrom: state.assignedFrom,
          assignedTo: state.assignedTo,
          workFromHome: state.workFromHome,
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
        RejectRequestReqDm(requestId: requestId, note: note),
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
