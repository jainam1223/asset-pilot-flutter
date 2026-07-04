import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../values/enumeration/statuses.dart';
import '../../common/models/handover_request_res_dm.dart';
import '../../common/models/support_request_res_dm.dart';
import 'current_assignment_res_dm.dart';

part 'inventory_detail_res_dm.freezed.dart';
part 'inventory_detail_res_dm.g.dart';

/// Full detail for a single device (mockup A05) — a UI-facing flattening of
/// `GET /admin/items/{id}`'s nested `{ item, category, current_owner,
/// current_request, open_support[], active_handover }` response.
///
/// NOT deserialized directly via [fromJson]/[toJson] from the wire response
/// (the nesting doesn't map 1:1) — [InventoryRepository.fetchInventoryDetail]
/// constructs this by reading the raw nested DMs and flattening them here, so
/// the screen keeps a single flat `detail.*` accessor surface.
@freezed
abstract class InventoryDetailResDm with _$InventoryDetailResDm {
  const factory InventoryDetailResDm({
    @Default('') String id,
    @Default('') String name,
    @Default('') String serial,
    @Default('') String category,
    @Default(OwnerType.company) OwnerType ownerType,
    @Default('') String clientName,
    @Default(DeviceStatus.available) DeviceStatus status,
    @Default('') String currentOwnerName,
    DateTime? purchaseDate,
    @Default('') String qrToken,
    CurrentAssignmentResDm? currentAssignment,
    @Default(<SupportRequestResDm>[]) List<SupportRequestResDm> openTickets,
    HandoverRequestResDm? activeHandover,
  }) = _InventoryDetailResDm;

  factory InventoryDetailResDm.fromJson(Map<String, dynamic> json) =>
      _$InventoryDetailResDmFromJson(json);
}
