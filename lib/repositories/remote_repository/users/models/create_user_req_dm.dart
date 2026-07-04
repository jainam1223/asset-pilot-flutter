import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../values/enumeration/user_role.dart';

part 'create_user_req_dm.freezed.dart';
part 'create_user_req_dm.g.dart';

/// Request body for `POST /admin/users` ("Invite User").
@freezed
abstract class CreateUserReqDm with _$CreateUserReqDm {
  @JsonSerializable(includeIfNull: false)
  const factory CreateUserReqDm({
    required String name,
    required String email,
    required UserRole role,
  }) = _CreateUserReqDm;

  factory CreateUserReqDm.fromJson(Map<String, dynamic> json) =>
      _$CreateUserReqDmFromJson(json);
}
