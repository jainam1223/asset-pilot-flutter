# API.md — Desktop (IT Admin / Manager) Module

> Scope: IT Admin and Manager operations per the IT Admin Desktop wireframe,
> `PROJECT.md`, `WORKFLOWS.md`, and `schema_v3.dbml`. All endpoints are
> scoped to the authenticated user (`:userId`) via session/JWT; role checks
> are noted per endpoint. List endpoints support standard pagination
> (omitted below). Every state-changing write is paired with a `device_log`
> insert where a device is involved, per `WORKFLOWS.md` §9–10.
>
> **Not covered in this pass:** QR Code Management and a standalone
> Maintenance screen — both wireframe screens exist, but weren't in this
> round's requested screen list. Maintenance is already fully served by the
> generic status-change endpoint under Inventory Management (§8); QR
> regeneration would need one small new endpoint (`item.qr_code_token`
> regen) if/when that screen is in scope.

---

## 1. Dashboard

### Get Summary KPIs

- **Endpoint:** `GET /admin/dashboard/summary`
- **Method:** GET
- **Request Args:** none
- **Response:** `{ total_devices, assigned_count, status_breakdown: {available, assigned, under_repair, maintenance, lost, retired, ...}, pending_requests_count, in_transit_count, open_support_count, active_handovers_count, pending_extensions_count }`
- **Backend Logic:** Parallel aggregate counts — `item` grouped by `status`; `request WHERE status IN ('pending_mgr_approval','pending_it_approval')`; `item WHERE status IN ('shipping_pending','return_shipping_pending')`; `support_request WHERE status IN ('open','in_progress')`; `handover_request WHERE status = 'accepted'`; `extension_request WHERE status = 'pending'`.

### Get Recent Requests

- **Endpoint:** `GET /admin/dashboard/recent-requests`
- **Method:** GET
- **Request Args:** `limit` (default 10)
- **Response:** `[{ id, requester_name, category_name, status, created_at }]`
- **Backend Logic:** `request JOIN user JOIN item_category ORDER BY created_at DESC LIMIT :limit`.

### Get Open Support Snapshot

- **Endpoint:** `GET /admin/dashboard/open-support`
- **Method:** GET
- **Request Args:** `limit` (default 10)
- **Response:** `[{ id, item_name, type, status, filed_at }]`
- **Backend Logic:** `support_request WHERE status IN ('open','in_progress') ORDER BY filed_at ASC LIMIT :limit` — same ordering as the IT open-queue index.

---

## 2. Request Management

### List All Requests

- **Endpoint:** `GET /admin/requests`
- **Method:** GET
- **Request Args:** `status, category_id, priority, requested_from, requested_to, search` (all optional)
- **Response:** `[{ id, requester_name, category_name, priority, status, requested_from, requested_to, mgr_approval_status }]`
- **Backend Logic:** `request JOIN user JOIN item_category` with optional filters; `search` matches requester `name`/`email`. Rows are permanent (`PROJECT.md` Rule 2) so completed/rejected requests remain queryable here indefinitely — this is the full history view, not just active requests.

---

## 3. Manager Approvals

Role: `manager`. Scoped to the signed-in manager's own direct reports' requests.

### List My Pending Approvals

- **Endpoint:** `GET /manager/approvals`
- **Method:** GET
- **Request Args:** none
- **Response:** `[{ id, requester_name, category_name, priority, note, requested_from, requested_to }]`
- **Backend Logic:** `request WHERE manager_id = :userId AND mgr_approval_status = 'pending' AND status = 'pending_mgr_approval'`.

### Approve Request

- **Endpoint:** `PATCH /manager/requests/{id}/approve`
- **Method:** PATCH
- **Request Args:** `{ manager_decision_note }` (optional)
- **Response:** `{ id, status, mgr_approval_status }`
- **Backend Logic:** Validate `request.manager_id = :userId`, `mgr_approval_status = 'pending'`. Update `mgr_approval_status = 'approved'`, `manager_decision_note`, `manager_decided_at = now()`, `status = 'pending_it_approval'`. No `device_log` write — no device chosen yet (`PROJECT.md`: device timeline starts once a device is selected).

