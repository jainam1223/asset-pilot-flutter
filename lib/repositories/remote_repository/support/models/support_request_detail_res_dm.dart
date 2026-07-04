import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../values/enumeration/statuses.dart';
import '../../common/models/user_res_dm.dart';
import '../../inventory/models/inventory_item_res_dm.dart';

part 'support_request_detail_res_dm.freezed.dart';
part 'support_request_detail_res_dm.g.dart';

/// Full detail for a single support request, per
/// `GET /admin/support-requests/{id}` — the base `support_request` row plus
/// nested `item` and `requester`.
///
/// Models only the content of the `APIResponse.data` field, per convention.
@freezed
abstract class SupportRequestDetailResDm with _$SupportRequestDetailResDm {
  const factory SupportRequestDetailResDm({
    @Default('') String id,
    @JsonKey(name: 'item_id') @Default('') String itemId,
    @JsonKey(name: 'requester_id') @Default('') String requesterId,
    @JsonKey(name: 'request_id') String? requestId,
    @Default(SupportType.update) SupportType type,
    @Default('') String description,
    @Default(SupportStatus.open) SupportStatus status,
    SupportResolution? resolution,
    @JsonKey(name: 'it_note') String? itNote,
    @JsonKey(name: 'swapped_to_item_id') String? swappedToItemId,
    @JsonKey(name: 'filed_at') DateTime? filedAt,
    @JsonKey(name: 'resolved_by') String? resolvedBy,
    @JsonKey(name: 'resolved_at') DateTime? resolvedAt,
    @JsonKey(name: 'auto_closed') @Default(false) bool autoClosed,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    InventoryItemResDm? item,
    UserResDm? requester,
  }) = _SupportRequestDetailResDm;

  factory SupportRequestDetailResDm.fromJson(Map<String, dynamic> json) =>
      _$SupportRequestDetailResDmFromJson(json);
}
