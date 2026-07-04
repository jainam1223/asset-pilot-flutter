import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_req_dm.freezed.dart';
part 'refresh_req_dm.g.dart';

/// Request body for `POST /auth/refresh`.
@freezed
abstract class RefreshReqDm with _$RefreshReqDm {
  @JsonSerializable(includeIfNull: false)
  const factory RefreshReqDm({
    @JsonKey(name: 'refresh_token') required String refreshToken,
  }) = _RefreshReqDm;

  factory RefreshReqDm.fromJson(Map<String, dynamic> json) =>
      _$RefreshReqDmFromJson(json);
}
