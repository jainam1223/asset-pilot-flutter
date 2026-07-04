import '../../../models/api_response/api_result.dart';
import '../api_repository/api_repository.dart';
import '../common/models/user_res_dm.dart';
import '../inventory/models/client_item_res_dm.dart';
import '../inventory/models/direct_assign_req_dm.dart';
import '../inventory/models/inventory_item_res_dm.dart';
import 'models/client_assignment_req_dm.dart';

/// Repository for the admin Direct Client Assignment screen (mockup A07),
/// wired to the real backend. Maps the real client-available items and
/// employee dropdown onto the screen's expected view models.
///
/// Singleton via a private constructor + [instance], per convention.
class AssignmentRepository extends Repository {
  AssignmentRepository._();

  static final AssignmentRepository instance = AssignmentRepository._();

  /// List client-owned devices eligible for direct assignment (A07).
  Future<ApiResult<List<InventoryItemResDm>>> fetchClientDevices() async {
    final result = await apiService.fetchClientAvailableItems();
    return result.when(
      success: (items) => ApiSuccess<List<InventoryItemResDm>>(
        items.map(_toInventoryItem).toList(growable: false),
      ),
      failure: ApiFailure<List<InventoryItemResDm>>.new,
    );
  }

  InventoryItemResDm _toInventoryItem(ClientItemResDm item) {
    return InventoryItemResDm(
      id: item.id,
      name: item.name,
      serialNo: item.serialNo,
      clientName: item.clientName,
      categoryName: item.categoryName,
    );
  }

  /// List employees eligible to receive a direct client assignment (A07).
  Future<ApiResult<List<UserResDm>>> fetchEmployees() async {
    final result = await apiService.fetchEmployeeDropdown();
    return result.when(
      success: (options) => ApiSuccess<List<UserResDm>>(
        options
            .map((o) => UserResDm(id: o.id, name: o.name, role: 'employee'))
            .toList(growable: false),
      ),
      failure: ApiFailure<List<UserResDm>>.new,
    );
  }

  /// Directly assign a client-owned device to an employee, bypassing the
  /// request/approval lifecycle.
  Future<ApiResult<void>> assignToClient(ClientAssignmentReqDm request) {
    return apiService.directAssignItem(
      request.deviceId,
      DirectAssignReqDm(
        employeeId: request.employeeId,
        assignedFrom: DateTime.parse(request.assignedFrom),
        assignedTo: DateTime.parse(request.assignedTo),
        note: request.notes,
      ),
    );
  }
}
