import '../../../values/enumeration/statuses.dart';
import '../../../widgets/widget_enums.dart';

/// Maps [RequestStatus] onto the shared, domain-blind [AppSemantic] +
/// display label vocabulary consumed by [StatusPill].
extension RequestStatusX on RequestStatus {
  AppSemantic get semantic => switch (this) {
    RequestStatus.requested => AppSemantic.info,
    RequestStatus.pendingMgrApproval => AppSemantic.warning,
    RequestStatus.pendingItApproval => AppSemantic.warning,
    RequestStatus.assigned => AppSemantic.success,
    RequestStatus.completed => AppSemantic.neutral,
    RequestStatus.rejected => AppSemantic.danger,
    RequestStatus.cancelled => AppSemantic.neutral,
  };

  String get label => switch (this) {
    RequestStatus.requested => 'Requested',
    RequestStatus.pendingMgrApproval => 'Pending mgr',
    RequestStatus.pendingItApproval => 'Pending IT',
    RequestStatus.assigned => 'Assigned',
    RequestStatus.completed => 'Completed',
    RequestStatus.rejected => 'Rejected',
    RequestStatus.cancelled => 'Cancelled',
  };
}

/// Parses the wire value (snake_case, per `request_status` in
/// schema_v3.dbml) into [RequestStatus]. Unknown values fall back to
/// [RequestStatus.requested] rather than throwing.
RequestStatus requestStatusFromWire(String value) => switch (value) {
  'requested' => RequestStatus.requested,
  'pending_mgr_approval' => RequestStatus.pendingMgrApproval,
  'pending_it_approval' => RequestStatus.pendingItApproval,
  'assigned' => RequestStatus.assigned,
  'completed' => RequestStatus.completed,
  'rejected' => RequestStatus.rejected,
  'cancelled' => RequestStatus.cancelled,
  _ => RequestStatus.requested,
};

/// Maps [RequestPriority] onto [AppSemantic] + display label for
/// [PriorityTag].
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

/// Parses the wire value into [RequestPriority]; unknown values fall back
/// to [RequestPriority.medium].
RequestPriority requestPriorityFromWire(String value) => switch (value) {
  'low' => RequestPriority.low,
  'medium' => RequestPriority.medium,
  'high' => RequestPriority.high,
  _ => RequestPriority.medium,
};

/// Display label for [MgrApprovalStatus] (Request Detail's "Manager
/// approval" row).
extension MgrApprovalStatusX on MgrApprovalStatus {
  String get label => switch (this) {
    MgrApprovalStatus.notRequired => 'Not required',
    MgrApprovalStatus.pending => 'Pending',
    MgrApprovalStatus.approved => 'Approved',
    MgrApprovalStatus.rejected => 'Rejected',
  };
}

/// Parses the wire value into [MgrApprovalStatus]; unknown values fall
/// back to [MgrApprovalStatus.notRequired].
MgrApprovalStatus mgrApprovalStatusFromWire(String value) => switch (value) {
  'not_required' => MgrApprovalStatus.notRequired,
  'pending' => MgrApprovalStatus.pending,
  'approved' => MgrApprovalStatus.approved,
  'rejected' => MgrApprovalStatus.rejected,
  _ => MgrApprovalStatus.notRequired,
};