### Reject Request

- **Endpoint:** `PATCH /manager/requests/{id}/reject`
- **Method:** PATCH
- **Request Args:** `{ rejected_reason, manager_decision_note }`
- **Response:** `{ id, status, mgr_approval_status }`
- **Backend Logic:** Validate `manager_id = :userId`, `mgr_approval_status = 'pending'`. Update `mgr_approval_status = 'rejected'`, `status = 'rejected'`, `rejected_by = 'manager'`, `rejected_reason`, `manager_decision_note`, `manager_decided_at = now()`.

---

## 4. IT Approvals

Role: `it_admin`. Scoped to requests awaiting IT action (approval happens via **Device Assignment**, §6 — this section covers the queue plus the two non-assignment IT actions).

### List IT Approval Queue

- **Endpoint:** `GET /it/approvals`
- **Method:** GET
- **Request Args:** none
- **Response:** `[{ id, requester_name, category_name, priority, requested_from, requested_to, is_wfh }]`
- **Backend Logic:** `request WHERE status = 'pending_it_approval' ORDER BY priority DESC, created_at ASC` (`idx_request_it_queue`).

### Reject Request (IT)

- **Endpoint:** `PATCH /it/requests/{id}/reject`
- **Method:** PATCH
- **Request Args:** `{ rejected_reason, it_decision_note }`
- **Response:** `{ id, status }`
- **Backend Logic:** Validate `status = 'pending_it_approval'`. Update `status = 'rejected'`, `rejected_by = 'it_admin'`, `rejected_reason`, `it_decision_note`, `it_decided_by = :userId`, `it_decided_at = now()`.

### Cancel Request (IT)

