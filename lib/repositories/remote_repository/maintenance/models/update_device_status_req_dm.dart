import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../values/enumeration/statuses.dart';

part 'update_device_status_req_dm.freezed.dart';
part 'update_device_status_req_dm.g.dart';

/// Request body for `PATCH /admin/items/{itemId}/status` (Maintenance screen
/// "Confirm", mockup A10). `deviceId` is a path parameter, not part of the
/// body — kept here as a constructor field for the repository's convenience.
@freezed
abstract class UpdateDeviceStatusReqDm with _$UpdateDeviceStatusReqDm {
  const factory UpdateDeviceStatusReqDm({
    required String deviceId,
    required DeviceStatus newStatus,
    String? note,
  }) = _UpdateDeviceStatusReqDm;

  factory UpdateDeviceStatusReqDm.fromJson(Map<String, dynamic> json) =>
      _$UpdateDeviceStatusReqDmFromJson(json);
}
