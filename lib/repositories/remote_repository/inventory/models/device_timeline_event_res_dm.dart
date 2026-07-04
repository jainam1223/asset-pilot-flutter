import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../values/enumeration/statuses.dart';

part 'device_timeline_event_res_dm.freezed.dart';
part 'device_timeline_event_res_dm.g.dart';

/// One append-only lifecycle event for a device's audit trail (mockup A06),
/// per `GET /admin/items/{itemId}/timeline`.
///
/// Models only the content of the `APIResponse.data` field, per convention.
@freezed
abstract class DeviceTimelineEventResDm with _$DeviceTimelineEventResDm {
  const factory DeviceTimelineEventResDm({
    @JsonKey(name: 'event_type') @Default(DeviceLogEvent.statusChanged) DeviceLogEvent eventType,
    @JsonKey(name: 'actor_role') @Default(ActorRole.system) ActorRole actorRole,
    @JsonKey(name: 'from_value') String? fromValue,
    @JsonKey(name: 'to_value') String? toValue,
    String? note,
    Map<String, dynamic>? metadata,
    @JsonKey(name: 'occurred_at') DateTime? occurredAt,
  }) = _DeviceTimelineEventResDm;

  factory DeviceTimelineEventResDm.fromJson(Map<String, dynamic> json) =>
      _$DeviceTimelineEventResDmFromJson(json);
}
