import 'package:freezed_annotation/freezed_annotation.dart';

part 'approve_request_req_dm.freezed.dart';
part 'approve_request_req_dm.g.dart';

/// Request body for approving a request (Approval Detail, mockup M02
/// "Approve").
@freezed
abstract class ApproveRequestReqDm with _$ApproveRequestReqDm {
  @JsonSerializable(includeIfNull: false)
  const factory ApproveRequestReqDm({String? managerDecisionNote}) =
      _ApproveRequestReqDm;

  factory ApproveRequestReqDm.fromJson(Map<String, dynamic> json) =>
      _$ApproveRequestReqDmFromJson(json);
}
