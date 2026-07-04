import 'package:freezed_annotation/freezed_annotation.dart';

part 'reject_request_req_dm.freezed.dart';
part 'reject_request_req_dm.g.dart';

/// Request body for rejecting a request (mockup A03 "Reject").
@freezed
abstract class RejectRequestReqDm with _$RejectRequestReqDm {
  @JsonSerializable(includeIfNull: false)
  const factory RejectRequestReqDm({
    required String requestId,
    String? note,
  }) = _RejectRequestReqDm;

  factory RejectRequestReqDm.fromJson(Map<String, dynamic> json) =>
      _$RejectRequestReqDmFromJson(json);
}
