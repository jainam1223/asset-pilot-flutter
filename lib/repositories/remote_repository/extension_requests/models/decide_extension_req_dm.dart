import 'package:freezed_annotation/freezed_annotation.dart';

part 'decide_extension_req_dm.freezed.dart';
part 'decide_extension_req_dm.g.dart';

/// Request body shared by `PATCH /admin/extension-requests/{id}/approve` and
/// `.../reject` (mockup A11) — both endpoints take only an optional IT note;
/// the decision itself is which endpoint you call, not a body field.
@freezed
abstract class DecideExtensionReqDm with _$DecideExtensionReqDm {
  @JsonSerializable(includeIfNull: false)
  const factory DecideExtensionReqDm({
    @JsonKey(name: 'it_note') String? itNote,
  }) = _DecideExtensionReqDm;

  factory DecideExtensionReqDm.fromJson(Map<String, dynamic> json) =>
      _$DecideExtensionReqDmFromJson(json);
}
