/// Lifecycle status of a device/asset (from the inventory & device screens).
enum DeviceStatus { available, assigned, shipping, underRepair, retired, lost }

/// Status of an employee's device request (request list & management screens).
enum RequestStatus { pendingManager, pendingIt, assigned, rejected, completed }

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
