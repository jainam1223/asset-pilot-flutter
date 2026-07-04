import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_timeline_event_res_dm.freezed.dart';
part 'device_timeline_event_res_dm.g.dart';

/// One append-only lifecycle event for a device's audit trail (mockup A06).
///
/// Models only the content of the `APIResponse.data` field, per convention.
@freezed
abstract class DeviceTimelineEventResDm with _$DeviceTimelineEventResDm {
  const factory DeviceTimelineEventResDm({
    @Default('') String id,
    @Default('') String title,
    @Default('') String timestamp,
    @Default('') String actor,
    @Default('') String description,
    @Default('') String fromStatus,
    @Default('') String toStatus,
    @Default('') String relatedRequestId,

    /// One of `'assignment' | 'shipping' | 'delivery' | 'support' |
    /// 'handover'` — drives the timeline dot color (mockup A06 uses a
    /// distinct color per event kind, not a single uniform brand color).
    @Default('assignment') String kind,
  }) = _DeviceTimelineEventResDm;

  factory DeviceTimelineEventResDm.fromJson(Map<String, dynamic> json) =>
      _$DeviceTimelineEventResDmFromJson(json);
}
