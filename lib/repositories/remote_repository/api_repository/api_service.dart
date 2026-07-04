import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../models/api_response/api_result.dart';
import '../../../utilities/api_utilities/my_call_adapter.dart';
import '../auth/models/login_req_dm.dart';
import '../common/models/item_category_res_dm.dart';
import '../common/models/item_res_dm.dart';
import '../common/models/request_res_dm.dart';
import '../common/models/user_res_dm.dart';
import '../request/models/create_request_req_dm.dart';
import '../inventory/models/device_timeline_event_res_dm.dart';
import '../inventory/models/inventory_detail_res_dm.dart';
import '../inventory/models/inventory_item_res_dm.dart';
import '../requests/models/assign_device_req_dm.dart';
import '../requests/models/reject_request_req_dm.dart';
import '../requests/models/request_detail_res_dm.dart';
import '../requests/models/request_summary_res_dm.dart';
import '../requests/models/suggested_device_res_dm.dart';

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

  /// The signed-in employee's devices — `item` rows currently owned by
  /// them. [userId] stands in for a bearer token until a real auth session
  /// exists.
  @GET('/me/devices')
  Future<ApiResult<List<ItemResDm>>> getMyDevices(
    @Header('X-User-Id') String userId,
  );

  /// The signed-in employee's `request` rows — every request they've raised,
  /// regardless of status (My Requests list, mockup E07 list).
  @GET('/me/requests')
  Future<ApiResult<List<RequestResDm>>> getMyRequests(
    @Header('X-User-Id') String userId,
  );

  /// A single `request` row by id (Request Detail, mockup E07).
  @GET('/me/requests/{requestId}')
  Future<ApiResult<RequestResDm>> getRequestDetail(
    @Header('X-User-Id') String userId,
    @Path('requestId') String requestId,
  );

  /// Active `item_category` rows, for the category picker on Request
  /// Device (mockup E04).
  @GET('/items-category')
  Future<ApiResult<List<ItemCategoryResDm>>> getItemCategories();

  /// Raise a new device request (Request Device, mockup E04).
  @POST('/me/requests')
  Future<ApiResult<RequestResDm>> createRequest(
    @Header('X-User-Id') String userId,
    @Body() CreateRequestReqDm body,
  );

  /// List device requests for the admin Request Management table (A02).
  /// TODO(backend): wire query params for status/priority/category/search
  /// once the endpoint contract is finalized.
  @GET('/admin/requests')
  Future<ApiResult<List<RequestSummaryResDm>>> fetchRequests();

  /// Fetch full detail for a single request (A03).
  @GET('/admin/requests/{id}')
  Future<ApiResult<RequestDetailResDm>> fetchRequestDetail(
    @Path('id') String id,
  );

  /// Fetch AI-ranked suggested devices for a request (A03).
  @GET('/admin/requests/{id}/suggested-devices')
  Future<ApiResult<List<SuggestedDeviceResDm>>> fetchSuggestedDevices(
    @Path('id') String id,
  );

  /// Assign a device to a request (A03 "Assign Device").
  @POST('/admin/requests/{id}/assign')
  Future<ApiResult<void>> assignDevice(
    @Path('id') String id,
    @Body() AssignDeviceReqDm body,
  );

  /// Reject a request (A03 "Reject").
  @POST('/admin/requests/{id}/reject')
  Future<ApiResult<void>> rejectRequest(
    @Path('id') String id,
    @Body() RejectRequestReqDm body,
  );

  /// List inventory devices for the admin Inventory Management table (A04).
  @GET('/admin/inventory')
  Future<ApiResult<List<InventoryItemResDm>>> fetchInventory();

  /// Fetch full detail for a single device (A05).
  @GET('/admin/inventory/{id}')
  Future<ApiResult<InventoryDetailResDm>> fetchInventoryDetail(
    @Path('id') String id,
  );

  /// Fetch the append-only audit-trail timeline for a device (A06).
  @GET('/admin/inventory/{id}/timeline')
  Future<ApiResult<List<DeviceTimelineEventResDm>>> fetchDeviceTimeline(
    @Path('id') String id,
  );
}
