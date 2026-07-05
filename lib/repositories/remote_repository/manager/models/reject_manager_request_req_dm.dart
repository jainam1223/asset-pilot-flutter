import 'package:freezed_annotation/freezed_annotation.dart';

part 'reject_manager_request_req_dm.freezed.dart';
part 'reject_manager_request_req_dm.g.dart';

/// Request body for rejecting a request (Approval Detail, mockup M02
/// "Reject").
@freezed
abstract class RejectManagerRequestReqDm with _$RejectManagerRequestReqDm {
  @JsonSerializable(includeIfNull: false)
  const factory RejectManagerRequestReqDm({
    String? managerDecisionNote,
    String? rejectedReason,
  }) = _RejectManagerRequestReqDm;

  factory RejectManagerRequestReqDm.fromJson(Map<String, dynamic> json) =>
      _$RejectManagerRequestReqDmFromJson(json);
}
