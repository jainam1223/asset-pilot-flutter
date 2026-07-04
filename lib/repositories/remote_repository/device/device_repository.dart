import '../../../models/api_response/api_result.dart';
import '../../../values/app_global/current_user.dart';
import '../api_repository/api_repository.dart';
import '../common/models/item_res_dm.dart';

/// Repository for the signed-in employee's devices.
class DeviceRepository extends Repository {
  DeviceRepository._();

  static final DeviceRepository instance = DeviceRepository._();

  /// Fetch `item` rows currently owned by [CurrentUser.id].
  Future<ApiResult<List<ItemResDm>>> getMyDevices() {
    return apiService.getMyDevices(CurrentUser.id);
  }
}
