import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../models/api_response/api_result.dart';
import '../../../utilities/api_utilities/my_call_adapter.dart';
import '../auth/models/login_req_dm.dart';
import '../common/models/handover_request_res_dm.dart';
import '../common/models/item_category_res_dm.dart';
import '../common/models/item_res_dm.dart';
import '../common/models/request_res_dm.dart';
import '../common/models/user_res_dm.dart';
import '../extension_requests/models/decide_extension_req_dm.dart';
import '../extension_requests/models/extension_request_summary_res_dm.dart';
import '../handover/models/create_handover_request_req_dm.dart';
import '../handover/models/device_handover_lookup_res_dm.dart';
import '../inventory/models/device_timeline_event_res_dm.dart';
import '../inventory/models/inventory_detail_res_dm.dart';
import '../inventory/models/inventory_item_res_dm.dart';
import '../maintenance/models/maintenance_item_res_dm.dart';
import '../maintenance/models/update_device_status_req_dm.dart';
import '../request/models/create_request_req_dm.dart';
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

  /// Authenticate a user with email.
  @POST('/login')
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

  /// Device detail + handover lookup for a single owned device (Device
  /// Detail mockup E03, Request Handover pre-fill mockup E13).
  @GET('/me/devices/{itemId}')
  Future<ApiResult<DeviceHandoverLookupResDm>> getDeviceHandoverLookup(
    @Path('itemId') String itemId,
  );

  /// Raise a new handover request (Request Handover, mockup E13).
  @POST('/me/handover-requests')
  Future<ApiResult<HandoverRequestResDm>> createHandoverRequest(
    @Header('X-User-Id') String userId,
    @Body() CreateHandoverRequestReqDm body,
  );

  /// List devices under repair/maintenance for the admin Maintenance queue
  /// (A10).
  @GET('/admin/maintenance')
  Future<ApiResult<List<MaintenanceItemResDm>>> fetchMaintenanceQueue();

  /// Change a device's status from the Maintenance screen (A10 "Confirm").
  @POST('/admin/maintenance/{deviceId}/status')
  Future<ApiResult<void>> updateDeviceStatus(
    @Path('deviceId') String deviceId,
    @Body() UpdateDeviceStatusReqDm body,
  );

  /// List extension requests for the admin Extension Requests table (A11).
  @GET('/admin/extension-requests')
  Future<ApiResult<List<ExtensionRequestSummaryResDm>>>
  fetchExtensionRequests();

  /// Approve or reject an extension request (A11 "Approve"/"Reject").
  @POST('/admin/extension-requests/{id}/decide')
  Future<ApiResult<void>> decideExtension(
    @Path('id') String id,
    @Body() DecideExtensionReqDm body,
  );
}
