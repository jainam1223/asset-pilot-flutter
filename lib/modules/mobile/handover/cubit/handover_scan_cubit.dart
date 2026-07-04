import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../repositories/remote_repository/common/models/device_by_qr_res_dm.dart';
import '../../../../repositories/remote_repository/handover/handover_repository.dart';
import '../../../../utilities/api_utilities/error_manager.dart';
import '../../../../utilities/network/network_state.dart';
import '../../../../utilities/network/safe_emit.dart';

part 'handover_scan_state.dart';

/// Drives the Handover · Scan/Pick screen (mockup E12): resolves a scanned
/// QR token via `GET /devices/by-qr/{qrCodeToken}`.
class HandoverScanCubit extends Cubit<HandoverScanState> {
  HandoverScanCubit() : super(const HandoverScanState());

  Future<void> resolveQrCode(String qrCodeToken) async {
    if (state.resolve.isLoading) return;
    safeEmit(state.copyWith(resolve: const Loading()));
    try {
      final result = await HandoverRepository.instance.resolveDeviceByQr(
        qrCodeToken,
      );
      result.when(
        success: (data) => safeEmit(state.copyWith(resolve: Success(data))),
        failure: (error) {
          errorManager.handle(error);
          safeEmit(state.copyWith(resolve: Error(error.message)));
        },
      );
    } catch (e, st) {
      onError(e, st);
      safeEmit(
        state.copyWith(resolve: Error(errorManager.handle(e, st).message)),
      );
    }
  }

  void reset() => safeEmit(const HandoverScanState());
}
