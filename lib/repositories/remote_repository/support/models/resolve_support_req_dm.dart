import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../values/enumeration/statuses.dart';

part 'resolve_support_req_dm.freezed.dart';
part 'resolve_support_req_dm.g.dart';

/// Request body for resolving a support ticket (mockup A08 "Save
/// Resolution"). [swappedToItemId] is only relevant when [resolution] is
/// [SupportResolution.swapped].
@freezed
abstract class ResolveSupportReqDm with _$ResolveSupportReqDm {
  @JsonSerializable(includeIfNull: false)
  const factory ResolveSupportReqDm({
    required String supportId,
    required SupportResolution resolution,
    required DeviceStatus oldDeviceNextStatus,
    String? swappedToItemId,
    String? itNote,
  }) = _ResolveSupportReqDm;

  factory ResolveSupportReqDm.fromJson(Map<String, dynamic> json) =>
      _$ResolveSupportReqDmFromJson(json);
}
