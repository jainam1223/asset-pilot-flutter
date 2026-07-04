import 'package:freezed_annotation/freezed_annotation.dart';

part 'direct_assign_req_dm.freezed.dart';
part 'direct_assign_req_dm.g.dart';

/// Request body for `POST /admin/items/{itemId}/direct-assign` (Direct
/// Client Device Assignment, mockup A07).
@freezed
abstract class DirectAssignReqDm with _$DirectAssignReqDm {
  @JsonSerializable(includeIfNull: false)
  const factory DirectAssignReqDm({
    @JsonKey(name: 'employee_id') required String employeeId,
    @JsonKey(name: 'assigned_from') required DateTime assignedFrom,
    @JsonKey(name: 'assigned_to') required DateTime assignedTo,
    String? note,
  }) = _DirectAssignReqDm;

  factory DirectAssignReqDm.fromJson(Map<String, dynamic> json) =>
      _$DirectAssignReqDmFromJson(json);
}
