import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_res_dm.freezed.dart';
part 'login_res_dm.g.dart';

/// Token pair returned by `POST /auth/login` (and `/auth/refresh`).
///
/// Login does NOT return a user profile — only tokens. The signed-in user's
/// profile is fetched separately via `GET /auth/me` (see [UserResDm]).
@freezed
abstract class LoginResDm with _$LoginResDm {
  const factory LoginResDm({
    @Default('') @JsonKey(name: 'access_token') String accessToken,
    @Default('') @JsonKey(name: 'refresh_token') String refreshToken,
    @Default('bearer') @JsonKey(name: 'token_type') String tokenType,
  }) = _LoginResDm;

  factory LoginResDm.fromJson(Map<String, dynamic> json) =>
      _$LoginResDmFromJson(json);
}
