import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../values/enumeration/user_role.dart';

part 'change_role_req_dm.freezed.dart';
part 'change_role_req_dm.g.dart';

/// Request body for `PATCH /admin/users/{id}/role` ("Edit Role").
@freezed
abstract class ChangeRoleReqDm with _$ChangeRoleReqDm {
  @JsonSerializable(includeIfNull: false)
  const factory ChangeRoleReqDm({required UserRole role}) = _ChangeRoleReqDm;

  factory ChangeRoleReqDm.fromJson(Map<String, dynamic> json) =>
      _$ChangeRoleReqDmFromJson(json);
}
