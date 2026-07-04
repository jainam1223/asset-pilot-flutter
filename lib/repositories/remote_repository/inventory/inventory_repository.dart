import 'package:intl/intl.dart';

import '../../../models/api_response/api_result.dart';
import '../../../models/api_response/paginated_res_dm.dart';
import '../../../values/enumeration/statuses.dart';
import '../api_repository/api_repository.dart';
import '../common/models/handover_request_res_dm.dart';
import '../common/models/support_request_res_dm.dart';
import '../common/models/user_res_dm.dart';
import 'models/client_item_res_dm.dart';
import 'models/create_item_req_dm.dart';
import 'models/current_assignment_res_dm.dart';
import 'models/device_timeline_event_res_dm.dart';
import 'models/direct_assign_req_dm.dart';
import 'models/inventory_detail_res_dm.dart';
import 'models/inventory_item_res_dm.dart';
import 'models/item_booking_res_dm.dart';
import 'models/change_item_status_req_dm.dart';
import 'models/item_detail_raw_res_dm.dart';
import 'models/update_item_req_dm.dart';

/// Repository for the admin Inventory Management + Device Detail + Device
/// Timeline screens (mockups A04, A05, A06), plus Direct Client Assignment
/// (A07) and the item-level lifecycle actions.
///
/// Singleton via a private constructor + [instance], per convention.
class InventoryRepository extends Repository {
  InventoryRepository._();

  static final InventoryRepository instance = InventoryRepository._();

  /// List inventory devices for the admin Inventory Management table (A04),
  /// server-side paginated + filtered.
  Future<ApiResult<PaginatedResDm<InventoryItemResDm>>> fetchInventory({
    String? categoryId,
    DeviceStatus? status,
    OwnerType? ownerType,
    String? search,
    int page = 1,
    int pageSize = 10,
  }) {
    return apiService.fetchItems(
      categoryId: categoryId,
      status: status,
      ownerType: ownerType,
      search: search,
      page: page,
      pageSize: pageSize,
    );
  }

  Future<ApiResult<InventoryItemResDm>> createItem(CreateItemReqDm body) {
    return apiService.createItem(body);
  }

  Future<ApiResult<InventoryItemResDm>> updateItem(String id, UpdateItemReqDm body) {
    return apiService.updateItem(id, body);
  }

  Future<ApiResult<InventoryItemResDm>> changeItemStatus(
    String id,
    ChangeItemStatusReqDm body,
  ) {
    return apiService.changeItemStatus(id, body);
  }

  /// Fetch full detail for a single device (A05), flattened from the raw
  /// nested `{ item, category, current_owner, current_request,
  /// open_support[], active_handover }` response into the screen's flat
  /// [InventoryDetailResDm] shape.
  Future<ApiResult<InventoryDetailResDm>> fetchInventoryDetail(String id) async {
    final result = await apiService.fetchItemDetail(id);
    return result.when(
      success: (raw) => ApiSuccess(_mapDetail(raw)),
      failure: ApiFailure<InventoryDetailResDm>.new,
    );
  }

  static final _dateFormat = DateFormat('dd MMM yyyy');

  static String _formatDateString(dynamic isoString) {
    if (isoString is! String || isoString.isEmpty) return '';
    final parsed = DateTime.tryParse(isoString);
    return parsed == null ? '' : _dateFormat.format(parsed.toLocal());
  }

  InventoryDetailResDm _mapDetail(ItemDetailRawResDm raw) {
    final item = raw.item ?? const {};
    final category = raw.category;
    final currentOwner = raw.currentOwner;
    final currentRequest = raw.currentRequest;
    final openSupport = raw.openSupport.map(SupportRequestResDm.fromJson).toList();
    final activeHandover = raw.activeHandover;

    final itemDm = InventoryItemResDm.fromJson(item);
    final ownerDm = currentOwner != null ? UserResDm.fromJson(currentOwner) : null;

    return InventoryDetailResDm(
      id: itemDm.id,
      name: itemDm.name,
      serial: itemDm.serialNo,
      category: category?['name'] as String? ?? itemDm.categoryName,
      ownerType: itemDm.ownerType,
      clientName: itemDm.clientName ?? '',
      status: itemDm.status,
      currentOwnerName: ownerDm?.name ?? itemDm.currentOwnerName ?? '',
      purchaseDate: itemDm.purchaseDate,
      qrToken: itemDm.qrCodeToken,
      currentAssignment: currentRequest == null
          ? null
          : CurrentAssignmentResDm(
              requestId: currentRequest['id'] as String? ?? '',
              requesterName: ownerDm?.name ?? '',
              assignedFrom: _formatDateString(currentRequest['assigned_from']),
              assignedTo: _formatDateString(currentRequest['assigned_to']),
              workFromHome: currentRequest['is_wfh'] as bool? ?? false,
              shipTracking: currentRequest['ship_tracking_url'] as String? ?? '',
            ),
      openTickets: openSupport,
      activeHandover:
          activeHandover == null ? null : HandoverRequestResDm.fromJson(activeHandover),
    );
  }

  /// Fetch the append-only audit-trail timeline for a device (A06).
  Future<ApiResult<List<DeviceTimelineEventResDm>>> fetchDeviceTimeline(
    String id, {
    bool milestonesOnly = true,
  }) {
    return apiService.fetchDeviceTimeline(id, milestonesOnly: milestonesOnly);
  }

  /// The existing bookings on a device — feeds the A03 calendar overlay.
  Future<ApiResult<List<ItemBookingResDm>>> fetchBookings(String itemId) {
    return apiService.fetchItemBookings(itemId);
  }

  /// Available client-owned devices (A07 left panel).
  Future<ApiResult<List<ClientItemResDm>>> fetchClientAvailable({
    String? categoryId,
    String? search,
  }) {
    return apiService.fetchClientAvailableItems(categoryId: categoryId, search: search);
  }

  /// Direct-assign a client-owned device to an employee (A07), skipping the
  /// request/approval lifecycle.
  Future<ApiResult<void>> directAssign(String itemId, DirectAssignReqDm body) {
    return apiService.directAssignItem(itemId, body);
  }
}
