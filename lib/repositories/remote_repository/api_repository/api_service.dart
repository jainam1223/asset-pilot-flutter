import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../models/api_response/api_result.dart';
import '../../../models/api_response/paginated_res_dm.dart';
import '../../../utilities/api_utilities/my_call_adapter.dart';
import '../auth/models/login_req_dm.dart';
import '../auth/models/login_res_dm.dart';
import '../auth/models/refresh_req_dm.dart';
import '../common/models/handover_request_res_dm.dart';
import '../common/models/item_category_res_dm.dart';
import '../common/models/item_res_dm.dart';
import '../common/models/request_res_dm.dart';
import '../common/models/support_request_res_dm.dart';
import '../common/models/user_res_dm.dart';
import '../dashboard/models/dashboard_summary_res_dm.dart';
import '../dashboard/models/open_support_snapshot_res_dm.dart';
import '../dashboard/models/recent_request_res_dm.dart';
import '../device/models/return_device_req_dm.dart';
import '../dropdowns/models/dropdown_option_res_dm.dart';
import '../extension_requests/models/decide_extension_req_dm.dart';
import '../extension_requests/models/extension_request_detail_res_dm.dart';
import '../extension_requests/models/extension_request_summary_res_dm.dart';
import '../handover/models/create_handover_request_req_dm.dart';
import '../handover/models/device_handover_lookup_res_dm.dart';
import '../inventory/models/change_item_status_req_dm.dart';
import '../inventory/models/client_item_res_dm.dart';
import '../inventory/models/create_item_req_dm.dart';
import '../inventory/models/device_timeline_event_res_dm.dart';
import '../inventory/models/direct_assign_req_dm.dart';
import '../inventory/models/inventory_item_res_dm.dart';
import '../inventory/models/item_booking_res_dm.dart';
import '../inventory/models/item_detail_raw_res_dm.dart';
import '../inventory/models/update_item_req_dm.dart';
import '../manager/models/approve_request_req_dm.dart';
import '../manager/models/employee_device_res_dm.dart';
import '../manager/models/reject_manager_request_req_dm.dart';
import '../request/models/create_request_req_dm.dart';
import '../requests/models/assign_device_req_dm.dart';
import '../requests/models/booking_range_req_dm.dart';
import '../requests/models/cancel_request_req_dm.dart';
import '../requests/models/escalate_to_manager_req_dm.dart';
import '../requests/models/reject_request_req_dm.dart';
import '../requests/models/request_detail_res_dm.dart';
import '../requests/models/request_summary_res_dm.dart';
import '../requests/models/suggested_device_res_dm.dart';
import '../shipping/models/complete_return_req_dm.dart';
import '../shipping/models/ship_req_dm.dart';
import '../support/models/resolve_support_req_dm.dart';
import '../support/models/support_request_detail_res_dm.dart';
import '../users/models/change_role_req_dm.dart';
import '../users/models/create_user_req_dm.dart';

part 'api_service.g.dart';

/// Centralized Retrofit service — ALL backend endpoints are declared here.
///
/// Endpoints return `Future<ApiResult<T>>`; the [ApiResultCallAdapter] unwraps
/// the response envelope and converts success/error into ApiSuccess/
/// ApiFailure. [FlavorConfig.baseUrl] already carries the `/api/v1/` prefix,
/// so paths below read as `auth/...` / `admin/...`.
@RestApi(callAdapter: ApiResultCallAdapter)
abstract class ApiService {
  factory ApiService(Dio dio, {String? baseUrl}) = _ApiService;

  // ---------------------------------------------------------------------
  // Auth
  // ---------------------------------------------------------------------

  /// Admin authentication — email + password, returns a token pair only.
  /// The user profile is fetched separately via [getMe]. Used by the IT
  /// Admin login flow (bearer-token auth against the live backend).
  @POST('auth/login')
  Future<ApiResult<LoginResDm>> adminLogin(@Body() LoginReqDm body);

  /// The signed-in user's profile.
  @GET('auth/me')
  Future<ApiResult<UserResDm>> getMe();

