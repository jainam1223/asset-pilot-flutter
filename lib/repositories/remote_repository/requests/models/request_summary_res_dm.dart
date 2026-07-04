import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../values/enumeration/statuses.dart';

part 'request_summary_res_dm.freezed.dart';
part 'request_summary_res_dm.g.dart';

/// One `request` row, as returned by the admin Request Management list
/// (A02), the IT Approvals queue, and the WFH shipping/return queues.
///
/// Models only the content of the `APIResponse.data` field, per convention.
@freezed
abstract class RequestSummaryResDm with _$RequestSummaryResDm {
  const factory RequestSummaryResDm({
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
    @JsonKey(name: 'is_wfh') @Default(false) bool isWfh,
    @JsonKey(name: 'ship_tracking_url') String? shipTrackingUrl,
    @JsonKey(name: 'return_tracking_url') String? returnTrackingUrl,
    @JsonKey(name: 'is_client_direct') @Default(false) bool isClientDirect,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'category_name') @Default('') String categoryName,
    @JsonKey(name: 'requester_name') @Default('') String requesterName,
  }) = _RequestSummaryResDm;

  factory RequestSummaryResDm.fromJson(Map<String, dynamic> json) =>
      _$RequestSummaryResDmFromJson(json);
}
