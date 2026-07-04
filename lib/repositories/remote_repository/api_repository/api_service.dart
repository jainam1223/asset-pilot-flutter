import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../models/api_response/api_result.dart';
import '../../../utilities/api_utilities/my_call_adapter.dart';
import '../auth/models/login_req_dm.dart';
import '../auth/models/user_res_dm.dart';
import '../device/models/my_device_res_dm.dart';

part 'api_service.g.dart';

/// Centralized Retrofit service — ALL backend endpoints are declared here.
///
/// Endpoints return `Future<ApiResult<T>>`; the [ApiResultCallAdapter] unwraps
/// the `APIResponse` envelope and converts success/error into ApiSuccess/
/// ApiFailure. New endpoints are added here as modules are built.
@RestApi(callAdapter: ApiResultCallAdapter)
abstract class ApiService {
  factory ApiService(Dio dio, {String? baseUrl}) = _ApiService;

  /// Authenticate a user with email + password.
  @POST('/auth/login')
  Future<ApiResult<UserResDm>> login(@Body() LoginReqDm body);

  /// The signed-in employee's devices — active `request` rows (joined with
  /// their assigned `item`). [userId] stands in for a bearer token until a
  /// real auth session exists.
  @GET('/me/devices')
  Future<ApiResult<List<MyDeviceResDm>>> getMyDevices(
    @Header('X-User-Id') String userId,
  );
}