  /// Exchange a refresh token for a new token pair.
  @POST('auth/refresh')
  Future<ApiResult<LoginResDm>> refresh(@Body() RefreshReqDm body);

  /// Mobile authentication with email. The backend resolves role/manager
  /// from the user row — there's no client-supplied role flag.
  @POST('/login')
  /// Authenticate a user with email.
  @POST('/login')
  Future<ApiResult<UserResDm>> login(@Body() LoginReqDm body);

  // ---------------------------------------------------------------------
  // Mobile / employee
  // ---------------------------------------------------------------------

  /// The signed-in employee's devices — `item` rows currently owned by
  /// them. [userId] stands in for a bearer token until a real employee
  /// auth session exists.
  @GET('/me/devices')
  Future<ApiResult<List<ItemResDm>>> getMyDevices(
    @Header('X-User-Id') String userId,
  );

  /// Initiate a WFH return — the device stays assigned to the employee
  /// until IT confirms receipt (Return Device mockup E09).
  @POST('/me/devices/{itemId}/return')
  Future<ApiResult<void>> returnDevice(
    @Path('itemId') String itemId,
    @Body() ReturnDeviceReqDm body,
  );

  /// Instantly complete a non-WFH (office-based) return — no tracking URL,
  /// device goes straight back to available (Device Detail mockup E03).
  @POST('/me/devices/{itemId}/return-non-wfh')
  Future<ApiResult<void>> returnDeviceNonWfh(@Path('itemId') String itemId);

  /// The signed-in employee's `request` rows — every request they've raised,
  /// regardless of status (My Requests list, mockup E07 list).
  @GET('me/requests')
  Future<ApiResult<List<RequestResDm>>> getMyRequests(
    @Header('X-User-Id') String userId,
  );

  /// A single `request` row by id (Request Detail, mockup E07).
  @GET('me/requests/{requestId}')
  Future<ApiResult<RequestResDm>> getRequestDetail(
    @Header('X-User-Id') String userId,
    @Path('requestId') String requestId,
  );

  /// Active `item_category` rows, for the category picker on Request
  /// Device (mockup E04).
  @GET('/items-category')
  Future<ApiResult<List<ItemCategoryResDm>>> getItemCategories();

  /// Raise a new device request (Request Device, mockup E04).
  @POST('me/requests')
  Future<ApiResult<RequestResDm>> createRequest(
    @Header('X-User-Id') String userId,
    @Body() CreateRequestReqDm body,
  );

  // ---------------------------------------------------------------------
  // Dashboard (A01)
  // ---------------------------------------------------------------------

  @GET('admin/dashboard/summary')
  Future<ApiResult<DashboardSummaryResDm>> fetchDashboardSummary();

  @GET('admin/dashboard/recent-requests')
  Future<ApiResult<List<RecentRequestResDm>>> fetchRecentRequests({
    @Query('limit') int? limit,
  });

  @GET('admin/dashboard/open-support')
  Future<ApiResult<List<OpenSupportSnapshotResDm>>> fetchOpenSupportSnapshot({
    @Query('limit') int? limit,
  });

  // ---------------------------------------------------------------------
  // Requests (A02, A03) + IT Approvals
  // ---------------------------------------------------------------------

  /// List device requests for the admin Request Management table (A02) —
  /// server-side paginated + filtered.
  @GET('admin/requests')
  Future<ApiResult<PaginatedResDm<RequestSummaryResDm>>> fetchRequests({
    @Query('status') String? status,
    @Query('category_id') String? categoryId,
    @Query('priority') String? priority,
    @Query('requested_from') DateTime? requestedFrom,
    @Query('requested_to') DateTime? requestedTo,
    @Query('search') String? search,
    @Query('page') int? page,
    @Query('page_size') int? pageSize,
    @Query('sort_by') String? sortBy,
    @Query('sort_order') String? sortOrder,
  });

