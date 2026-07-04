import '../../../values/enumeration/statuses.dart';
import '../../../widgets/widget_enums.dart';

/// Maps [DeviceStatus] onto the shared, domain-blind [AppSemantic] +
/// display label vocabulary consumed by [StatusPill].
extension DeviceStatusX on DeviceStatus {
  AppSemantic get semantic => switch (this) {
    DeviceStatus.available => AppSemantic.neutral,
    DeviceStatus.assigned => AppSemantic.success,
    DeviceStatus.shippingPending => AppSemantic.warning,
    DeviceStatus.returnShippingPending => AppSemantic.warning,
    DeviceStatus.underRepair => AppSemantic.danger,
    DeviceStatus.maintenance => AppSemantic.danger,
    DeviceStatus.lost => AppSemantic.danger,
    DeviceStatus.retired => AppSemantic.neutral,
    DeviceStatus.returnedToClient => AppSemantic.neutral,
  };

  String get label => switch (this) {
    DeviceStatus.available => 'Available',
    DeviceStatus.assigned => 'Assigned',
    DeviceStatus.shippingPending => 'Shipping',
    DeviceStatus.returnShippingPending => 'Returning',
    DeviceStatus.underRepair => 'Repair',
    DeviceStatus.maintenance => 'Maintenance',
    DeviceStatus.lost => 'Lost',
    DeviceStatus.retired => 'Retired',
    DeviceStatus.returnedToClient => 'Returned to client',
  };
}

/// Parses the wire value (snake_case, per `device_status` in schema_v3.dbml)
/// into [DeviceStatus]. Unknown values fall back to [DeviceStatus.available]
/// rather than throwing, so an unmapped new status doesn't crash the list.
DeviceStatus deviceStatusFromWire(String value) => switch (value) {
  'available' => DeviceStatus.available,
  'assigned' => DeviceStatus.assigned,
  'shipping_pending' => DeviceStatus.shippingPending,
  'return_shipping_pending' => DeviceStatus.returnShippingPending,
  'under_repair' => DeviceStatus.underRepair,
  'maintenance' => DeviceStatus.maintenance,
  'lost' => DeviceStatus.lost,
  'retired' => DeviceStatus.retired,
  'returned_to_client' => DeviceStatus.returnedToClient,
  _ => DeviceStatus.available,
};
