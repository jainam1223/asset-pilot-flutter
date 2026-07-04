import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../values/enumeration/statuses.dart';

part 'resolve_support_req_dm.freezed.dart';
part 'resolve_support_req_dm.g.dart';

/// Request body for `PATCH /admin/support-requests/{id}/resolve`.
/// [swappedToItemId] and [oldItemNextStatus] are only meaningful when
/// [resolution] is [SupportResolution.swapped].
@freezed
abstract class ResolveSupportReqDm with _$ResolveSupportReqDm {
  @JsonSerializable(includeIfNull: false)
  const factory ResolveSupportReqDm({
    required SupportResolution resolution,
    @JsonKey(name: 'it_note') String? itNote,
    @JsonKey(name: 'swapped_to_item_id') String? swappedToItemId,
    @JsonKey(name: 'old_item_next_status') DeviceStatus? oldItemNextStatus,
  }) = _ResolveSupportReqDm;

  factory ResolveSupportReqDm.fromJson(Map<String, dynamic> json) =>
      _$ResolveSupportReqDmFromJson(json);
}
