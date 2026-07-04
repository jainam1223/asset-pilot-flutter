import '../../../models/api_response/api_result.dart';
import '../../../values/enumeration/statuses.dart';
import '../api_repository/api_repository.dart';
import 'models/maintenance_item_res_dm.dart';
import 'models/update_device_status_req_dm.dart';

/// Repository for the admin Maintenance screen (mockup A10).
///
/// Singleton via a private constructor + [instance], per convention. NOTE:
/// this scaffold is not wired to a live backend — every method below returns
/// MOCKED data from an in-memory list. When the API is ready, replace the
/// mock body with the real `apiService` call shown in each method's REAL
/// comment.
class MaintenanceRepository extends Repository {
  MaintenanceRepository._();

  static final MaintenanceRepository instance = MaintenanceRepository._();

  static final List<MaintenanceItemResDm> _mockItems = [
    const MaintenanceItemResDm(
      id: 'dev_2231',
      name: 'Logitech MX Master 3S',
      serial: 'LG-2231-MX',
      category: 'Accessory',
      status: DeviceStatus.underRepair,
      setAt: '28 Jun 2026',
    ),
    const MaintenanceItemResDm(
      id: 'dev_2419',
      name: 'Dell UltraSharp U2419H',
      serial: 'DU-2419-H',
      category: 'Monitor',
      status: DeviceStatus.underRepair,
      setAt: '21 Jun 2026',
    ),
    const MaintenanceItemResDm(
      id: 'dev_882',
      name: 'MacBook Air 13" M2',
      serial: 'MBA-13-882',
      category: 'Laptop',
      status: DeviceStatus.maintenance,
      setAt: '15 Jun 2026',
    ),
  ];

  /// List devices currently under repair/maintenance for the admin
  /// Maintenance queue (A10). Currently mocked.
  Future<ApiResult<List<MaintenanceItemResDm>>> fetchMaintenanceQueue() async {
    // --- MOCK -------------------------------------------------------------
    await Future<void>.delayed(const Duration(milliseconds: 400));
    return ApiSuccess<List<MaintenanceItemResDm>>(List.of(_mockItems));
    // --- REAL (enable when backend exists) --------------------------------
    // return apiService.fetchMaintenanceQueue();
  }

  /// Change a device's status from the Maintenance panel (A10 "Confirm").
  /// Currently mocked; mutates the in-memory list — the device leaves the
  /// queue once its new status is neither `underRepair` nor `maintenance`.
  Future<ApiResult<void>> updateDeviceStatus(
    UpdateDeviceStatusReqDm body,
  ) async {
    // --- MOCK -------------------------------------------------------------
    await Future<void>.delayed(const Duration(milliseconds: 400));
    final index = _mockItems.indexWhere((item) => item.id == body.deviceId);
    if (index != -1) {
      final stillInQueue = body.newStatus == DeviceStatus.underRepair ||
          body.newStatus == DeviceStatus.maintenance;
      if (stillInQueue) {
        _mockItems[index] = _mockItems[index].copyWith(
          status: body.newStatus,
        );
      } else {
        _mockItems.removeAt(index);
      }
    }
    return const ApiSuccess<void>(null);
    // --- REAL (enable when backend exists) --------------------------------
    // return apiService.updateDeviceStatus(body.deviceId, body);
  }
}
