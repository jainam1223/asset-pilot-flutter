import '../../../models/api_response/api_result.dart';
import '../../../values/enumeration/statuses.dart';
import '../api_repository/api_repository.dart';
import '../common/models/handover_request_res_dm.dart';

/// Repository for admin Handovers audit (mockup A12) — read-only for IT; the
/// workflow itself is peer-to-peer via the employee mobile app.
///
/// Singleton via a private constructor + [instance], per convention.
class HandoverRepository extends Repository {
  HandoverRepository._();

  static final HandoverRepository instance = HandoverRepository._();

  Future<ApiResult<List<HandoverRequestResDm>>> fetchHandoverRequests({
    HandoverStatus? status,
    String? itemId,
  }) {
    return apiService.fetchHandoverRequests(status: status, itemId: itemId);
  }
}
