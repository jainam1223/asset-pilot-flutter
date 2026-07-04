import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../values/enumeration/statuses.dart';

part 'handover_request_res_dm.freezed.dart';
part 'handover_request_res_dm.g.dart';

/// Full `handover_request` row — every column, regardless of which endpoint
/// nests it (audit list, device-detail's `active_handover`).
@freezed
abstract class HandoverRequestResDm with _$HandoverRequestResDm {
  const factory HandoverRequestResDm({
    @Default('') String id,
    @JsonKey(name: 'item_id') @Default('') String itemId,
    @JsonKey(name: 'owner_id') @Default('') String ownerId,
    @JsonKey(name: 'borrower_id') @Default('') String borrowerId,
    @JsonKey(name: 'requested_duration_hours') int? requestedDurationHours,
    @Default(HandoverStatus.requested) HandoverStatus status,
    @JsonKey(name: 'requested_at') DateTime? requestedAt,
    @JsonKey(name: 'decided_at') DateTime? decidedAt,
    @JsonKey(name: 'completed_at') DateTime? completedAt,
    String? note,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'item_name') @Default('') String itemName,
    @JsonKey(name: 'owner_name') @Default('') String ownerName,
    @JsonKey(name: 'borrower_name') @Default('') String borrowerName,
  }) = _HandoverRequestResDm;

  factory HandoverRequestResDm.fromJson(Map<String, dynamic> json) =>
      _$HandoverRequestResDmFromJson(json);
}
