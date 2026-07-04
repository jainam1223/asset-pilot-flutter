import 'package:freezed_annotation/freezed_annotation.dart';

part 'assign_device_req_dm.freezed.dart';
part 'assign_device_req_dm.g.dart';

/// Request body for assigning a device to a request (mockup A03 "Assign Device").
@freezed
abstract class AssignDeviceReqDm with _$AssignDeviceReqDm {
  @JsonSerializable(includeIfNull: false)
  const factory AssignDeviceReqDm({
    required String requestId,
    required String deviceId,
    required String assignedFrom,
    required String assignedTo,
    required bool workFromHome,
  }) = _AssignDeviceReqDm;

  factory AssignDeviceReqDm.fromJson(Map<String, dynamic> json) =>
      _$AssignDeviceReqDmFromJson(json);
}
