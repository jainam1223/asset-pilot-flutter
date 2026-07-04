import 'package:freezed_annotation/freezed_annotation.dart';

part 'assign_device_req_dm.freezed.dart';
part 'assign_device_req_dm.g.dart';

/// Request body for assigning a device to a request (mockup A03 "Assign
/// Device"), per `POST /admin/requests/{id}/assign`. `requestId` is a path
/// parameter, not part of this body.
@freezed
abstract class AssignDeviceReqDm with _$AssignDeviceReqDm {
  @JsonSerializable(includeIfNull: false)
  const factory AssignDeviceReqDm({
    @JsonKey(name: 'item_id') required String itemId,
    @JsonKey(name: 'assigned_from') required DateTime assignedFrom,
    @JsonKey(name: 'assigned_to') required DateTime assignedTo,
    @JsonKey(name: 'is_wfh') bool? isWfh,
  }) = _AssignDeviceReqDm;

  factory AssignDeviceReqDm.fromJson(Map<String, dynamic> json) =>
      _$AssignDeviceReqDmFromJson(json);
}
