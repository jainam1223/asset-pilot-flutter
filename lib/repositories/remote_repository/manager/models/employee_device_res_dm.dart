import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/models/request_res_dm.dart';

part 'employee_device_res_dm.freezed.dart';
part 'employee_device_res_dm.g.dart';

/// One direct report and every request they've raised, regardless of status
/// (Team Devices, mockup M04). Only requests with a non-null `assignedItem`
/// represent an actual assigned device; the rest are in-flight/rejected
/// requests the screen filters out.
@freezed
abstract class EmployeeDeviceResDm with _$EmployeeDeviceResDm {
  const factory EmployeeDeviceResDm({
    @Default('') String id,
    @Default('') String name,
    @Default('') String email,
    @Default('') String role,
    String? managerId,
    @Default(<RequestResDm>[]) List<RequestResDm> requests,
  }) = _EmployeeDeviceResDm;

  factory EmployeeDeviceResDm.fromJson(Map<String, dynamic> json) =>
      _$EmployeeDeviceResDmFromJson(json);
}
