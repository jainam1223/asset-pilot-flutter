import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../values/enumeration/statuses.dart';
import '../../common/models/user_res_dm.dart';
import '../../inventory/models/inventory_item_res_dm.dart';
import '../../requests/models/request_summary_res_dm.dart';

part 'extension_request_detail_res_dm.freezed.dart';
part 'extension_request_detail_res_dm.g.dart';

/// Full detail for a single extension request, per
/// `GET /admin/extension-requests/{id}` — the base `extension_request` row
/// plus the parent `request` and its `item`/`requester`.
///
/// Models only the content of the `APIResponse.data` field, per convention.
@freezed
abstract class ExtensionRequestDetailResDm with _$ExtensionRequestDetailResDm {
  const factory ExtensionRequestDetailResDm({
    @Default('') String id,
    @JsonKey(name: 'original_request_id') @Default('') String originalRequestId,
    @JsonKey(name: 'requester_id') @Default('') String requesterId,
    @JsonKey(name: 'current_assigned_to') DateTime? currentAssignedTo,
    @JsonKey(name: 'extended_to') DateTime? extendedTo,
    @Default(ExtensionStatus.pending) ExtensionStatus status,
    @JsonKey(name: 'requires_mgr_approval')
    @Default(false)
    bool requiresMgrApproval,
    @JsonKey(name: 'manager_id') String? managerId,
    @JsonKey(name: 'mgr_approval_status')
    @Default(MgrApprovalStatus.notRequired)
    MgrApprovalStatus mgrApprovalStatus,
    @JsonKey(name: 'manager_note') String? managerNote,
    @JsonKey(name: 'manager_decided_at') DateTime? managerDecidedAt,
    @JsonKey(name: 'it_decided_by') String? itDecidedBy,
    @JsonKey(name: 'it_note') String? itNote,
    @JsonKey(name: 'it_decided_at') DateTime? itDecidedAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    RequestSummaryResDm? request,
    InventoryItemResDm? item,
    UserResDm? requester,
  }) = _ExtensionRequestDetailResDm;

  factory ExtensionRequestDetailResDm.fromJson(Map<String, dynamic> json) =>
      _$ExtensionRequestDetailResDmFromJson(json);
}
