import '../../../values/enumeration/statuses.dart';
import '../../../widgets/widget_enums.dart';

/// Maps [MgrApprovalStatus] onto the shared, domain-blind [AppSemantic] +
/// display label vocabulary consumed by [StatusPill] (mockups M01–M03).
extension MgrApprovalStatusSemanticX on MgrApprovalStatus {
  AppSemantic get semantic => switch (this) {
    MgrApprovalStatus.notRequired => AppSemantic.neutral,
    MgrApprovalStatus.pending => AppSemantic.warning,
    MgrApprovalStatus.approved => AppSemantic.success,
    MgrApprovalStatus.rejected => AppSemantic.danger,
  };
}

/// Maps a Team Devices row's [DeviceStatus] onto [AppSemantic] + label
/// (mockup M04) — distinct from the admin inventory mapping since M04 shows
/// "Assigned" as green rather than blue.
extension TeamDeviceStatusX on DeviceStatus {
  AppSemantic get teamDeviceSemantic => switch (this) {
    DeviceStatus.assigned => AppSemantic.success,
    DeviceStatus.shippingPending ||
    DeviceStatus.returnShippingPending => AppSemantic.warning,
    DeviceStatus.underRepair || DeviceStatus.lost => AppSemantic.danger,
    DeviceStatus.available => AppSemantic.info,
    DeviceStatus.maintenance => AppSemantic.warning,
    DeviceStatus.retired || DeviceStatus.returnedToClient => AppSemantic.neutral,
  };

  String get teamDeviceLabel => switch (this) {
    DeviceStatus.assigned => 'Assigned',
    DeviceStatus.shippingPending => 'Shipping',
    DeviceStatus.returnShippingPending => 'Return shipping',
    DeviceStatus.underRepair => 'Under repair',
    DeviceStatus.lost => 'Lost',
    DeviceStatus.available => 'Available',
    DeviceStatus.maintenance => 'Maintenance',
    DeviceStatus.retired => 'Retired',
    DeviceStatus.returnedToClient => 'Returned to client',
  };
}
