import '../../../models/api_response/api_result.dart';
import '../../../values/enumeration/statuses.dart';
import '../api_repository/api_repository.dart';
import '../common/models/user_res_dm.dart';
import '../inventory/inventory_repository.dart';
import '../inventory/models/inventory_item_res_dm.dart';
import 'models/client_assignment_req_dm.dart';

/// Repository for the admin Direct Client Assignment screen (mockup A07).
///
/// Singleton via a private constructor + [instance], per convention. NOTE:
/// this scaffold is not wired to a live backend — every method below returns
/// MOCKED data. When the API is ready, replace the mock body with the real
/// `apiService` call shown in each method's REAL comment.
class AssignmentRepository extends Repository {
  AssignmentRepository._();

  static final AssignmentRepository instance = AssignmentRepository._();

  /// List client-owned devices eligible for direct assignment (A07).
  /// Reuses [InventoryRepository]'s mock inventory rather than duplicating a
  /// second fake dataset, filtered to [OwnerType.client]. Currently mocked.
  Future<ApiResult<List<InventoryItemResDm>>> fetchClientDevices() async {
    // --- MOCK -------------------------------------------------------------
    final result = await InventoryRepository.instance.fetchInventory();
    return result.when(
      success: (items) => ApiSuccess<List<InventoryItemResDm>>(
        items.where((item) => item.ownerType == OwnerType.client).toList(),
      ),
      failure: (error) => ApiFailure<List<InventoryItemResDm>>(error),
    );
    // --- REAL (enable when backend exists) --------------------------------
    // return apiService.fetchClientDevices();
  }

  /// List employees eligible to receive a direct client assignment (A07).
  /// Currently mocked.
  Future<ApiResult<List<UserResDm>>> fetchEmployees() async {
    // --- MOCK -------------------------------------------------------------
    await Future<void>.delayed(const Duration(milliseconds: 300));
    return const ApiSuccess<List<UserResDm>>([
      UserResDm(id: 'u_001', name: 'Arjun Mehta', role: 'employee'),
      UserResDm(id: 'u_002', name: 'Priya Sharma', role: 'employee'),
      UserResDm(id: 'u_003', name: 'Rohan Gupta', role: 'employee'),
      UserResDm(id: 'u_004', name: 'Sneha Patil', role: 'manager'),
      UserResDm(id: 'u_005', name: 'Vikram Singh', role: 'employee'),
    ]);
    // --- REAL (enable when backend exists) --------------------------------
    // return apiService.fetchEmployees();
  }

  /// Directly assign a client-owned device to an employee, bypassing the
  /// request/approval lifecycle. Currently mocked.
  Future<ApiResult<void>> assignToClient(ClientAssignmentReqDm request) async {
    // --- MOCK -------------------------------------------------------------
    await Future<void>.delayed(const Duration(milliseconds: 400));
    return const ApiSuccess<void>(null);
    // --- REAL (enable when backend exists) --------------------------------
    // return apiService.assignToClient(request);
  }
}
