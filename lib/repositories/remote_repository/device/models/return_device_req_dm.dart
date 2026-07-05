import 'package:freezed_annotation/freezed_annotation.dart';

part 'return_device_req_dm.freezed.dart';
part 'return_device_req_dm.g.dart';

/// Request body for `POST /me/devices/{itemId}/return` — initiate a WFH
/// return (Return Device mockup E09).
@freezed
abstract class ReturnDeviceReqDm with _$ReturnDeviceReqDm {
  @JsonSerializable(includeIfNull: false)
  const factory ReturnDeviceReqDm({
    @JsonKey(name: 'return_tracking_url') required String returnTrackingUrl,
  }) = _ReturnDeviceReqDm;

  factory ReturnDeviceReqDm.fromJson(Map<String, dynamic> json) =>
      _$ReturnDeviceReqDmFromJson(json);
}
