import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_res_dm.freezed.dart';
part 'user_res_dm.g.dart';

/// Full `user` row — every column, regardless of which endpoint nests it.
/// Shared across modules; callers read only the fields they need.
///
/// Represents the profile returned by `GET /auth/me` and nested wherever a
/// `user` is joined in (e.g. `current_owner` on device detail). The token
/// pair returned by login lives separately in `LoginResDm`.
@freezed
abstract class UserResDm with _$UserResDm {
  const factory UserResDm({
    @Default('') String id,
    @Default('') String name,
    @Default('') String email,
    @Default('') String role,
    @JsonKey(name: 'manager_id') String? managerId,
    @Default(true) @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _UserResDm;

  factory UserResDm.fromJson(Map<String, dynamic> json) =>
      _$UserResDmFromJson(json);
}
