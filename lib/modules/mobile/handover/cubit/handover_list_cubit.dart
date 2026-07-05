import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../models/api_response/api_result.dart';
import '../../../../repositories/remote_repository/common/models/handover_request_res_dm.dart';
import '../../../../repositories/remote_repository/handover/handover_repository.dart';
import '../../../../utilities/api_utilities/error_manager.dart';
import '../../../../utilities/network/network_state.dart';
import '../../../../utilities/network/safe_emit.dart';

part 'handover_list_state.dart';

/// Drives My Handovers (mockup E14): the As Borrower/As Owner toggle and
/// the accept/reject/cancel/complete actions on each request.
class HandoverListCubit extends Cubit<HandoverListState> {
  HandoverListCubit() : super(const HandoverListState()) {
    fetch();
  }

  Future<void> fetch() async {
    safeEmit(state.copyWith(requests: const Loading()));
    try {
      final result = await HandoverRepository.instance.listMyHandoverRequests(
        asBorrower: state.asBorrower,
      );
      result.when(
        success: (data) => safeEmit(state.copyWith(requests: Success(data))),
        failure: (error) {
          errorManager.handle(error);
          safeEmit(state.copyWith(requests: Error(error.message)));
        },
      );
    } catch (e, st) {
      onError(e, st);
      safeEmit(
        state.copyWith(requests: Error(errorManager.handle(e, st).message)),
      );
    }
  }

  void setAsBorrower(bool value) {
    if (state.asBorrower == value) return;
    safeEmit(state.copyWith(asBorrower: value));
    fetch();
  }

  Future<bool> accept(String id) => _decide(
    HandoverRepository.instance.acceptHandoverRequest(id),
  );

  Future<bool> reject(String id) => _decide(
    HandoverRepository.instance.rejectHandoverRequest(id),
  );

  Future<bool> cancel(String id) => _decide(
    HandoverRepository.instance.cancelHandoverRequest(id),
  );

  Future<bool> complete(String id) => _decide(
    HandoverRepository.instance.completeHandoverRequest(id),
  );

  Future<bool> _decide(
    Future<ApiResult<HandoverRequestResDm>> action,
  ) async {
    final result = await action;
    return switch (result) {
      ApiSuccess() => true,
      ApiFailure(:final error) => () {
        errorManager.handle(error);
        return false;
      }(),
    };
  }
}
