import '../../../models/api_response/api_result.dart';
import '../../../models/exceptions/app_exception.dart';
import '../../../values/app_global/current_user.dart';
import '../api_repository/api_repository.dart';
import '../common/models/item_category_res_dm.dart';
import '../common/models/item_res_dm.dart';
import '../common/models/request_res_dm.dart';

/// Repository for the signed-in employee's requests (My Requests list +
/// Request Detail, mockup E07).
///
/// NOTE: not wired to a live backend yet — both methods return MOCKED data.
/// TODO(api): replace the mock body with the real [ApiService] call
/// (`getMyRequests` / `getRequestDetail`, both already declared on
/// [ApiService]) once the backend exists. Cubit/UI layers don't change.
class RequestRepository extends Repository {
  RequestRepository._();

  static final RequestRepository instance = RequestRepository._();

  /// Every request raised by [CurrentUser.id], regardless of status.
  Future<ApiResult<List<RequestResDm>>> getMyRequests() async {
    // --- MOCK ---------------------------------------------------------------
    await Future<void>.delayed(const Duration(milliseconds: 500));
    return ApiSuccess<List<RequestResDm>>(_mockRequests);
    // --- REAL (enable when backend exists) ----------------------------------
    // return apiService.getMyRequests(CurrentUser.id);
  }

  /// A single request by [requestId] (Request Detail screen).
  Future<ApiResult<RequestResDm>> getRequestDetail(String requestId) async {
    // --- MOCK ---------------------------------------------------------------
    final match = _mockRequests.where((r) => r.id == requestId).firstOrNull;
    if (match == null) {
      return const ApiFailure<RequestResDm>(
        NetworkException('Request not found.'),
      );
    }
    return ApiSuccess<RequestResDm>(match);
    // --- REAL (enable when backend exists) ----------------------------------
    // return apiService.getRequestDetail(CurrentUser.id, requestId);
  }
}

final _mockRequests = <RequestResDm>[
  RequestResDm(
    id: 'req_2041',
    requesterId: CurrentUser.id,
    categoryId: 'cat_laptop',
    status: 'pending_it_approval',
    priority: 'high',
    isWfh: true,
    requestedFrom: DateTime(2026, 7, 15),
    requestedTo: DateTime(2026, 1, 15),
    requiresMgrApproval: true,
    mgrApprovalStatus: 'approved',
    managerId: 'mgr_priya_n',
    managerDecisionNote:
        "Approved — Arjun's current laptop is 4 years old. Priya N.",
    note: 'Current laptop battery is failing; need replacement before '
        'client demo.',
    category: const ItemCategoryResDm(id: 'cat_laptop', name: 'Laptop'),
  ),
  RequestResDm(
    id: 'req_2040',
    requesterId: CurrentUser.id,
    categoryId: 'cat_monitor',
    status: 'pending_mgr_approval',
    priority: 'medium',
    requestedFrom: DateTime(2026, 7, 1),
    requestedTo: DateTime(2026, 12, 31),
    requiresMgrApproval: true,
    mgrApprovalStatus: 'pending',
    category: const ItemCategoryResDm(id: 'cat_monitor', name: 'Monitor'),
  ),
  RequestResDm(
    id: 'req_2039',
    requesterId: CurrentUser.id,
    categoryId: 'cat_mobile',
    status: 'assigned',
    priority: 'medium',
    requestedFrom: DateTime(2026, 1, 10),
    requestedTo: DateTime(2026, 7, 10),
    assignedFrom: DateTime(2026, 1, 10),
    assignedTo: DateTime(2026, 7, 10),
    assignedItemId: 'item_mobile_01',
    category: const ItemCategoryResDm(id: 'cat_mobile', name: 'Mobile'),
    assignedItem: const ItemResDm(
      id: 'item_mobile_01',
      name: 'iPhone 14',
      status: 'assigned',
    ),
  ),
  RequestResDm(
    id: 'req_2038',
    requesterId: CurrentUser.id,
    categoryId: 'cat_accessory',
    status: 'completed',
    priority: 'low',
    requestedFrom: DateTime(2026, 1, 2),
    requestedTo: DateTime(2026, 4, 2),
    completedAt: DateTime(2026, 4, 2),
    category: const ItemCategoryResDm(id: 'cat_accessory', name: 'Accessory'),
  ),
  RequestResDm(
    id: 'req_2037',
    requesterId: CurrentUser.id,
    categoryId: 'cat_laptop',
    status: 'rejected',
    priority: 'medium',
    requestedFrom: DateTime(2025, 12, 20),
    requestedTo: DateTime(2025, 6, 20),
    rejectedBy: 'manager',
    rejectedReason: 'Existing laptop still within refresh window.',
    category: const ItemCategoryResDm(id: 'cat_laptop', name: 'Laptop'),
  ),
];