- **Endpoint:** `PATCH /it/requests/{id}/cancel`
- **Method:** PATCH
- **Request Args:** `{ rejected_reason }`
- **Response:** `{ id, status }`
- **Backend Logic:** Covers the edge case where a pending request must be pulled (e.g. its category's only devices went `lost`/`retired` before assignment). Validate `status` is non-terminal. Update `status = 'cancelled'`, `cancelled_by = :userId`, `cancelled_at = now()`, `rejected_by = 'it_admin_cancel'`, `rejected_reason`.

### Escalate to Manager Approval

- **Endpoint:** `PATCH /it/requests/{id}/escalate-to-manager`
- **Method:** PATCH
- **Request Args:** `{ manager_id }` (optional — defaults to requester's current `user.manager_id` if not supplied)
- **Response:** `{ id, status, requires_mgr_approval, mgr_approval_status }`
- **Backend Logic:** Validate `status = 'pending_it_approval'` and `requires_mgr_approval = false`. Update `requires_mgr_approval = true`, `mgr_approval_status = 'pending'`, `manager_id`, `status = 'pending_mgr_approval'`. Matches the schema's documented late-escalation case (`request.requires_mgr_approval` note: _"IT can flip true for late escalation"_).

---

## 5. Request Details

### Get Request Detail

- **Endpoint:** `GET /admin/requests/{id}`
- **Method:** GET
- **Request Args:** `id` (path)
- **Response:** `{ id, requester, category, priority, note, requested_from, requested_to, assigned_from, assigned_to, status, mgr_approval_status, manager_decision_note, it_decision_note, rejected_reason, is_wfh, ship_tracking_url, return_tracking_url, assigned_item: { id, name, serial_no, status } }`
- **Backend Logic:** Single-row `request` fetch, joined to `user` (requester, manager, decision actors), `item_category`, and `item` via `assigned_item_id` if set.

---

## 6. Device Assignment

Covers the suggestion window, calendar overlay, and the assignment action for a `pending_it_approval` request.

### Get Suggested Devices

- **Endpoint:** `GET /admin/requests/{id}/suggested-devices`
- **Method:** GET
- **Request Args:** `id` (path)
- **Response:** `[{ item_id, name, serial_no, active_bookings_count, free_until }]`
- **Backend Logic:** `item WHERE category_id = request.category_id AND status = 'available'` (`idx_item_available_by_category`), excluding any device with a `request` row where `assigned_from < requested_to AND assigned_to > requested_from` (`idx_request_date_range` overlap check). Sorted by fewest active requests, then longest free.

### Get Device Booking Calendar

- **Endpoint:** `GET /admin/items/{itemId}/bookings`
- **Method:** GET
- **Request Args:** `itemId` (path)
- **Response:** `[{ request_id, requester_name, assigned_from, assigned_to }]`
- **Backend Logic:** `request WHERE assigned_item_id = :itemId AND status = 'assigned' ORDER BY assigned_from`. Feeds the calendar overlay so IT can see conflicts before confirming.

### Adjust an Existing Booking's Range

- **Endpoint:** `PATCH /admin/requests/{conflictingRequestId}/booking-range`
- **Method:** PATCH
- **Request Args:** `{ assigned_from, assigned_to }`
- **Response:** `{ id, assigned_from, assigned_to }`
- **Backend Logic:** Validate target `status = 'assigned'`. Update the range, re-check it doesn't newly overlap any _other_ active request on the same device. Triggers an email notification to that request's requester (range changed by IT) — per `WORKFLOWS.md` §5.

### Assign Device to Request

- **Endpoint:** `POST /admin/requests/{id}/assign`
- **Method:** POST
- **Request Args:** `{ item_id, assigned_from, assigned_to, is_wfh }`
- **Response:** `{ id, status, assigned_item_id, assigned_from, assigned_to }`
- **Backend Logic:** Validate `request.status = 'pending_it_approval'`, `item.status = 'available'`, `item.category_id = request.category_id`, and no overlapping active request on the item. Update `request`: `assigned_item_id`, `assigned_from`, `assigned_to`, `is_wfh`, `it_decided_by = :userId`, `it_decided_at = now()`, `status = 'assigned'`. Update `item`: `status = 'assigned'`, `current_owner_id = request.requester_id`. Insert `device_log`: `event_type = 'assigned'`, `actor_role = 'it_admin'`, `request_id`, `is_milestone = true`. _(The `is_wfh` param here lets IT confirm/override the employee's flag at assignment time — the wireframe shows this toggle on the assign form; `WORKFLOWS.md` otherwise only describes `is_wfh` as employee-set at request creation. Flagged in Gaps below.)_ Shipping itself (moving `item.status` to `shipping_pending`) happens separately in §11 — assignment always lands the device on `assigned` first, matching the lifecycle diagram in `WORKFLOWS.md` §11.

---

## 7. Direct Client Device Assignment

### List Available Client Devices

- **Endpoint:** `GET /admin/items/client-available`
- **Method:** GET
- **Request Args:** `category_id, search` (optional)
- **Response:** `[{ id, name, serial_no, client_name, category_name }]`
- **Backend Logic:** `item WHERE owner_type = 'client' AND status = 'available'`.

### Direct-Assign Client Device

- **Endpoint:** `POST /admin/items/{itemId}/direct-assign`
- **Method:** POST
- **Request Args:** `{ employee_id, assigned_from, assigned_to, note }`
- **Response:** `{ item_id, status, request_id }`
- **Backend Logic:** Validate `item.owner_type = 'client'`, `status = 'available'`. Insert a `request` row for audit symmetry (`is_client_direct = true`, `status = 'assigned'` directly — no approval states), `category_id = item.category_id`, `requester_id = employee_id`, `assigned_item_id = itemId`, `assigned_from/to`, `it_decided_by = :userId`, `it_decided_at = now()`. Update `item`: `status = 'assigned'`, `current_owner_id = employee_id`. Insert `device_log`: `event_type = 'client_assigned'`, `actor_role = 'it_admin'`, `is_milestone = true`.

---

## 8. Inventory Management

### List Devices

- **Endpoint:** `GET /admin/items`
- **Method:** GET
- **Request Args:** `category_id, status, owner_type, search` (optional)
- **Response:** `[{ id, name, serial_no, category_name, owner_type, status, current_owner_name, purchase_date }]`
- **Backend Logic:** `item JOIN item_category` [`LEFT JOIN user` on `current_owner_id`] with filters. `search` matches `name`/`serial_no`.

### Create Device

- **Endpoint:** `POST /admin/items`
- **Method:** POST
- **Request Args:** `{ name, serial_no, category_id, owner_type, client_name, purchase_date }`
- **Response:** `{ id, status }`
- **Backend Logic:** Insert `item`, `status` defaults to `'available'`. `client_name` only meaningful when `owner_type = 'client'`. Insert `device_log`: `event_type = 'device_created'`, `actor_role = 'it_admin'`, `is_milestone = false`.

### Edit Device

- **Endpoint:** `PATCH /admin/items/{itemId}`
- **Method:** PATCH
- **Request Args:** `{ name, category_id, client_name, purchase_date }`
- **Response:** `{ id }`
- **Backend Logic:** Update fields provided. Insert `device_log`: `event_type = 'device_edited'`, `is_milestone = false`.

### Change Device Status

- **Endpoint:** `PATCH /admin/items/{itemId}/status`
- **Method:** PATCH
- **Request Args:** `{ status, it_note }`
- **Response:** `{ id, status }`
- **Backend Logic:** Covers Maintenance, manual repair-cycle transitions, and the manual post-Lost decision (`WORKFLOWS.md` §3/§9 — no automatic Lost → Retired). Update `item.status`. `device_log.event_type` dispatches by target status: `'lost'` → `marked_lost`; `'retired'` → `retired`; `'returned_to_client'` → `returned_to_client`; anything else (`available`, `under_repair`, `maintenance`) → `status_changed`. `actor_role = 'it_admin'` always — this endpoint is never system-triggered. `is_milestone = true`.

---

## 9. Device Details & Timeline

### Get Device Detail

- **Endpoint:** `GET /admin/items/{itemId}`
- **Method:** GET
- **Request Args:** `itemId` (path)
- **Response:** `{ id, name, serial_no, category_name, owner_type, client_name, status, current_owner_name, purchase_date, qr_code_token, current_request: { id, requester_name, assigned_from, assigned_to, is_wfh, ship_tracking_url, return_tracking_url }, open_support: [...], active_handover: {...} }`
- **Backend Logic:** `item` fetch + active `request` (`assigned_item_id = itemId AND status = 'assigned'`) + `support_request WHERE item_id = itemId AND status IN ('open','in_progress')` + `handover_request WHERE item_id = itemId AND status = 'accepted'`.

### Get Device Timeline

- **Endpoint:** `GET /admin/items/{itemId}/timeline`
- **Method:** GET
- **Request Args:** `milestones_only` (boolean, default `true`)
- **Response:** `[{ event_type, actor_role, from_value, to_value, note, metadata, occurred_at }]`
- **Backend Logic:** `device_log WHERE item_id = :itemId [AND is_milestone = true] ORDER BY occurred_at`. Append-only source — no update/delete path exists on this table by design.

---

## 10. Support Requests

### List Support Requests

- **Endpoint:** `GET /admin/support-requests`
- **Method:** GET
- **Request Args:** `status, type, item_id` (optional)
- **Response:** `[{ id, item_name, type, description, status, filed_at, requester_name }]`
- **Backend Logic:** `support_request JOIN item JOIN user` with filters; default order `filed_at ASC` (`idx_support_open_queue`).

### Get Support Request Detail

- **Endpoint:** `GET /admin/support-requests/{id}`
- **Method:** GET
- **Request Args:** `id` (path)
- **Response:** full row + `item` + `requester` info
- **Backend Logic:** Single-row fetch with joins.

### Mark In Progress

- **Endpoint:** `PATCH /admin/support-requests/{id}/start`
- **Method:** PATCH
- **Request Args:** none
- **Response:** `{ id, status }`
- **Backend Logic:** Update `status = 'in_progress'`. If `type = 'damage'`, also set `item.status = 'under_repair'` and insert `device_log`: `event_type = 'status_changed'`, `support_request_id`, `is_milestone = true` — this is when repair-in-place physically begins.

### Resolve Support Request

- **Endpoint:** `PATCH /admin/support-requests/{id}/resolve`
- **Method:** PATCH
- **Request Args:** `{ resolution, it_note, swapped_to_item_id, old_item_next_status }` (last two only for `resolution = 'swapped'`)
- **Response:** `{ id, status, resolution }`
- **Backend Logic:** Update `support_request`: `status = 'resolved'`, `resolution`, `it_note`, `resolved_by = :userId`, `resolved_at = now()`. Then, by `resolution`:
  - `remote_resolved` (Update): no `item.status` change.
  - `repaired_in_place`: `item.status = 'assigned'` (back to prior owner, same request untouched). `device_log`: `status_changed`.
  - `swapped`: validate `swapped_to_item_id.status = 'available'` and same `category_id`. Repoint the active `request.assigned_item_id` to `swapped_to_item_id` (per one-active-request-per-item invariant — the request continues on the new device). Old item: `status = old_item_next_status`, `current_owner_id = NULL`. New item: `status = 'assigned'`, `current_owner_id` = the request's requester. `device_log` on old item: `status_changed`, `metadata: { swapped_to_item_id }`. `device_log` on new item: `status_changed`, `metadata: { swapped_from_item_id }`.
  - `marked_lost`: `item.status = 'lost'`, `device_log: marked_lost`. Also completes the tied `request` (`status = 'completed'`, `completed_at`, `completed_by`, `completed_next_status = NULL` — the device's eventual next status is decided later via §8's status-change endpoint, since there's no physical-receipt event for a lost device to gate on).
  - In all cases, insert `device_log`: `event_type = 'support_resolved'`, `support_request_id`, `is_milestone = true`.

---

## 11. WFH Shipping

### Get Outbound Shipping Queue

- **Endpoint:** `GET /admin/shipping/outbound`
- **Method:** GET
- **Request Args:** none
- **Response:** `[{ request_id, requester_name, item_name, it_decided_at }]`
- **Backend Logic:** `request WHERE is_wfh = true AND status = 'assigned' AND ship_initiated_at IS NULL` (item is `assigned`, awaiting shipment).

### Mark Shipped

- **Endpoint:** `POST /admin/requests/{id}/ship`
- **Method:** POST
- **Request Args:** `{ ship_tracking_url }`
- **Response:** `{ item_status, ship_initiated_at }`
- **Backend Logic:** Validate `request.is_wfh = true`, `item.status = 'assigned'`. Update `request.ship_tracking_url`, `ship_initiated_at = now()`. Update `item.status = 'shipping_pending'`. Insert `device_log`: `event_type = 'ship_outbound_initiated'`, `metadata: { ship_tracking_url }`, `is_milestone = false`.

### Confirm Delivery

- **Endpoint:** `POST /admin/requests/{id}/confirm-delivery`
- **Method:** POST
- **Request Args:** none
- **Response:** `{ item_status, ship_completed_at }`
- **Backend Logic:** Validate `item.status = 'shipping_pending'`. Update `request.ship_completed_at = now()`, `item.status = 'assigned'`. Insert `device_log`: `event_type = 'ship_outbound_completed'`, `is_milestone = false`.

---

## 12. Device Returns

Covers both on-site (IT-initiated) and WFH (employee-initiated transit, IT confirms receipt) returns — one endpoint, two entry validations, since the completion logic is identical either way.

### Get Return Queue (WFH inbound)

- **Endpoint:** `GET /admin/shipping/returns`
- **Method:** GET
- **Request Args:** none
- **Response:** `[{ request_id, requester_name, item_name, return_initiated_at, return_tracking_url }]`
- **Backend Logic:** `request` joined to `item WHERE item.status = 'return_shipping_pending'`.

### Complete Return

- **Endpoint:** `POST /admin/requests/{id}/complete-return`
- **Method:** POST
- **Request Args:** `{ next_status }` (`available | under_repair | retired`)
- **Response:** `{ status, item_status }`
- **Backend Logic:** Validate `item.status IN ('assigned', 'return_shipping_pending')` — `assigned` for on-site (IT-initiated directly from Device Detail, `request.is_wfh = false`), `return_shipping_pending` for WFH (employee already initiated). Update `request`: `status = 'completed'`, `completed_at = now()`, `completed_by = :userId`, `completed_next_status = next_status`. Update `item.status = next_status`, `current_owner_id = NULL`. Insert `device_log`: `event_type = 'return_received'`, `to_value = next_status`, `is_milestone = true`. **Cascade:** any `support_request` on this item with `status IN ('open','in_progress')` is auto-closed — `status = 'resolved'`, `auto_closed = true`, `resolved_at = now()`, `it_note = 'Auto-closed: parent request completed'`; insert `device_log`: `support_auto_closed`, `actor_role = 'system'`, `is_milestone = false` per ticket closed.

---

## 13. Extension Requests

### List Extension Requests

- **Endpoint:** `GET /admin/extension-requests`
- **Method:** GET
- **Request Args:** `status` (optional)
- **Response:** `[{ id, requester_name, item_name, current_assigned_to, extended_to, mgr_approval_status, status }]`
- **Backend Logic:** `extension_request JOIN request JOIN item JOIN user`.

### Get Extension Request Detail

- **Endpoint:** `GET /admin/extension-requests/{id}`
- **Method:** GET
- **Request Args:** `id` (path)
- **Response:** full row + parent `request` + `item` info
- **Backend Logic:** Single-row fetch with joins.

### Manager Approve/Reject Extension

- **Endpoint:** `PATCH /manager/extension-requests/{id}/approve` · `PATCH /manager/extension-requests/{id}/reject`
- **Method:** PATCH
- **Request Args:** `{ manager_note }`
- **Response:** `{ id, mgr_approval_status, status }`
- **Backend Logic:** Validate `manager_id = :userId`, `mgr_approval_status = 'pending'`. Approve: `mgr_approval_status = 'approved'`. Reject: `mgr_approval_status = 'rejected'`, `status = 'rejected'` (terminal, same pattern as a normal request rejection).

### IT Approve Extension

- **Endpoint:** `PATCH /admin/extension-requests/{id}/approve`
- **Method:** PATCH
- **Request Args:** `{ it_note }`
- **Response:** `{ id, status }`
- **Backend Logic:** Validate `status = 'pending'` and `mgr_approval_status IN ('not_required', 'approved')`. Update parent `request.assigned_to = extension_request.extended_to`. Update `extension_request`: `status = 'approved'`, `it_decided_by = :userId`, `it_note`, `it_decided_at = now()`. Insert `device_log` on the parent's device: `event_type = 'extension_approved'`, `is_milestone = false`.

### IT Reject Extension

- **Endpoint:** `PATCH /admin/extension-requests/{id}/reject`
- **Method:** PATCH
- **Request Args:** `{ it_note }`
- **Response:** `{ id, status }`
- **Backend Logic:** Update `extension_request.status = 'rejected'`, `it_note`, `it_decided_by`, `it_decided_at`. Insert `device_log`: `event_type = 'extension_rejected'`, `is_milestone = false`.

---

## 14. Temporary Handovers

Read-only for IT — the workflow itself is entirely peer-to-peer via the employee mobile app; IT never approves or intervenes (`WORKFLOWS.md` §7).

### List Handovers (audit view)

- **Endpoint:** `GET /admin/handover-requests`
- **Method:** GET
- **Request Args:** `status, item_id` (optional)
- **Response:** `[{ id, item_name, owner_name, borrower_name, requested_duration_hours, status, requested_at, decided_at, completed_at }]`
- **Backend Logic:** `handover_request JOIN item JOIN user (owner) JOIN user (borrower)`. No write endpoints — "View Device Timeline" row action reuses §9's timeline endpoint, not a new one.

---

## 15. User Management

### List Users

- **Endpoint:** `GET /admin/users`
- **Method:** GET
- **Request Args:** `role, is_active, search` (optional)
- **Response:** `[{ id, name, email, role, manager_name, is_active }]`
- **Backend Logic:** `user LEFT JOIN user (manager)` with filters; `search` matches `name`/`email`.

### Invite User

- **Endpoint:** `POST /admin/users`
- **Method:** POST
- **Request Args:** `{ name, email, role }`
- **Response:** `{ id }`
- **Backend Logic:** Insert `user`, `is_active = true` default. `manager_id` is **not** set here — per `PROJECT.md`, manager assignment is self-service via the employee's own profile edit, not an IT action.

### Edit User Role

- **Endpoint:** `PATCH /admin/users/{id}/role`
- **Method:** PATCH
- **Request Args:** `{ role }`
- **Response:** `{ id, role }`
- **Backend Logic:** Update `user.role`.

### Activate / Deactivate User

- **Endpoint:** `PATCH /admin/users/{id}/activate` · `PATCH /admin/users/{id}/deactivate`
- **Method:** PATCH
- **Request Args:** none
- **Response:** `{ id, is_active }`
- **Backend Logic:** Update `user.is_active`. Does **not** cascade to that user's active requests/devices — see Gaps below.

---

## 16. Search, Filters & Dropdown APIs

### Item Categories Dropdown

- **Endpoint:** `GET /admin/dropdowns/item-categories`
- **Method:** GET
- **Request Args:** none
- **Response:** `[{ id, name, requires_mgr_approval }]`
- **Backend Logic:** `item_category WHERE is_active = true`.

### Managers Dropdown

- **Endpoint:** `GET /admin/dropdowns/managers`
- **Method:** GET
- **Request Args:** none
- **Response:** `[{ id, name }]`
- **Backend Logic:** `user WHERE role = 'manager' AND is_active = true`. Used by the escalate-to-manager action (§4).

### Employees Dropdown

- **Endpoint:** `GET /admin/dropdowns/employees`
- **Method:** GET
- **Request Args:** none
- **Response:** `[{ id, name }]`
- **Backend Logic:** `user WHERE role = 'employee' AND is_active = true`. Used by Direct Client Assignment (§7).

> Inventory search, support-request search, and request search all reuse
> their respective list endpoints' `search` query param (§8, §10, §2) —
> no separate search endpoints are needed.

---

## Gaps / Assumptions Flagged for Confirmation

1. **`is_wfh` override at assignment (§6).** The wireframe's assign form includes an `is_wfh` toggle, implying IT can confirm or override the flag the employee set at request creation. `WORKFLOWS.md` only describes `is_wfh` as employee-set at creation and doesn't mention IT changing it later. Implemented as editable per the wireframe; confirm this is intended before building.
2. **Client-direct assignment creates a `request` row (§7).** `WORKFLOWS.md` says client devices "skip the request lifecycle entirely," but `request.is_client_direct` exists specifically as a field _on_ that table, implying a row is still inserted (directly at `status = 'assigned'`) for audit symmetry. Implemented that way; flagging since the wireframe text alone doesn't state it.
3. **Swap resolution needs the old device's next status (§10).** The wireframe's Resolve Panel only shows a swap-target field; it doesn't capture what happens to the _old_, damaged device (repair it, retire it, or mark it lost). Added `old_item_next_status` as a required param — without it the swap is incomplete.
4. **Request completion timing on `marked_lost` (§10).** Since a lost device is never physically "received," the tied request is completed immediately when `marked_lost` fires, with `completed_next_status = NULL` — the device's actual next status is decided separately, later, via §8. `WORKFLOWS.md` doesn't state this timing explicitly; confirm before building.
5. **"Set Manager" (wireframe, User Management) conflicts with `PROJECT.md`.** The wireframe shows an IT "Set Manager" action, but `PROJECT.md` explicitly states manager assignment is self-service via employee profile edit, not an IT workflow. No endpoint was built for this — `PROJECT.md` takes precedence per its own stated conflict-resolution rule. Confirm which document should change.
6. **Deactivating a user with active devices/requests (§15).** Neither `WORKFLOWS.md` nor the schema define what happens to a deactivated employee's in-flight requests or assigned devices. No cascade was implemented — this needs an explicit rule (likely tied to the existing "employee leaves company" edge case, which currently requires a manual IT-initiated return).
