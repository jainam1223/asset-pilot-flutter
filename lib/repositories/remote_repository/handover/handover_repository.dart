import '../../../models/api_response/api_result.dart';
import '../../../values/app_global/current_user.dart';
import '../api_repository/api_repository.dart';
import '../common/models/handover_request_res_dm.dart';
import 'models/create_handover_request_req_dm.dart';
import 'models/device_handover_lookup_res_dm.dart';

/// Repository for the Handover flow (Scan/Pick + Request Handover,
/// mockups E12/E13). Wired to the live backend.
class HandoverRepository extends Repository {
  HandoverRepository._();

  static final HandoverRepository instance = HandoverRepository._();

  /// Device detail + handover lookup for [itemId] (Request Handover
  /// pre-fill, mockup E13) — resolves the device scanned/picked in
  /// Scan/Pick (E12) into its full detail plus any open handover requests.
  Future<ApiResult<DeviceHandoverLookupResDm>> getDeviceHandoverLookup(
    String itemId,
  ) async {
    return apiService.getDeviceHandoverLookup(itemId);
  }

  /// Raise a handover request against [body.itemId] (Request Handover,
  /// mockup E13).
  Future<ApiResult<HandoverRequestResDm>> createHandoverRequest(
    CreateHandoverRequestReqDm body,
  ) async {
    return apiService.createHandoverRequest(CurrentUser.id, body);
  }
}
