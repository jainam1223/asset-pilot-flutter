import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_handover_request_req_dm.freezed.dart';
part 'create_handover_request_req_dm.g.dart';

/// Request body for `POST /me/handover-requests` (Request Handover,
/// mockup E13).
@freezed
abstract class CreateHandoverRequestReqDm with _$CreateHandoverRequestReqDm {
  @JsonSerializable(includeIfNull: false)
  const factory CreateHandoverRequestReqDm({
    required String itemId,
    required int requestedDurationHours,
    String? note,
  }) = _CreateHandoverRequestReqDm;

  factory CreateHandoverRequestReqDm.fromJson(Map<String, dynamic> json) =>
      _$CreateHandoverRequestReqDmFromJson(json);
}
