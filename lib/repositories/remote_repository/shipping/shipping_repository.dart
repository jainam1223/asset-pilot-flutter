import '../../../models/api_response/api_result.dart';
import '../api_repository/api_repository.dart';
import '../requests/models/request_summary_res_dm.dart';
import 'models/complete_return_req_dm.dart';
import 'models/ship_req_dm.dart';

/// Repository for admin WFH Shipping & Returns (mockup A09). No screen is
/// built for this yet — this wires the API layer only, per the current
/// scope.
///
/// Singleton via a private constructor + [instance], per convention.
class ShippingRepository extends Repository {
  ShippingRepository._();

  static final ShippingRepository instance = ShippingRepository._();

  Future<ApiResult<List<RequestSummaryResDm>>> fetchOutboundQueue() {
    return apiService.fetchOutboundShippingQueue();
  }

  Future<ApiResult<List<RequestSummaryResDm>>> fetchReturnQueue() {
    return apiService.fetchReturnQueue();
  }

  Future<ApiResult<void>> shipRequest(String requestId, ShipReqDm body) {
    return apiService.shipRequest(requestId, body);
  }

  Future<ApiResult<void>> confirmDelivery(String requestId) {
    return apiService.confirmDelivery(requestId);
  }

  Future<ApiResult<void>> completeReturn(String requestId, CompleteReturnReqDm body) {
    return apiService.completeReturn(requestId, body);
  }
}
