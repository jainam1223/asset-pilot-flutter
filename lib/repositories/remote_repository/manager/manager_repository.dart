import '../../../models/api_response/api_result.dart';
import '../../../models/exceptions/app_exception.dart';
import '../../../values/enumeration/statuses.dart';
import '../api_repository/api_repository.dart';
import '../common/models/item_category_res_dm.dart';
import '../common/models/request_res_dm.dart';
import '../common/models/user_res_dm.dart';
import 'models/approve_request_req_dm.dart';
import 'models/employee_device_res_dm.dart';
import 'models/pending_approval_res_dm.dart';
import 'models/reject_manager_request_req_dm.dart';
import 'models/team_device_res_dm.dart';

/// Repository backing the Manager mobile screens (mockups M01, M02, M04).
///
/// Singleton via a private constructor + [instance], per convention.
/// [getPendingApprovals]/[decideApproval]/[getTeamDevices] are wired to
/// their live endpoints; [getApprovalDetail] remains MOCKED until its
/// backend contract exists.
class ManagerRepository extends Repository {
  ManagerRepository._();

  static final ManagerRepository instance = ManagerRepository._();

  static final List<RequestResDm> _mockApprovals = [
    RequestResDm(
      id: 'req_2041',
      requesterId: 'u_arjun',
      categoryId: 'cat_laptop',
      priority: 'high',
      requestedFrom: DateTime(2026, 7, 15),
      requestedTo: DateTime(2026, 1, 15),
      note:
          "Current laptop battery is failing and won't hold charge through "
          'my client demo next week. Requesting a replacement.',
      mgrApprovalStatus: 'pending',
      requester: const UserResDm(id: 'u_arjun', name: 'Arjun Mehta'),
      category: const ItemCategoryResDm(id: 'cat_laptop', name: 'Laptop'),
    ),
    RequestResDm(
      id: 'req_2042',
      requesterId: 'u_ravi',
      categoryId: 'cat_monitor',
      priority: 'medium',
      requestedFrom: DateTime(2026, 8, 1),
      requestedTo: DateTime(2026, 1, 31),
      mgrApprovalStatus: 'pending',
      requester: const UserResDm(id: 'u_ravi', name: 'Ravi Sharma'),
      category: const ItemCategoryResDm(id: 'cat_monitor', name: 'Monitor'),
    ),
    RequestResDm(
      id: 'req_2043',
      requesterId: 'u_meera',
      categoryId: 'cat_mobile',
      priority: 'low',
      requestedFrom: DateTime(2026, 8, 10),
      requestedTo: DateTime(2026, 2, 10),
      mgrApprovalStatus: 'pending',
      requester: const UserResDm(id: 'u_meera', name: 'Meera Iyer'),
      category: const ItemCategoryResDm(id: 'cat_mobile', name: 'Mobile'),
    ),
  ];

  /// Pending approvals awaiting this manager's decision (M01). Wired to the
  /// live `/manager/approvals` endpoint.
  Future<ApiResult<List<RequestResDm>>> getPendingApprovals() =>
      apiService.getPendingApprovals();

  /// Single approval detail (M02). Currently mocked — no detail endpoint
  /// exists yet, so this looks up the row from the last-fetched list.
  Future<ApiResult<RequestResDm>> getApprovalDetail(String requestId) async {
    // --- MOCK ---------------------------------------------------------------
    await Future<void>.delayed(const Duration(milliseconds: 300));
    final match = _mockApprovals.where((a) => a.id == requestId).firstOrNull;
    if (match == null) {
      return const ApiFailure<RequestResDm>(
        NetworkException('Approval not found.'),
      );
    }
    return ApiSuccess<RequestResDm>(match);
    // --- REAL (enable when backend exists) ----------------------------------
    // return apiService.getApprovalDetail(requestId);
  }

  /// Approve or reject a device request (M02 "Approve"/"Reject"). Wired to
  /// the live `/manager/requests/{requestId}/approve|reject` endpoints.
  Future<ApiResult<void>> decideApproval({
    required String requestId,
    required MgrApprovalStatus decision,
    String? note,
  }) async {
    final result = switch (decision) {
      MgrApprovalStatus.approved => await apiService.approveRequest(
        requestId,
        ApproveRequestReqDm(managerDecisionNote: note),
      ),
      MgrApprovalStatus.rejected => await apiService.rejectManagerRequest(
        requestId,
        RejectManagerRequestReqDm(managerDecisionNote: note),
      ),
      MgrApprovalStatus.notRequired || MgrApprovalStatus.pending =>
        throw ArgumentError.value(decision, 'decision', 'Not a decision'),
    };
    return switch (result) {
      ApiSuccess() => const ApiSuccess<void>(null),
      ApiFailure(:final error) => ApiFailure<void>(error),
    };
  }

  /// Every direct report + their requests, for the read-only Team Devices
  /// list (M04). Wired to the live `/manager/employee-devices` endpoint.
  Future<ApiResult<List<EmployeeDeviceResDm>>> getTeamDevices() =>
      apiService.getEmployeeDevices();
}