  /// The IT Approval queue — requests awaiting IT action.
  @GET('admin/it/approvals')
  Future<ApiResult<PaginatedResDm<RequestSummaryResDm>>> fetchItApprovals({
    @Query('page') int? page,
    @Query('page_size') int? pageSize,
    @Query('sort_by') String? sortBy,
    @Query('sort_order') String? sortOrder,
  });

  /// Fetch full detail for a single request (A03).
  @GET('admin/requests/{id}')
  Future<ApiResult<RequestDetailResDm>> fetchRequestDetail(
    @Path('id') String id,
  );

  /// Fetch ranked available devices for a request (A03 "Suggested Devices").
  @GET('admin/requests/{id}/suggested-devices')
  Future<ApiResult<List<SuggestedDeviceResDm>>> fetchSuggestedDevices(
    @Path('id') String id,
  );

  /// The existing bookings on a device — feeds the A03 calendar overlay.
  @GET('admin/items/{itemId}/bookings')
  Future<ApiResult<List<ItemBookingResDm>>> fetchItemBookings(
    @Path('itemId') String itemId,
  );

  /// Nudge a conflicting booking's date range (A03 calendar overlay).
  @PATCH('admin/requests/{id}/booking-range')
  Future<ApiResult<void>> adjustBookingRange(
    @Path('id') String id,
    @Body() BookingRangeReqDm body,
  );

  /// Assign a device to a request (A03 "Assign Device").
  @POST('admin/requests/{id}/assign')
  Future<ApiResult<void>> assignDevice(
    @Path('id') String id,
    @Body() AssignDeviceReqDm body,
  );

  /// Reject a request (A03 "Reject").
  @PATCH('admin/requests/{id}/reject')
  Future<ApiResult<void>> rejectRequest(
    @Path('id') String id,
    @Body() RejectRequestReqDm body,
  );

  /// Cancel a pending request (e.g. its category's only devices went
  /// lost/retired before assignment).
  @PATCH('admin/requests/{id}/cancel')
  Future<ApiResult<void>> cancelRequest(
    @Path('id') String id,
    @Body() CancelRequestReqDm body,
  );

  /// Late-escalate a request to manager approval.
  @PATCH('admin/requests/{id}/escalate-to-manager')
  Future<ApiResult<void>> escalateToManager(
    @Path('id') String id,
    @Body() EscalateToManagerReqDm body,
  );

  // ---------------------------------------------------------------------
  // Direct Client Device Assignment (A07)
  // ---------------------------------------------------------------------

  @GET('admin/items/client-available')
  Future<ApiResult<List<ClientItemResDm>>> fetchClientAvailableItems({
    @Query('category_id') String? categoryId,
    @Query('search') String? search,
  });

  @POST('admin/items/{itemId}/direct-assign')
  Future<ApiResult<void>> directAssignItem(
    @Path('itemId') String itemId,
    @Body() DirectAssignReqDm body,
  );

  // ---------------------------------------------------------------------
  // Inventory / Items (A04, A05, A06, A10)
  // ---------------------------------------------------------------------

  /// List inventory devices for the admin Inventory Management table (A04)
  /// — server-side paginated + filtered. Also backs the Maintenance queue
  /// (A10) by filtering `status`.
  @GET('admin/items')
  Future<ApiResult<PaginatedResDm<InventoryItemResDm>>> fetchItems({
    @Query('category_id') String? categoryId,
    @Query('status') String? status,
    @Query('owner_type') String? ownerType,
    @Query('search') String? search,
    @Query('page') int? page,
    @Query('page_size') int? pageSize,
    @Query('sort_by') String? sortBy,
    @Query('sort_order') String? sortOrder,
  });

  @POST('admin/items')
  Future<ApiResult<InventoryItemResDm>> createItem(
    @Body() CreateItemReqDm body,
  );

  /// Fetch full nested detail for a single device (A05) — `{ item, category,
  /// current_owner, current_request, open_support[], active_handover }`.
  @GET('admin/items/{id}')
  Future<ApiResult<ItemDetailRawResDm>> fetchItemDetail(@Path('id') String id);

