import 'package:json_annotation/json_annotation.dart';

/// Wire-value getters for enums passed as Retrofit `@Query` params —
/// Retrofit serializes query values via `toString()`, not the `@JsonValue`-
/// driven `fromJson`/`toJson` used for body/response fields, so these
/// mirror the `@JsonValue` strings above by hand for query-string use.
extension DeviceStatusWireValue on DeviceStatus {
  String toJson() => switch (this) {
    DeviceStatus.available => 'available',
    DeviceStatus.assigned => 'assigned',
    DeviceStatus.shippingPending => 'shipping_pending',
    DeviceStatus.returnShippingPending => 'return_shipping_pending',
    DeviceStatus.underRepair => 'under_repair',
    DeviceStatus.maintenance => 'maintenance',
    DeviceStatus.lost => 'lost',
    DeviceStatus.retired => 'retired',
    DeviceStatus.returnedToClient => 'returned_to_client',
  };
}

extension RequestStatusWireValue on RequestStatus {
  String toJson() => switch (this) {
    RequestStatus.requested => 'requested',
    RequestStatus.pendingMgrApproval => 'pending_mgr_approval',
    RequestStatus.pendingItApproval => 'pending_it_approval',
    RequestStatus.assigned => 'assigned',
    RequestStatus.completed => 'completed',
    RequestStatus.rejected => 'rejected',
    RequestStatus.cancelled => 'cancelled',
  };
}

extension SupportStatusWireValue on SupportStatus {
  String toJson() => switch (this) {
    SupportStatus.open => 'open',
    SupportStatus.inProgress => 'in_progress',
    SupportStatus.resolved => 'resolved',
  };
}

extension SupportTypeWireValue on SupportType {
  String toJson() => switch (this) {
    SupportType.update => 'update',
    SupportType.damage => 'damage',
    SupportType.lost => 'lost',
  };
}

extension ExtensionStatusWireValue on ExtensionStatus {
  String toJson() => switch (this) {
    ExtensionStatus.pending => 'pending',
    ExtensionStatus.approved => 'approved',
    ExtensionStatus.rejected => 'rejected',
  };
}

extension HandoverStatusWireValue on HandoverStatus {
  String toJson() => switch (this) {
    HandoverStatus.requested => 'requested',
    HandoverStatus.accepted => 'accepted',
    HandoverStatus.rejected => 'rejected',
    HandoverStatus.completed => 'completed',
    HandoverStatus.cancelled => 'cancelled',
  };
}

extension RequestPriorityWireValue on RequestPriority {
  String toJson() => switch (this) {
    RequestPriority.low => 'low',
    RequestPriority.medium => 'medium',
    RequestPriority.high => 'high',
  };
}

extension OwnerTypeWireValue on OwnerType {
  String toJson() => switch (this) {
    OwnerType.company => 'company',
    OwnerType.client => 'client',
  };
}

/// Lifecycle status of a device/asset (from the inventory & device screens).
///
/// Mirrors `device_status` in schema_v3.dbml exactly — values map 1:1 to the
/// Postgres enum (snake_case on the wire, camelCase here). [JsonValue]
/// annotations pin the wire representation so `fromJson`/`toJson` round-trip
/// correctly regardless of Dart member naming.
enum DeviceStatus {
  @JsonValue('available')
  available,
  @JsonValue('assigned')
  assigned,
  @JsonValue('shipping_pending')
  shippingPending,
  @JsonValue('return_shipping_pending')
  returnShippingPending,
  @JsonValue('under_repair')
  underRepair,
  @JsonValue('maintenance')
  maintenance,
  @JsonValue('lost')
  lost,
  @JsonValue('retired')
  retired,
  @JsonValue('returned_to_client')
  returnedToClient,
}

/// Status of an employee's device request (request list & management screens).
///
/// Mirrors `request_status` in schema_v3.dbml exactly.
enum RequestStatus {
  @JsonValue('requested')
  requested,
  @JsonValue('pending_mgr_approval')
  pendingMgrApproval,
  @JsonValue('pending_it_approval')
  pendingItApproval,
  @JsonValue('assigned')
  assigned,
  @JsonValue('completed')
  completed,
  @JsonValue('rejected')
  rejected,
  @JsonValue('cancelled')
  cancelled,
}

