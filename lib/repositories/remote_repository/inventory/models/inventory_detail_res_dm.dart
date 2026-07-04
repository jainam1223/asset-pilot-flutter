import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../values/enumeration/statuses.dart';
import 'active_handover_summary_res_dm.dart';
import 'current_assignment_res_dm.dart';
import 'open_ticket_summary_res_dm.dart';

part 'inventory_detail_res_dm.freezed.dart';
part 'inventory_detail_res_dm.g.dart';

/// Full detail for a single device (mockup A05).
///
/// Models only the content of the `APIResponse.data` field, per convention.
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
    @Default('') String purchaseDate,
    @Default('') String qrToken,
    CurrentAssignmentResDm? currentAssignment,
    @Default(<OpenTicketSummaryResDm>[])
    List<OpenTicketSummaryResDm> openTickets,
    ActiveHandoverSummaryResDm? activeHandover,
  }) = _InventoryDetailResDm;

  factory InventoryDetailResDm.fromJson(Map<String, dynamic> json) =>
      _$InventoryDetailResDmFromJson(json);
}
