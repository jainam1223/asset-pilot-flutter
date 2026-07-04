import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../models/api_response/api_result.dart';
import '../../../../repositories/remote_repository/extension_requests/models/decide_extension_req_dm.dart';
import '../../../../repositories/remote_repository/extension_requests/models/extension_request_summary_res_dm.dart';
import '../../../../repositories/remote_repository/manager/manager_repository.dart';
import '../../../../utilities/api_utilities/error_manager.dart';
import '../../../../utilities/network/network_state.dart';
import '../../../../utilities/network/safe_emit.dart';

part 'manager_extensions_state.dart';

/// Drives the Extension Approvals list (mockup M03).
class ManagerExtensionsCubit extends Cubit<ManagerExtensionsState> {
  ManagerExtensionsCubit() : super(const ManagerExtensionsState()) {
    fetchExtensionApprovals();
  }

  Future<void> fetchExtensionApprovals() async {
    safeEmit(state.copyWith(extensions: const Loading()));
    try {
      final result = await ManagerRepository.instance.getExtensionApprovals();
      result.when(
        success: (data) =>
            safeEmit(state.copyWith(extensions: Success(data))),
        failure: (error) {
          errorManager.handle(error);
          safeEmit(state.copyWith(extensions: Error(error.message)));
        },
      );
    } catch (e, st) {
      onError(e, st);
      safeEmit(
        state.copyWith(extensions: Error(errorManager.handle(e, st).message)),
      );
    }
  }

  Future<bool> decide(DecideExtensionReqDm body) async {
    final result = await ManagerRepository.instance.decideExtension(body);
    return switch (result) {
      ApiSuccess() => true,
      ApiFailure(:final error) => () {
        errorManager.handle(error);
        return false;
      }(),
    };
  }
}
