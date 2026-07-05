import 'package:freezed_annotation/freezed_annotation.dart';

part 'return_device_non_wfh_req_dm.freezed.dart';
part 'return_device_non_wfh_req_dm.g.dart';

/// Request body for `POST /me/devices/{itemId}/return-non-wfh` — instantly
/// complete a non-WFH (office-based) return (Device Detail mockup E03). The
/// backend resolves the active assignment from [deviceId] in the body.
@freezed
abstract class ReturnDeviceNonWfhReqDm with _$ReturnDeviceNonWfhReqDm {
  @JsonSerializable(includeIfNull: false)
  const factory ReturnDeviceNonWfhReqDm({required String itemId}) =
      _ReturnDeviceNonWfhReqDm;

  factory ReturnDeviceNonWfhReqDm.fromJson(Map<String, dynamic> json) =>
      _$ReturnDeviceNonWfhReqDmFromJson(json);
}
