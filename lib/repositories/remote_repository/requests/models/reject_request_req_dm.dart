import 'package:freezed_annotation/freezed_annotation.dart';

part 'reject_request_req_dm.freezed.dart';
part 'reject_request_req_dm.g.dart';

/// Request body for rejecting a request (mockup A03 "Reject"), per
/// `PATCH /admin/requests/{id}/reject`.
@freezed
abstract class RejectRequestReqDm with _$RejectRequestReqDm {
  @JsonSerializable(includeIfNull: false)
  const factory RejectRequestReqDm({
    @JsonKey(name: 'rejected_reason') required String rejectedReason,
    @JsonKey(name: 'it_decision_note') String? itDecisionNote,
  }) = _RejectRequestReqDm;

  factory RejectRequestReqDm.fromJson(Map<String, dynamic> json) =>
      _$RejectRequestReqDmFromJson(json);
}
