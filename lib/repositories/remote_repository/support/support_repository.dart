import 'package:intl/intl.dart';

import '../../../models/api_response/api_result.dart';
import '../../../values/enumeration/statuses.dart';
import '../api_repository/api_repository.dart';
import '../common/models/support_request_res_dm.dart';
import '../inventory/models/inventory_item_res_dm.dart';
import 'models/resolve_support_req_dm.dart';
import 'models/support_request_detail_res_dm.dart';
import 'models/support_summary_res_dm.dart';
import 'models/swap_target_device_res_dm.dart';

/// Repository for the admin Support Requests screen (mockup A08), wired to
/// the real backend. Maps the raw API DMs onto the screen's view models
/// ([SupportSummaryResDm], [SwapTargetDeviceResDm]) so the built screen/cubit
/// stay unchanged.
///
/// Singleton via a private constructor + [instance], per convention.
class SupportRepository extends Repository {
  SupportRepository._();

  static final SupportRepository instance = SupportRepository._();

  static final _dateFormat = DateFormat('dd MMM yyyy');

  /// List support tickets (A08 table). Maps the real `SupportRequestResDm`
  /// rows onto the screen's [SupportSummaryResDm] view model.
  Future<ApiResult<List<SupportSummaryResDm>>> fetchSupportRequests({
    SupportStatus? status,
    SupportType? type,
    String? itemId,
  }) async {
    final result = await apiService.fetchSupportRequests(
      status: status?.toJson(),
      type: type?.toJson(),
      itemId: itemId,
    );
    return result.when(
      success: (rows) =>
          ApiSuccess(rows.map(_toSummary).toList(growable: false)),
      failure: ApiFailure<List<SupportSummaryResDm>>.new,
    );
  }

  SupportSummaryResDm _toSummary(SupportRequestResDm row) {
    return SupportSummaryResDm(
      id: row.id,
      deviceName: row.itemName,
      type: row.type,
      status: row.status,
      description: row.description,
      filedAt: row.filedAt == null
          ? ''
          : _dateFormat.format(row.filedAt!.toLocal()),
    );
  }

  Future<ApiResult<SupportRequestDetailResDm>> fetchSupportRequestDetail(
    String id,
  ) {
    return apiService.fetchSupportRequestDetail(id);
  }

  Future<ApiResult<void>> startSupportRequest(String id) {
    return apiService.startSupportRequest(id);
  }

  /// Candidate replacement devices for a swap resolution — available company
  /// devices. (There's no dedicated swap-targets endpoint; the items list
  /// filtered to `available` supplies the candidates.)
  Future<ApiResult<List<SwapTargetDeviceResDm>>> fetchSwapTargets() async {
    final result = await apiService.fetchItems(
      status: DeviceStatus.available.toJson(),
      pageSize: 100,
    );
    return result.when(
      success: (page) => ApiSuccess(
        page.items.map(_toSwapTarget).toList(growable: false),
      ),
      failure: ApiFailure<List<SwapTargetDeviceResDm>>.new,
    );
  }

  SwapTargetDeviceResDm _toSwapTarget(InventoryItemResDm item) {
    return SwapTargetDeviceResDm(
      id: item.id,
      name: item.name,
      serial: item.serialNo,
    );
  }

  /// Resolve a ticket (A08 "Save Resolution"). [body.supportId] is the path
  /// parameter; the rest is the JSON body.
  Future<ApiResult<void>> resolveSupportRequest(ResolveSupportReqDm body) {
    return apiService.resolveSupportRequest(body.supportId, body);
  }
}
