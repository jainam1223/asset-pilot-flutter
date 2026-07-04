import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../values/enumeration/statuses.dart';

part 'team_device_res_dm.freezed.dart';
part 'team_device_res_dm.g.dart';

/// One device row under one direct report on the manager's read-only Team
/// Devices screen (mockup M04).
@freezed
abstract class TeamDeviceResDm with _$TeamDeviceResDm {
  const factory TeamDeviceResDm({
    @Default('') String id,
    @Default('') String deviceName,
    @Default('') String category,
    @Default('') String assignedTo,
    @Default(DeviceStatus.assigned) DeviceStatus status,
  }) = _TeamDeviceResDm;

  factory TeamDeviceResDm.fromJson(Map<String, dynamic> json) =>
      _$TeamDeviceResDmFromJson(json);
}

/// One direct report and their currently assigned devices (mockup M04).
@freezed
abstract class TeamMemberResDm with _$TeamMemberResDm {
  const factory TeamMemberResDm({
    @Default('') String id,
    @Default('') String name,
    @Default(<TeamDeviceResDm>[]) List<TeamDeviceResDm> devices,
  }) = _TeamMemberResDm;

  factory TeamMemberResDm.fromJson(Map<String, dynamic> json) =>
      _$TeamMemberResDmFromJson(json);
}
