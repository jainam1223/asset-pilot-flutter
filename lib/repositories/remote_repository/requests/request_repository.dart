import '../../../models/api_response/api_result.dart';
import '../../../values/enumeration/statuses.dart';
import '../api_repository/api_repository.dart';
import 'models/assign_device_req_dm.dart';
import 'models/reject_request_req_dm.dart';
import 'models/request_detail_res_dm.dart';
import 'models/request_summary_res_dm.dart';
import 'models/suggested_device_res_dm.dart';

/// Repository for the admin Request Management + Request Detail & Assign
/// screens (mockups A02, A03).
///
/// Singleton via a private constructor + [instance], per convention. NOTE:
/// this scaffold is not wired to a live backend — every method below returns
/// MOCKED data from an in-memory list. When the API is ready, replace the
/// mock body with the real `apiService` call shown in each method's REAL
/// comment.
class RequestRepository extends Repository {
  RequestRepository._();

  static final RequestRepository instance = RequestRepository._();

  static final List<RequestSummaryResDm> _mockRequests = List.generate(
    18,
    (i) {
      const employees = [
        'Arjun Mehta',
        'Ravi Sharma',
        'Meera Iyer',
        'Neha Kapoor',
        'Karan Shah',
        'Divya Rao',
      ];
      const categories = ['Laptop', 'Monitor', 'Mobile', 'Accessory'];
      const priorities = RequestPriority.values;
      const statuses = RequestStatus.values;
      return RequestSummaryResDm(
        id: '#${2041 - i}',
        employeeName: employees[i % employees.length],
        category: categories[i % categories.length],
        priority: priorities[i % priorities.length],
        status: statuses[i % statuses.length],
        requestedFrom: '15 Jul 2026',
        requestedTo: '15 Jan 2027',
        managerApproved: i % 3 != 1,
      );
    },
  );

  /// List device requests for the admin Request Management table (A02),
  /// filtered by the given params. Currently mocked.
  Future<ApiResult<List<RequestSummaryResDm>>> fetchRequests({
    String statusFilter = 'all',
    RequestPriority? priorityFilter,
    String categoryFilter = 'all',
    String searchQuery = '',
  }) async {
    // --- MOCK -------------------------------------------------------------
    await Future<void>.delayed(const Duration(milliseconds: 400));
    final filtered = _mockRequests.where((r) {
      final matchesStatus =
          statusFilter == 'all' || r.status.name == statusFilter;
      final matchesPriority =
          priorityFilter == null || r.priority == priorityFilter;
      final matchesCategory =
          categoryFilter == 'all' || r.category == categoryFilter;
      final matchesSearch = searchQuery.isEmpty ||
          r.employeeName.toLowerCase().contains(searchQuery.toLowerCase()) ||
          r.id.toLowerCase().contains(searchQuery.toLowerCase());
      return matchesStatus && matchesPriority && matchesCategory && matchesSearch;
    }).toList();
    return ApiSuccess<List<RequestSummaryResDm>>(filtered);
    // --- REAL (enable when backend exists) --------------------------------
    // return apiService.fetchRequests();
  }

  /// Fetch full detail for a single request (A03). Currently mocked.
  Future<ApiResult<RequestDetailResDm>> fetchRequestDetail(String id) async {
    // --- MOCK -------------------------------------------------------------
    await Future<void>.delayed(const Duration(milliseconds: 400));
    final summary = _mockRequests.firstWhere(
      (r) => r.id == id,
      orElse: () => _mockRequests.first,
    );
    return ApiSuccess<RequestDetailResDm>(
      RequestDetailResDm(
        id: summary.id,
        employeeName: summary.employeeName,
        employeeDepartment: 'Engineering',
        category: summary.category,
        priority: summary.priority,
        status: summary.status,
        requestedFrom: summary.requestedFrom,
        requestedTo: summary.requestedTo,
        managerApproved: summary.managerApproved,
        workFromHome: true,
        note: 'Current laptop battery is failing before client demo.',
      ),
    );
    // --- REAL (enable when backend exists) --------------------------------
    // return apiService.fetchRequestDetail(id);
  }

  /// Fetch AI-ranked suggested devices for a request (A03). Currently a
  /// static mock ranking.
  Future<ApiResult<List<SuggestedDeviceResDm>>> fetchSuggestedDevices(
    String requestId,
  ) async {
    // --- MOCK -------------------------------------------------------------
    await Future<void>.delayed(const Duration(milliseconds: 400));
    return const ApiSuccess<List<SuggestedDeviceResDm>>([
      SuggestedDeviceResDm(
        rank: 1,
        deviceId: 'dev_macbook_pro_16',
        name: 'MacBook Pro 16" M3',
        serial: 'C02XL0ANJGH7',
        reason: 'Free since Mar · 0 pending requests — best fit for date range',
        availabilityLabel: 'Free since Mar',
        recommended: true,
      ),
      SuggestedDeviceResDm(
        rank: 2,
        deviceId: 'dev_macbook_pro_14',
        name: 'MacBook Pro 14" M3',
        serial: 'C02YR2K8QF3',
        reason: 'Free since Apr · 1 upcoming request in Feb',
        availabilityLabel: 'Free since Apr',
      ),
      SuggestedDeviceResDm(
        rank: 3,
        deviceId: 'dev_dell_xps_15',
        name: 'Dell XPS 15',
        serial: '7HQ2M4K9',
        reason: 'Free now · Windows alternative',
        availabilityLabel: 'Free now',
      ),
    ]);
    // --- REAL (enable when backend exists) --------------------------------
    // return apiService.fetchSuggestedDevices(requestId);
  }

  /// Assign a device to a request (A03 "Assign Device"). Currently mocked;
  /// mutates the in-memory list so the row reflects `assigned` this session.
  Future<ApiResult<void>> assignDevice(AssignDeviceReqDm body) async {
    // --- MOCK -------------------------------------------------------------
    await Future<void>.delayed(const Duration(milliseconds: 400));
    _updateStatus(body.requestId, RequestStatus.assigned);
    return const ApiSuccess<void>(null);
    // --- REAL (enable when backend exists) --------------------------------
    // return apiService.assignDevice(body.requestId, body);
  }

  /// Reject a request (A03 "Reject"). Currently mocked; mutates the
  /// in-memory list so the row reflects `rejected` this session.
  Future<ApiResult<void>> rejectRequest(RejectRequestReqDm body) async {
    // --- MOCK -------------------------------------------------------------
    await Future<void>.delayed(const Duration(milliseconds: 400));
    _updateStatus(body.requestId, RequestStatus.rejected);
    return const ApiSuccess<void>(null);
    // --- REAL (enable when backend exists) --------------------------------
    // return apiService.rejectRequest(body.requestId, body);
  }

  void _updateStatus(String requestId, RequestStatus status) {
    final index = _mockRequests.indexWhere((r) => r.id == requestId);
    if (index == -1) return;
    _mockRequests[index] = _mockRequests[index].copyWith(status: status);
  }
}
