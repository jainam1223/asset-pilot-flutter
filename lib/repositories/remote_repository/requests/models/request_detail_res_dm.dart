import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../values/enumeration/statuses.dart';
import '../../inventory/models/inventory_item_res_dm.dart';

part 'request_detail_res_dm.freezed.dart';
part 'request_detail_res_dm.g.dart';

/// Full detail for a single request (mockup A03 left panel), per
/// `GET /admin/requests/{id}`.
///
/// Models only the content of the `APIResponse.data` field, per convention.
@freezed
abstract class RequestDetailResDm with _$RequestDetailResDm {
  const factory RequestDetailResDm({
    @Default('') String id,
    @JsonKey(name: 'requester_id') @Default('') String requesterId,
    @JsonKey(name: 'category_id') @Default('') String categoryId,
    @JsonKey(name: 'assigned_item_id') String? assignedItemId,
    @JsonKey(name: 'requested_from') DateTime? requestedFrom,
    @JsonKey(name: 'requested_to') DateTime? requestedTo,
    @JsonKey(name: 'assigned_from') DateTime? assignedFrom,
    @JsonKey(name: 'assigned_to') DateTime? assignedTo,
    @Default(RequestStatus.pendingItApproval) RequestStatus status,
    @Default(RequestPriority.medium) RequestPriority priority,
    String? note,
    @JsonKey(name: 'requires_mgr_approval')
    @Default(false)
    bool requiresMgrApproval,
    @JsonKey(name: 'mgr_approval_status')
    @Default(MgrApprovalStatus.notRequired)
    MgrApprovalStatus mgrApprovalStatus,
    @JsonKey(name: 'manager_id') String? managerId,
    @JsonKey(name: 'manager_decision_note') String? managerDecisionNote,
    @JsonKey(name: 'manager_decided_at') DateTime? managerDecidedAt,
    @JsonKey(name: 'it_decided_by') String? itDecidedBy,
    @JsonKey(name: 'it_decision_note') String? itDecisionNote,
    @JsonKey(name: 'it_decided_at') DateTime? itDecidedAt,
    @JsonKey(name: 'rejected_by') String? rejectedBy,
    @JsonKey(name: 'rejected_reason') String? rejectedReason,
    @JsonKey(name: 'cancelled_by') String? cancelledBy,
    @JsonKey(name: 'cancelled_at') DateTime? cancelledAt,
    @JsonKey(name: 'is_wfh') @Default(false) bool isWfh,
    @JsonKey(name: 'ship_tracking_url') String? shipTrackingUrl,
    @JsonKey(name: 'ship_initiated_at') DateTime? shipInitiatedAt,
    @JsonKey(name: 'ship_completed_at') DateTime? shipCompletedAt,
    @JsonKey(name: 'return_tracking_url') String? returnTrackingUrl,
    @JsonKey(name: 'return_initiated_at') DateTime? returnInitiatedAt,
    @JsonKey(name: 'completed_at') DateTime? completedAt,
    @JsonKey(name: 'completed_by') String? completedBy,
    @JsonKey(name: 'completed_next_status') DeviceStatus? completedNextStatus,
    @JsonKey(name: 'is_client_direct') @Default(false) bool isClientDirect,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'category_name') @Default('') String categoryName,
    @JsonKey(name: 'requester_name') @Default('') String requesterName,
    @JsonKey(name: 'manager_name') String? managerName,
    @JsonKey(name: 'it_decided_by_name') String? itDecidedByName,
    @JsonKey(name: 'cancelled_by_name') String? cancelledByName,
    @JsonKey(name: 'completed_by_name') String? completedByName,
    InventoryItemResDm? item,
  }) = _RequestDetailResDm;

  factory RequestDetailResDm.fromJson(Map<String, dynamic> json) =>
      _$RequestDetailResDmFromJson(json);
}
