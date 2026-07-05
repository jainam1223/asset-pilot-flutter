import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../repositories/remote_repository/device/device_repository.dart';
import '../../../../utilities/api_utilities/error_manager.dart';
import '../../../../utilities/network/network_state.dart';
import '../../../../utilities/network/safe_emit.dart';
import '../../../../values/enumeration/statuses.dart';

part 'file_support_request_state.dart';

/// Drives the File Support Request screen: the employee picks a request
/// type and describes the issue, submitted via
/// `POST /me/devices/{itemId}/support-requests`.
class FileSupportRequestCubit extends Cubit<FileSupportRequestState> {
  FileSupportRequestCubit(this.itemId) : super(const FileSupportRequestState());

  final String itemId;

  void selectType(SupportType type) => safeEmit(state.copyWith(type: type));

  void setDescription(String value) =>
      safeEmit(state.copyWith(description: value));

  Future<void> submit() async {
    print('item id : ${itemId}');
    if (state.submit.isLoading || !state.canSubmit) return;
    safeEmit(state.copyWith(submit: const Loading()));
    try {
      print('id is : ${itemId}');
      final result = await DeviceRepository.instance.fileSupportRequest(
        itemId,
        state.type,
        state.description.trim(),
      );
      result.when(
        success: (_) => safeEmit(state.copyWith(submit: const Success(null))),
        failure: (error) {
          errorManager.handle(error);
          safeEmit(state.copyWith(submit: Error(error.message)));
        },
      );
    } catch (e, st) {
      print('error: ${e.toString()}');
      onError(e, st);
      safeEmit(
        state.copyWith(submit: Error(errorManager.handle(e, st).message)),
      );
    }
  }
}