/// Status of a support ticket.
enum SupportStatus {
  @JsonValue('open')
  open,
  @JsonValue('in_progress')
  inProgress,
  @JsonValue('resolved')
  resolved,
}

/// Status of a peer-to-peer handover (owner decides; IT only audits).
enum HandoverStatus {
  @JsonValue('requested')
  requested,
  @JsonValue('accepted')
  accepted,
  @JsonValue('rejected')
  rejected,
  @JsonValue('completed')
  completed,
  @JsonValue('cancelled')
  cancelled,
}

/// Status of an assignment-extension request.
enum ExtensionStatus {
  @JsonValue('pending')
  pending,
  @JsonValue('approved')
  approved,
  @JsonValue('rejected')
  rejected,
}

/// Request priority.
enum RequestPriority {
  @JsonValue('low')
  low,
  @JsonValue('medium')
  medium,
  @JsonValue('high')
  high,
}

/// Whether a device is company-owned or client-owned.
enum OwnerType {
  @JsonValue('company')
  company,
  @JsonValue('client')
  client,
}

/// Manager approval leg — shared by `request` and `extension_request`.
///
/// Mirrors `mgr_approval_status` in schema_v3.dbml exactly.
enum MgrApprovalStatus {
  @JsonValue('not_required')
  notRequired,
  @JsonValue('pending')
  pending,
  @JsonValue('approved')
  approved,
  @JsonValue('rejected')
  rejected,
}

/// Who rejected a `request`. Mirrors `rejected_by_enum`.
enum RejectedBy {
  @JsonValue('manager')
  manager,
  @JsonValue('it_admin')
  itAdmin,
  @JsonValue('it_admin_cancel')
  itAdminCancel,
}

/// Category of a `support_request`. Mirrors `support_type`.
enum SupportType {
  @JsonValue('update')
  update,
  @JsonValue('damage')
  damage,
  @JsonValue('lost')
  lost,
}

/// How a `support_request` was resolved. Mirrors `support_resolution`.
enum SupportResolution {
  @JsonValue('remote_resolved')
  remoteResolved,
  @JsonValue('repaired_in_place')
  repairedInPlace,
  @JsonValue('swapped')
  swapped,
  @JsonValue('marked_lost')
  markedLost,
}

/// `device_log` event type — append-only audit trail. Mirrors
/// `device_log_event` exactly.
enum DeviceLogEvent {
  @JsonValue('device_created')
  deviceCreated,
  @JsonValue('device_edited')
  deviceEdited,
  @JsonValue('assigned')
  assigned,
  @JsonValue('client_assigned')
  clientAssigned,
  @JsonValue('ship_outbound_initiated')
  shipOutboundInitiated,
  @JsonValue('ship_outbound_completed')
  shipOutboundCompleted,
  @JsonValue('return_ship_initiated')
  returnShipInitiated,
  @JsonValue('return_received')
  returnReceived,
  @JsonValue('assignment_completed')
  assignmentCompleted,
  @JsonValue('status_changed')
  statusChanged,
  @JsonValue('support_opened')
  supportOpened,
  @JsonValue('support_resolved')
  supportResolved,
  @JsonValue('support_auto_closed')
  supportAutoClosed,
  @JsonValue('extension_requested')
  extensionRequested,
  @JsonValue('extension_approved')
  extensionApproved,
  @JsonValue('extension_rejected')
  extensionRejected,
  @JsonValue('handover_requested')
  handoverRequested,
  @JsonValue('handover_accepted')
  handoverAccepted,
  @JsonValue('handover_rejected')
  handoverRejected,
  @JsonValue('handover_cancelled')
  handoverCancelled,
  @JsonValue('handover_completed')
  handoverCompleted,
  @JsonValue('marked_lost')
  markedLost,
  @JsonValue('retired')
  retired,
  @JsonValue('returned_to_client')
  returnedToClient,
}

/// Actor role recorded on a `device_log` row. Mirrors `actor_role` — a
/// superset of [UserRole] that also allows `system` for automated events.
enum ActorRole {
  @JsonValue('employee')
  employee,
  @JsonValue('manager')
  manager,
  @JsonValue('it_admin')
  itAdmin,
  @JsonValue('system')
  system,
}
