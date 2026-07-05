import '../../../models/api_response/api_result.dart';
import '../../../values/app_global/current_user.dart';
import '../api_repository/api_repository.dart';
import '../common/models/item_res_dm.dart';
import 'models/return_device_req_dm.dart';

/// Repository for the signed-in employee's devices.
class DeviceRepository extends Repository {
  DeviceRepository._();

  static final DeviceRepository instance = DeviceRepository._();

  /// Fetch `item` rows currently owned by [CurrentUser.id].
  Future<ApiResult<List<ItemResDm>>> getMyDevices() {
    return apiService.getMyDevices(CurrentUser.id);
  }

  /// Initiate a WFH return with a tracking URL (Return Device mockup E09).
  Future<ApiResult<void>> returnDevice(String itemId, String returnTrackingUrl) {
    return apiService.returnDevice(
      itemId,
      ReturnDeviceReqDm(returnTrackingUrl: returnTrackingUrl),
    );
  }

  /// Instantly complete a non-WFH (office-based) return.
  Future<ApiResult<void>> returnDeviceNonWfh(String itemId) {
    return apiService.returnDeviceNonWfh(itemId);
  }
}
