/// Lifecycle status of a device/asset (from the inventory & device screens).
///
/// Mirrors `device_status` in schema_v3.dbml exactly — values map 1:1 to the
/// Postgres enum (snake_case on the wire, camelCase here).
enum DeviceStatus {
  available,
  assigned,
  shippingPending,
  returnShippingPending,
  underRepair,
  maintenance,
  lost,
  retired,
  returnedToClient,
}

/// Status of an employee's device request (request list & management screens).
///
/// Mirrors `request_status` in schema_v3.dbml exactly.
enum RequestStatus {
  requested,
  pendingMgrApproval,
  pendingItApproval,
  assigned,
  completed,
  rejected,
  cancelled,
}

/// Status of a support ticket.
enum SupportStatus { open, inProgress, resolved }

/// Status of a peer-to-peer handover (owner decides; IT only audits).
enum HandoverStatus { requested, accepted, rejected, completed, cancelled }

/// Status of an assignment-extension request.
enum ExtensionStatus { pending, approved, rejected }

/// Request priority.
enum RequestPriority { low, medium, high }

/// Whether a device is company-owned or client-owned.
enum OwnerType { company, client }
