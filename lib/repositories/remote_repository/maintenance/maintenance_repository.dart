import 'package:intl/intl.dart';

import '../../../models/api_response/api_result.dart';
import '../../../models/api_response/paginated_res_dm.dart';
import '../../../values/enumeration/statuses.dart';
import '../api_repository/api_repository.dart';
import '../inventory/models/change_item_status_req_dm.dart';
import '../inventory/models/inventory_item_res_dm.dart';
import 'models/maintenance_item_res_dm.dart';
import 'models/update_device_status_req_dm.dart';

/// Repository for the admin Maintenance screen (mockup A10).
///
/// There is no dedicated `/admin/maintenance` endpoint — the queue is the
/// items list filtered to repair/maintenance statuses
/// (`GET /admin/items?status=...`), and status changes go through the same
/// `PATCH /admin/items/{id}/status` endpoint Inventory uses. This repository
/// flattens [InventoryItemResDm] into the screen's [MaintenanceItemResDm]
/// shape so the built screen/cubit don't need to change.
///
/// Singleton via a private constructor + [instance], per convention.
class MaintenanceRepository extends Repository {
  MaintenanceRepository._();

  static final MaintenanceRepository instance = MaintenanceRepository._();

  static final _dateFormat = DateFormat('dd MMM yyyy');

  /// List devices currently under repair/maintenance for the admin
  /// Maintenance queue (A10).
  Future<ApiResult<List<MaintenanceItemResDm>>> fetchMaintenanceQueue() async {
    final underRepairResult = await apiService.fetchItems(
      status: DeviceStatus.underRepair,
      pageSize: 100,
    );
    final List<InventoryItemResDm> underRepairItems;
    switch (underRepairResult) {
      case ApiFailure<PaginatedResDm<InventoryItemResDm>>(:final error):
        return ApiFailure<List<MaintenanceItemResDm>>(error);
      case ApiSuccess<PaginatedResDm<InventoryItemResDm>>(:final data):
        underRepairItems = data.items;
    }

    final maintenanceResult = await apiService.fetchItems(
      status: DeviceStatus.maintenance,
      pageSize: 100,
    );
    final List<InventoryItemResDm> maintenanceItems;
    switch (maintenanceResult) {
      case ApiFailure<PaginatedResDm<InventoryItemResDm>>(:final error):
        return ApiFailure<List<MaintenanceItemResDm>>(error);
      case ApiSuccess<PaginatedResDm<InventoryItemResDm>>(:final data):
        maintenanceItems = data.items;
    }

    return ApiSuccess<List<MaintenanceItemResDm>>(
      [...underRepairItems, ...maintenanceItems].map(_toMaintenanceItem).toList(),
    );
  }

  MaintenanceItemResDm _toMaintenanceItem(InventoryItemResDm item) {
    return MaintenanceItemResDm(
      id: item.id,
      name: item.name,
      serial: item.serialNo,
      category: item.categoryName,
      status: item.status,
      setAt: item.updatedAt == null ? '' : _dateFormat.format(item.updatedAt!.toLocal()),
    );
  }

  /// Change a device's status from the Maintenance panel (A10 "Confirm").
  Future<ApiResult<void>> updateDeviceStatus(UpdateDeviceStatusReqDm body) async {
    final result = await apiService.changeItemStatus(
      body.deviceId,
      ChangeItemStatusReqDm(status: body.newStatus, itNote: body.note),
    );
    return result.when(
      success: (_) => const ApiSuccess<void>(null),
      failure: ApiFailure<void>.new,
    );
  }
}
