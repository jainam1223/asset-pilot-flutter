import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../values/enumeration/statuses.dart';

part 'change_item_status_req_dm.freezed.dart';
part 'change_item_status_req_dm.g.dart';

/// Wire body for `PATCH /admin/items/{itemId}/status`.
@freezed
abstract class ChangeItemStatusReqDm with _$ChangeItemStatusReqDm {
  @JsonSerializable(includeIfNull: false)
  const factory ChangeItemStatusReqDm({
    required DeviceStatus status,
    @JsonKey(name: 'it_note') String? itNote,
  }) = _ChangeItemStatusReqDm;

  factory ChangeItemStatusReqDm.fromJson(Map<String, dynamic> json) =>
      _$ChangeItemStatusReqDmFromJson(json);
}
