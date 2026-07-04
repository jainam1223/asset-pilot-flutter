import '../../../models/api_response/api_result.dart';
import '../../../models/exceptions/app_exception.dart';
import '../../../values/app_global/current_user.dart';
import '../api_repository/api_repository.dart';
import '../common/models/device_by_qr_res_dm.dart';
import '../common/models/handover_request_res_dm.dart';
import 'models/create_handover_request_req_dm.dart';

/// Repository for the Handover flow (Scan/Pick + Request Handover,
/// mockups E12/E13).
///
/// NOTE: neither endpoint is wired to a live backend yet — both return
/// MOCKED data. TODO(api): replace each mock body with the real
/// [ApiService] call once the backend exists. Cubit/UI layers don't change.
class HandoverRepository extends Repository {
  HandoverRepository._();

  static final HandoverRepository instance = HandoverRepository._();

  /// Resolve a scanned QR token to the device + current owner it belongs to.
  // TODO(api): returns dummy data regardless of qrCodeToken — swap for the
  // real GET /devices/by-qr/{qrCodeToken} call so Request Handover (E13)
  // renders the actual scanned device instead of the hardcoded dock.
  Future<ApiResult<DeviceByQrResDm>> resolveDeviceByQr(
    String qrCodeToken,
  ) async {
    // --- MOCK ---------------------------------------------------------------
    await Future<void>.delayed(const Duration(milliseconds: 400));
    if (qrCodeToken.isEmpty) {
      return const ApiFailure<DeviceByQrResDm>(
        NetworkException('Unrecognized QR code.'),
      );
    }
    return const ApiSuccess<DeviceByQrResDm>(
      DeviceByQrResDm(
        itemId: 'item_dock_wd22',
        name: 'Dell WD22 Dock',
        categoryName: 'Accessory',
        ownerName: 'Neha Kapoor',
      ),
    );
    // --- REAL (enable when backend exists) ----------------------------------
    // return apiService.resolveDeviceByQr(qrCodeToken);
  }

  /// Raise a handover request against [body.itemId] (Request Handover,
  /// mockup E13).
  Future<ApiResult<HandoverRequestResDm>> createHandoverRequest(
    CreateHandoverRequestReqDm body,
  ) async {
    // --- MOCK ---------------------------------------------------------------
    await Future<void>.delayed(const Duration(milliseconds: 500));
    return ApiSuccess<HandoverRequestResDm>(
      HandoverRequestResDm(
        id: 'ho_${DateTime.now().millisecondsSinceEpoch}',
        itemId: body.itemId,
        borrowerId: CurrentUser.id,
        requestedDurationHours: body.requestedDurationHours,
        note: body.note,
        status: 'requested',
        requestedAt: DateTime.now(),
      ),
    );
    // --- REAL (enable when backend exists) ----------------------------------
    // return apiService.createHandoverRequest(CurrentUser.id, body);
  }
}