  @PATCH('admin/items/{id}')
  Future<ApiResult<InventoryItemResDm>> updateItem(
    @Path('id') String id,
    @Body() UpdateItemReqDm body,
  );

  /// Change a device's status (A10 "Confirm", and generic admin status
  /// transitions).
  @PATCH('admin/items/{id}/status')
  Future<ApiResult<InventoryItemResDm>> changeItemStatus(
    @Path('id') String id,
    @Body() ChangeItemStatusReqDm body,
  );

  /// Fetch the append-only audit-trail timeline for a device (A06).
  @GET('admin/items/{id}/timeline')
  Future<ApiResult<List<DeviceTimelineEventResDm>>> fetchDeviceTimeline(
    @Path('id') String id, {
    @Query('milestones_only') bool? milestonesOnly,
  });

  // ---------------------------------------------------------------------
  // Support Requests (A08)
  // ---------------------------------------------------------------------

  @GET('admin/support-requests')
  Future<ApiResult<List<SupportRequestResDm>>> fetchSupportRequests({
    @Query('status') String? status,
    @Query('type') String? type,
    @Query('item_id') String? itemId,
  });

  @GET('admin/support-requests/{id}')
  Future<ApiResult<SupportRequestDetailResDm>> fetchSupportRequestDetail(
    @Path('id') String id,
  );

  @PATCH('admin/support-requests/{id}/start')
  Future<ApiResult<void>> startSupportRequest(@Path('id') String id);

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

  /// My handover requests, as either the [as] `borrower` or `owner`
  /// (My Handovers, mockup E14).
  @GET('/me/handover-requests')
  Future<ApiResult<List<HandoverRequestResDm>>> listMyHandoverRequests(
    @Query('as') String as,
  );

  /// Owner accepts a `requested` handover (My Handovers, mockup E14).
  @PATCH('/me/handover-requests/{id}/accept')
  Future<ApiResult<HandoverRequestResDm>> acceptHandoverRequest(
    @Path('id') String id,
  );

  /// Owner rejects a `requested` handover (My Handovers, mockup E14).
  @PATCH('/me/handover-requests/{id}/reject')
  Future<ApiResult<HandoverRequestResDm>> rejectHandoverRequest(
    @Path('id') String id,
  );

  /// Borrower cancels a `requested` handover (My Handovers, mockup E14).
  @PATCH('/me/handover-requests/{id}/cancel')
  Future<ApiResult<HandoverRequestResDm>> cancelHandoverRequest(
    @Path('id') String id,
  );

  /// Owner marks an `accepted` handover complete once the device is back
  /// (My Handovers, mockup E14).
  @PATCH('/me/handover-requests/{id}/complete')
  Future<ApiResult<HandoverRequestResDm>> completeHandoverRequest(
    @Path('id') String id,
  );

  @PATCH('admin/support-requests/{id}/resolve')
  Future<ApiResult<void>> resolveSupportRequest(
    @Path('id') String id,
    @Body() ResolveSupportReqDm body,
  );

  // ---------------------------------------------------------------------
  // WFH Shipping & Returns (A09)
  // ---------------------------------------------------------------------

  @GET('admin/shipping/outbound')
  Future<ApiResult<List<RequestSummaryResDm>>> fetchOutboundShippingQueue();

  @GET('admin/shipping/returns')
  Future<ApiResult<List<RequestSummaryResDm>>> fetchReturnQueue();

  @POST('admin/requests/{id}/ship')
  Future<ApiResult<void>> shipRequest(
    @Path('id') String id,
    @Body() ShipReqDm body,
  );

  @POST('admin/requests/{id}/confirm-delivery')
  Future<ApiResult<void>> confirmDelivery(@Path('id') String id);

  @POST('admin/requests/{id}/complete-return')
  Future<ApiResult<void>> completeReturn(
    @Path('id') String id,
    @Body() CompleteReturnReqDm body,
  );

  // ---------------------------------------------------------------------
  // Extension Requests (A11)
  // ---------------------------------------------------------------------

