import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../values/enumeration/statuses.dart';

part 'update_device_status_req_dm.freezed.dart';
part 'update_device_status_req_dm.g.dart';

/// Request body for changing a device's status from the Maintenance screen
/// (mockup A10 "Confirm").
@freezed
abstract class UpdateDeviceStatusReqDm with _$UpdateDeviceStatusReqDm {
  @JsonSerializable(includeIfNull: false)
  const factory UpdateDeviceStatusReqDm({
    required String deviceId,
    required DeviceStatus newStatus,
    String? note,
  }) = _UpdateDeviceStatusReqDm;

  factory UpdateDeviceStatusReqDm.fromJson(Map<String, dynamic> json) =>
      _$UpdateDeviceStatusReqDmFromJson(json);
}
