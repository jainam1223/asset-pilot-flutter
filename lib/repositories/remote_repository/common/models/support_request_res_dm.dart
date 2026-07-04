import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../values/enumeration/statuses.dart';

part 'support_request_res_dm.freezed.dart';
part 'support_request_res_dm.g.dart';

/// Full `support_request` row — every column, regardless of which endpoint
/// nests it (list, detail, device-detail's `open_support`).
@freezed
abstract class SupportRequestResDm with _$SupportRequestResDm {
  const factory SupportRequestResDm({
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
    @JsonKey(name: 'item_name') @Default('') String itemName,
    @JsonKey(name: 'requester_name') @Default('') String requesterName,
  }) = _SupportRequestResDm;

  factory SupportRequestResDm.fromJson(Map<String, dynamic> json) =>
      _$SupportRequestResDmFromJson(json);
}
