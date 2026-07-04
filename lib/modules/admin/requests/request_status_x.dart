import '../../../values/enumeration/statuses.dart';
import '../../../widgets/widgets.dart';

/// Maps [RequestStatus]/[RequestPriority] onto the domain-blind
/// [AppSemantic] enum, per the widget library's convention (widgets never
/// import `values/enumeration/statuses.dart`; modules own this mapping).
extension RequestStatusX on RequestStatus {
  AppSemantic get semantic => switch (this) {
        RequestStatus.requested => AppSemantic.neutral,
        RequestStatus.pendingMgrApproval => AppSemantic.neutral,
        RequestStatus.pendingItApproval => AppSemantic.warning,
        RequestStatus.assigned => AppSemantic.success,
        RequestStatus.rejected => AppSemantic.danger,
        RequestStatus.cancelled => AppSemantic.neutral,
        RequestStatus.completed => AppSemantic.neutral,
      };

  String get label => switch (this) {
        RequestStatus.requested => 'Requested',
        RequestStatus.pendingMgrApproval => 'Pending RM',
        RequestStatus.pendingItApproval => 'Pending IT',
        RequestStatus.assigned => 'Assigned',
        RequestStatus.rejected => 'Rejected',
        RequestStatus.cancelled => 'Cancelled',
        RequestStatus.completed => 'Completed',
      };
}

extension RequestPriorityX on RequestPriority {
  AppSemantic get semantic => switch (this) {
        RequestPriority.low => AppSemantic.neutral,
        RequestPriority.medium => AppSemantic.info,
        RequestPriority.high => AppSemantic.danger,
      };

  String get label => switch (this) {
        RequestPriority.low => 'Low',
        RequestPriority.medium => 'Medium',
        RequestPriority.high => 'High',
      };
}
