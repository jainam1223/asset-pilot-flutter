import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../models/api_response/api_result.dart';
import '../../../../repositories/remote_repository/manager/manager_repository.dart';
import '../../../../repositories/remote_repository/manager/models/pending_approval_res_dm.dart';
import '../../../../utilities/api_utilities/error_manager.dart';
import '../../../../utilities/network/network_state.dart';
import '../../../../utilities/network/safe_emit.dart';
import '../../../../values/enumeration/statuses.dart';

part 'pending_approvals_state.dart';

/// Drives the Pending Approvals list (mockup M01).
class PendingApprovalsCubit extends Cubit<PendingApprovalsState> {
  PendingApprovalsCubit() : super(const PendingApprovalsState()) {
    fetchPendingApprovals();
  }

  Future<void> fetchPendingApprovals() async {
    safeEmit(state.copyWith(approvals: const Loading()));
    try {
      final result = await ManagerRepository.instance.getPendingApprovals();
      result.when(
        success: (data) => safeEmit(state.copyWith(approvals: Success(data))),
        failure: (error) {
          errorManager.handle(error);
          safeEmit(state.copyWith(approvals: Error(error.message)));
        },
      );
    } catch (e, st) {
      onError(e, st);
      safeEmit(
        state.copyWith(approvals: Error(errorManager.handle(e, st).message)),
      );
    }
  }

  Future<bool> decide({
    required String requestId,
    required MgrApprovalStatus decision,
    String? note,
  }) async {
    final result = await ManagerRepository.instance.decideApproval(
      requestId: requestId,
      decision: decision,
      note: note,
    );
    return switch (result) {
      ApiSuccess() => true,
      ApiFailure(:final error) => () {
        errorManager.handle(error);
        return false;
      }(),
    };
  }
}