  @GET('admin/extension-requests')
  Future<ApiResult<List<ExtensionRequestSummaryResDm>>> fetchExtensionRequests({
    @Query('status') String? status,
  });

  @GET('admin/extension-requests/{id}')
  Future<ApiResult<ExtensionRequestDetailResDm>> fetchExtensionRequestDetail(
    @Path('id') String id,
  );

  @PATCH('admin/extension-requests/{id}/approve')
  Future<ApiResult<void>> approveExtension(
    @Path('id') String id,
    @Body() DecideExtensionReqDm body,
  );

  @PATCH('admin/extension-requests/{id}/reject')
  Future<ApiResult<void>> rejectExtension(
    @Path('id') String id,
    @Body() DecideExtensionReqDm body,
  );

  // ---------------------------------------------------------------------
  // Temporary Handovers (A12) — read-only audit for IT
  // ---------------------------------------------------------------------

  @GET('admin/handover-requests')
  Future<ApiResult<List<HandoverRequestResDm>>> fetchHandoverRequests({
    @Query('status') String? status,
    @Query('item_id') String? itemId,
  });

  // ---------------------------------------------------------------------
  // User Management (A14)
  // ---------------------------------------------------------------------

  @GET('admin/users')
  Future<ApiResult<PaginatedResDm<UserResDm>>> fetchUsers({
    @Query('role') String? role,
    @Query('is_active') bool? isActive,
    @Query('search') String? search,
    @Query('page') int? page,
    @Query('page_size') int? pageSize,
    @Query('sort_by') String? sortBy,
    @Query('sort_order') String? sortOrder,
  });

  @POST('admin/users')
  Future<ApiResult<UserResDm>> createUser(@Body() CreateUserReqDm body);

  @PATCH('admin/users/{id}/role')
  Future<ApiResult<UserResDm>> changeUserRole(
    @Path('id') String id,
    @Body() ChangeRoleReqDm body,
  );

  @PATCH('admin/users/{id}/activate')
  Future<ApiResult<UserResDm>> activateUser(@Path('id') String id);

  @PATCH('admin/users/{id}/deactivate')
  Future<ApiResult<UserResDm>> deactivateUser(@Path('id') String id);

  // ---------------------------------------------------------------------
  // Dropdowns
  // ---------------------------------------------------------------------

  @GET('admin/dropdowns/item-categories')
  Future<ApiResult<List<ItemCategoryResDm>>> fetchItemCategoryDropdown();

  @GET('admin/dropdowns/managers')
  Future<ApiResult<List<DropdownOptionResDm>>> fetchManagerDropdown();

  @GET('admin/dropdowns/employees')
  Future<ApiResult<List<DropdownOptionResDm>>> fetchEmployeeDropdown();

  /// List `request` rows awaiting this manager's decision (Manager Pending
  /// Approvals, mockup M01). Auth headers (`x-user-id`/`x-manager-id`/etc.)
  /// are injected globally by [DioClient]'s interceptor, not per-call.
  @GET('/manager/approvals')
  Future<ApiResult<List<RequestResDm>>> getPendingApprovals();

  /// Approve a pending request (Approval Detail, mockup M02 "Approve").
  @PATCH('/manager/requests/{requestId}/approve')
  Future<ApiResult<RequestResDm>> approveRequest(
    @Path('requestId') String requestId,
    @Body() ApproveRequestReqDm body,
  );

  /// Reject a pending request (Approval Detail, mockup M02 "Reject").
  @PATCH('/manager/requests/{requestId}/reject')
  Future<ApiResult<RequestResDm>> rejectManagerRequest(
    @Path('requestId') String requestId,
    @Body() RejectManagerRequestReqDm body,
  );

  /// Every active direct report under the authenticated manager, with all
  /// of their requests across every status (Team Devices, mockup M04).
  @GET('/manager/employee-devices')
  Future<ApiResult<List<EmployeeDeviceResDm>>> getEmployeeDevices();
}
