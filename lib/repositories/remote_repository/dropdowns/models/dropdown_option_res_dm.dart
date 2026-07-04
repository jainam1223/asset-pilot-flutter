import 'package:freezed_annotation/freezed_annotation.dart';

part 'dropdown_option_res_dm.freezed.dart';
part 'dropdown_option_res_dm.g.dart';

/// A simple `{ id, name }` option, shared by the managers and employees
/// dropdown endpoints (`GET /admin/dropdowns/managers`,
/// `GET /admin/dropdowns/employees`).
///
/// Models only the content of the `APIResponse.data` field, per convention.
@freezed
abstract class DropdownOptionResDm with _$DropdownOptionResDm {
  const factory DropdownOptionResDm({
    @Default('') String id,
    @Default('') String name,
  }) = _DropdownOptionResDm;

  factory DropdownOptionResDm.fromJson(Map<String, dynamic> json) =>
      _$DropdownOptionResDmFromJson(json);
}
