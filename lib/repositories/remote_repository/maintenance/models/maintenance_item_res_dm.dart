import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../values/enumeration/statuses.dart';

part 'maintenance_item_res_dm.freezed.dart';
part 'maintenance_item_res_dm.g.dart';

/// One row of the admin Maintenance queue table (mockup A10).
///
/// Models only the content of the `APIResponse.data` field, per convention.
@freezed
abstract class MaintenanceItemResDm with _$MaintenanceItemResDm {
  const factory MaintenanceItemResDm({
    @Default('') String id,
    @Default('') String name,
    @Default('') String serial,
    @Default('') String category,
    @Default(DeviceStatus.underRepair) DeviceStatus status,
    @Default('') String setAt,
  }) = _MaintenanceItemResDm;

  factory MaintenanceItemResDm.fromJson(Map<String, dynamic> json) =>
      _$MaintenanceItemResDmFromJson(json);
}
