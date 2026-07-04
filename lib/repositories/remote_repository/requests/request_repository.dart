import '../../../models/api_response/api_result.dart';
import '../../../models/api_response/paginated_res_dm.dart';
import '../../../values/enumeration/statuses.dart';
import '../api_repository/api_repository.dart';
import 'models/assign_device_req_dm.dart';
import 'models/booking_range_req_dm.dart';
import 'models/cancel_request_req_dm.dart';
import 'models/escalate_to_manager_req_dm.dart';
import 'models/reject_request_req_dm.dart';
import 'models/request_detail_res_dm.dart';
import 'models/request_summary_res_dm.dart';
import 'models/suggested_device_res_dm.dart';

/// Repository for the admin Request Management + Request Detail & Assign
/// screens (mockups A02, A03), plus request lifecycle actions used across
/// other admin screens (IT approvals, shipping/returns).
///
/// Singleton via a private constructor + [instance], per convention.
class RequestRepository extends Repository {
  RequestRepository._();

  static final RequestRepository instance = RequestRepository._();

  /// List device requests for the admin Request Management table (A02),
  /// server-side paginated + filtered.
  Future<ApiResult<PaginatedResDm<RequestSummaryResDm>>> fetchRequests({
    RequestStatus? status,
    String? categoryId,
    RequestPriority? priority,
    DateTime? requestedFrom,
    DateTime? requestedTo,
    String? search,
    int page = 1,
    int pageSize = 10,
  }) {
    return apiService.fetchRequests(
      status: status,
      categoryId: categoryId,
      priority: priority,
      requestedFrom: requestedFrom,
      requestedTo: requestedTo,
      search: search,
      page: page,
      pageSize: pageSize,
    );
  }

  /// Fetch full detail for a single request (A03).
  Future<ApiResult<RequestDetailResDm>> fetchRequestDetail(String id) {
    return apiService.fetchRequestDetail(id);
  }

  /// Fetch available devices for a request (A03 "Suggested Devices").
  Future<ApiResult<List<SuggestedDeviceResDm>>> fetchSuggestedDevices(
    String requestId,
  ) {
    return apiService.fetchSuggestedDevices(requestId);
  }

  /// Assign a device to a request (A03 "Assign Device").
  Future<ApiResult<void>> assignDevice(String requestId, AssignDeviceReqDm body) {
    return apiService.assignDevice(requestId, body);
  }

  /// Reject a request (A03 "Reject").
  Future<ApiResult<void>> rejectRequest(String requestId, RejectRequestReqDm body) {
    return apiService.rejectRequest(requestId, body);
  }

  /// Cancel a pending request.
  Future<ApiResult<void>> cancelRequest(String requestId, CancelRequestReqDm body) {
    return apiService.cancelRequest(requestId, body);
  }

  /// Late-escalate a request to manager approval.
  Future<ApiResult<void>> escalateToManager(
    String requestId,
    EscalateToManagerReqDm body,
  ) {
    return apiService.escalateToManager(requestId, body);
  }

  /// Nudge a conflicting booking's date range (A03 calendar overlay).
  Future<ApiResult<void>> adjustBookingRange(
    String requestId,
    BookingRangeReqDm body,
  ) {
    return apiService.adjustBookingRange(requestId, body);
  }

  /// The IT Approval queue — requests awaiting IT action.
  Future<ApiResult<PaginatedResDm<RequestSummaryResDm>>> fetchItApprovals({
    int page = 1,
    int pageSize = 10,
  }) {
    return apiService.fetchItApprovals(page: page, pageSize: pageSize);
  }
}
