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

/// Maps a [DeviceLogEvent] onto a timeline dot color (mockup A06 gives each
/// event kind a distinct color rather than a single uniform brand color) and
/// a human-readable title.
extension DeviceLogEventX on DeviceLogEvent {
  AppSemantic get timelineDotSemantic => switch (this) {
        DeviceLogEvent.assigned ||
        DeviceLogEvent.clientAssigned ||
        DeviceLogEvent.assignmentCompleted =>
          AppSemantic.brand,
        DeviceLogEvent.shipOutboundInitiated ||
        DeviceLogEvent.returnShipInitiated =>
          AppSemantic.info,
        DeviceLogEvent.shipOutboundCompleted ||
        DeviceLogEvent.returnReceived =>
          AppSemantic.success,
        DeviceLogEvent.supportOpened ||
        DeviceLogEvent.supportResolved ||
        DeviceLogEvent.supportAutoClosed =>
          AppSemantic.warning,
        DeviceLogEvent.handoverRequested ||
        DeviceLogEvent.handoverAccepted ||
        DeviceLogEvent.handoverRejected ||
        DeviceLogEvent.handoverCancelled ||
        DeviceLogEvent.handoverCompleted =>
          AppSemantic.brand,
        DeviceLogEvent.markedLost || DeviceLogEvent.retired => AppSemantic.danger,
        _ => AppSemantic.neutral,
      };

  String get title => switch (this) {
        DeviceLogEvent.deviceCreated => 'Device created',
        DeviceLogEvent.deviceEdited => 'Device edited',
        DeviceLogEvent.assigned => 'Assigned',
        DeviceLogEvent.clientAssigned => 'Client-assigned',
        DeviceLogEvent.shipOutboundInitiated => 'Shipped outbound',
        DeviceLogEvent.shipOutboundCompleted => 'Delivery confirmed',
        DeviceLogEvent.returnShipInitiated => 'Return shipment initiated',
        DeviceLogEvent.returnReceived => 'Return received',
        DeviceLogEvent.assignmentCompleted => 'Assignment completed',
        DeviceLogEvent.statusChanged => 'Status changed',
        DeviceLogEvent.supportOpened => 'Support ticket opened',
        DeviceLogEvent.supportResolved => 'Support ticket resolved',
        DeviceLogEvent.supportAutoClosed => 'Support ticket auto-closed',
        DeviceLogEvent.extensionRequested => 'Extension requested',
        DeviceLogEvent.extensionApproved => 'Extension approved',
        DeviceLogEvent.extensionRejected => 'Extension rejected',
        DeviceLogEvent.handoverRequested => 'Handover requested',
        DeviceLogEvent.handoverAccepted => 'Handover accepted',
        DeviceLogEvent.handoverRejected => 'Handover rejected',
        DeviceLogEvent.handoverCancelled => 'Handover cancelled',
        DeviceLogEvent.handoverCompleted => 'Handover completed',
        DeviceLogEvent.markedLost => 'Marked lost',
        DeviceLogEvent.retired => 'Retired',
        DeviceLogEvent.returnedToClient => 'Returned to client',
      };
}
