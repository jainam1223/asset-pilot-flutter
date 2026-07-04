import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../repositories/remote_repository/common/models/request_res_dm.dart';
import '../../../../repositories/remote_repository/request/request_repository.dart';
import '../../../../utilities/api_utilities/error_manager.dart';
import '../../../../utilities/network/network_state.dart';
import '../../../../utilities/network/safe_emit.dart';

part 'requests_state.dart';

/// Drives the My Requests screen (mockup E07 list).
class RequestsCubit extends Cubit<RequestsState> {
  RequestsCubit() : super(const RequestsState()) {
    fetchMyRequests();
  }

  Future<void> fetchMyRequests() async {
    safeEmit(state.copyWith(requests: const Loading()));
    try {
      final result = await RequestRepository.instance.getMyRequests();
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
}
