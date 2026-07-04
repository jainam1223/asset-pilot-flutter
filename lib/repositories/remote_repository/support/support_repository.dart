import '../../../models/api_response/api_result.dart';
import '../../../values/enumeration/statuses.dart';
import '../api_repository/api_repository.dart';
import '../common/models/support_request_res_dm.dart';
import 'models/resolve_support_req_dm.dart';
import 'models/support_request_detail_res_dm.dart';

/// Repository for admin Support Requests (mockup A08). No screen is built
/// for this yet — this wires the API layer only, per the current scope.
///
/// Singleton via a private constructor + [instance], per convention.
class SupportRepository extends Repository {
  SupportRepository._();

  static final SupportRepository instance = SupportRepository._();

  Future<ApiResult<List<SupportRequestResDm>>> fetchSupportRequests({
    SupportStatus? status,
    SupportType? type,
    String? itemId,
  }) {
    return apiService.fetchSupportRequests(status: status, type: type, itemId: itemId);
  }

  Future<ApiResult<SupportRequestDetailResDm>> fetchSupportRequestDetail(String id) {
    return apiService.fetchSupportRequestDetail(id);
  }

  Future<ApiResult<void>> startSupportRequest(String id) {
    return apiService.startSupportRequest(id);
  }

  Future<ApiResult<void>> resolveSupportRequest(String id, ResolveSupportReqDm body) {
    return apiService.resolveSupportRequest(id, body);
  }
}
