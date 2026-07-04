import '../../../values/enumeration/statuses.dart';
import '../../../widgets/widgets.dart';

/// Maps [DeviceStatus]/[OwnerType]/[SupportStatus] onto the domain-blind
/// [AppSemantic] enum, per the widget library's convention (widgets never
/// import `values/enumeration/statuses.dart`; modules own this mapping).
extension DeviceStatusX on DeviceStatus {
  AppSemantic get semantic => switch (this) {
        DeviceStatus.available => AppSemantic.success,
        DeviceStatus.assigned => AppSemantic.info,
        DeviceStatus.shippingPending => AppSemantic.warning,
        DeviceStatus.returnShippingPending => AppSemantic.warning,
        DeviceStatus.underRepair => AppSemantic.danger,
        DeviceStatus.maintenance => AppSemantic.warning,
        DeviceStatus.lost => AppSemantic.danger,
        DeviceStatus.retired => AppSemantic.neutral,
        DeviceStatus.returnedToClient => AppSemantic.neutral,
      };

  String get label => switch (this) {
        DeviceStatus.available => 'Available',
        DeviceStatus.assigned => 'Assigned',
        DeviceStatus.shippingPending => 'Shipping',
        DeviceStatus.returnShippingPending => 'Return shipping',
        DeviceStatus.underRepair => 'Under repair',
        DeviceStatus.maintenance => 'Maintenance',
        DeviceStatus.lost => 'Lost',
        DeviceStatus.retired => 'Retired',
        DeviceStatus.returnedToClient => 'Returned to client',
      };
}

extension OwnerTypeX on OwnerType {
  String get label => switch (this) {
        OwnerType.company => 'Company',
        OwnerType.client => 'Client',
      };
}

extension SupportStatusX on SupportStatus {
  AppSemantic get semantic => switch (this) {
        SupportStatus.open => AppSemantic.warning,
        SupportStatus.inProgress => AppSemantic.info,
        SupportStatus.resolved => AppSemantic.success,
      };

  String get label => switch (this) {
        SupportStatus.open => 'Open',
        SupportStatus.inProgress => 'In progress',
        SupportStatus.resolved => 'Resolved',
      };
}

extension HandoverStatusX on HandoverStatus {
  AppSemantic get semantic => switch (this) {
        HandoverStatus.accepted => AppSemantic.success,
        HandoverStatus.requested => AppSemantic.warning,
        HandoverStatus.rejected => AppSemantic.danger,
        HandoverStatus.completed || HandoverStatus.cancelled => AppSemantic.neutral,
      };

  String get label => switch (this) {
        HandoverStatus.accepted => 'Accepted',
        HandoverStatus.requested => 'Requested',
        HandoverStatus.rejected => 'Rejected',
        HandoverStatus.completed => 'Completed',
        HandoverStatus.cancelled => 'Cancelled',
      };
}

/// Maps a [DeviceTimelineEventResDm.kind] onto a timeline dot color
/// (mockup A06 gives each event kind a distinct color rather than a single
/// uniform brand color).
extension DeviceTimelineEventKindX on String {
  AppSemantic get timelineDotSemantic => switch (this) {
        'assignment' => AppSemantic.brand,
        'shipping' => AppSemantic.info,
        'delivery' => AppSemantic.success,
        'support' => AppSemantic.warning,
        'handover' => AppSemantic.brand,
        _ => AppSemantic.neutral,
      };
}
