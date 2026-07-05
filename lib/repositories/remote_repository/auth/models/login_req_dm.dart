import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_req_dm.freezed.dart';
part 'login_req_dm.g.dart';

/// Request body for the login endpoints.
///
/// Mobile login sends [email] only (backend resolves role); IT Admin login
/// also sends [password] for real bearer-token auth. [password] is optional
/// so the email-only mobile call still serializes cleanly.
@freezed
abstract class LoginReqDm with _$LoginReqDm {
  @JsonSerializable(includeIfNull: false)
  const factory LoginReqDm({required String email}) = _LoginReqDm;

  factory LoginReqDm.fromJson(Map<String, dynamic> json) =>
      _$LoginReqDmFromJson(json);
}
