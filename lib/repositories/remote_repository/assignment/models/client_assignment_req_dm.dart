import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_assignment_req_dm.freezed.dart';
part 'client_assignment_req_dm.g.dart';

/// Request body for directly assigning a client-owned device to an employee,
/// bypassing the request/approval lifecycle (mockup A07 "Confirm Direct
/// Assignment").
@freezed
abstract class ClientAssignmentReqDm with _$ClientAssignmentReqDm {
  @JsonSerializable(includeIfNull: false)
  const factory ClientAssignmentReqDm({
    required String deviceId,
    required String employeeId,
    required String assignedFrom,
    required String assignedTo,
    String? notes,
  }) = _ClientAssignmentReqDm;

  factory ClientAssignmentReqDm.fromJson(Map<String, dynamic> json) =>
      _$ClientAssignmentReqDmFromJson(json);
}
