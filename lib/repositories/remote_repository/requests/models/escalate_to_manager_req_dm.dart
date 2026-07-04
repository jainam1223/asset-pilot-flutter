import 'package:freezed_annotation/freezed_annotation.dart';

part 'escalate_to_manager_req_dm.freezed.dart';
part 'escalate_to_manager_req_dm.g.dart';

/// Request body for `PATCH /admin/requests/{id}/escalate-to-manager` — late
/// escalation of a request that skipped manager approval. [managerId]
/// defaults to the requester's current manager on the backend when omitted.
@freezed
abstract class EscalateToManagerReqDm with _$EscalateToManagerReqDm {
  @JsonSerializable(includeIfNull: false)
  const factory EscalateToManagerReqDm({
    @JsonKey(name: 'manager_id') String? managerId,
  }) = _EscalateToManagerReqDm;

  factory EscalateToManagerReqDm.fromJson(Map<String, dynamic> json) =>
      _$EscalateToManagerReqDmFromJson(json);
}
