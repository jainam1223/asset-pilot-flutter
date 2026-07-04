import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../values/enumeration/statuses.dart';

part 'resolve_support_req_dm.freezed.dart';
part 'resolve_support_req_dm.g.dart';

/// Request body for `PATCH /admin/support-requests/{id}/resolve` (mockup A08
/// "Save Resolution").
///
/// [supportId] is the ticket id — used by the repository as the path
/// parameter and excluded from the JSON body. [oldDeviceNextStatus] and
/// [swappedToItemId] are only meaningful when [resolution] is
/// [SupportResolution.swapped].
@freezed
abstract class ResolveSupportReqDm with _$ResolveSupportReqDm {
  @JsonSerializable(includeIfNull: false)
  const factory ResolveSupportReqDm({
    @JsonKey(includeToJson: false) required String supportId,
    required SupportResolution resolution,
    @JsonKey(name: 'old_item_next_status') DeviceStatus? oldDeviceNextStatus,
    @JsonKey(name: 'swapped_to_item_id') String? swappedToItemId,
    @JsonKey(name: 'it_note') String? itNote,
  }) = _ResolveSupportReqDm;

  factory ResolveSupportReqDm.fromJson(Map<String, dynamic> json) =>
      _$ResolveSupportReqDmFromJson(json);
}
