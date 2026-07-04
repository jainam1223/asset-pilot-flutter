import 'package:freezed_annotation/freezed_annotation.dart';

part 'cancel_request_req_dm.freezed.dart';
part 'cancel_request_req_dm.g.dart';

/// Request body for `PATCH /admin/requests/{id}/cancel` — pulls a pending
/// request (e.g. its category's only devices went lost/retired).
@freezed
abstract class CancelRequestReqDm with _$CancelRequestReqDm {
  @JsonSerializable(includeIfNull: false)
  const factory CancelRequestReqDm({
    @JsonKey(name: 'rejected_reason') required String rejectedReason,
  }) = _CancelRequestReqDm;

  factory CancelRequestReqDm.fromJson(Map<String, dynamic> json) =>
      _$CancelRequestReqDmFromJson(json);
}
