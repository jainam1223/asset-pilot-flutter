import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../repositories/remote_repository/common/models/request_res_dm.dart';
import '../../../../repositories/remote_repository/request/request_repository.dart';
import '../../../../utilities/api_utilities/error_manager.dart';
import '../../../../utilities/network/network_state.dart';
import '../../../../utilities/network/safe_emit.dart';

part 'request_detail_state.dart';

/// Drives the Request Detail screen (mockup E07 detail).
class RequestDetailCubit extends Cubit<RequestDetailState> {
  RequestDetailCubit(this._requestId) : super(const RequestDetailState()) {
    fetchRequestDetail();
  }

  final String _requestId;

  Future<void> fetchRequestDetail() async {
    safeEmit(state.copyWith(request: const Loading()));
    try {
      final result = await RequestRepository.instance.getRequestDetail(
        _requestId,
      );
      result.when(
        success: (data) => safeEmit(state.copyWith(request: Success(data))),
        failure: (error) {
          errorManager.handle(error);
          safeEmit(state.copyWith(request: Error(error.message)));
        },
      );
    } catch (e, st) {
      onError(e, st);
      safeEmit(
        state.copyWith(request: Error(errorManager.handle(e, st).message)),
      );
    }
  }

  /// TODO(api): wire to a real cancel-request endpoint once the backend
  /// exists (e.g. `POST /me/requests/{id}/cancel`). No-op for now — the
  /// screen calls this from the "Cancel Request" button.
  Future<void> cancelRequest() async {}
}
