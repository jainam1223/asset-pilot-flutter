import 'package:freezed_annotation/freezed_annotation.dart';

import 'item_category_res_dm.dart';
import 'item_res_dm.dart';
import 'user_res_dm.dart';

part 'request_res_dm.freezed.dart';
part 'request_res_dm.g.dart';

/// Full `request` row — every column, regardless of which endpoint returns
/// it. Callers (list vs detail screens) read only the subset they need.
///
/// [category]/[assignedItem]/[requester]/[manager] are not `request` table
/// columns — some endpoints (e.g. `GET /manager/approvals`) join and nest
/// the full category/item/user rows instead of just their ids; null when
/// the endpoint doesn't join them.
@freezed
abstract class RequestResDm with _$RequestResDm {
  const factory RequestResDm({
    @Default('') String id,
    @Default('') String requesterId,
    @Default('') String categoryId,
    String? assignedItemId,

    DateTime? requestedFrom,
    DateTime? requestedTo,
    DateTime? assignedFrom,
    DateTime? assignedTo,

    @Default('requested') String status,
    @Default('medium') String priority,
    String? note,

    @Default(false) bool requiresMgrApproval,
    @Default('not_required') String mgrApprovalStatus,
    String? managerId,
    String? managerDecisionNote,
    DateTime? managerDecidedAt,

    String? itDecidedBy,
    String? itDecisionNote,
    DateTime? itDecidedAt,

    String? rejectedBy,
    String? rejectedReason,
    String? cancelledBy,
    DateTime? cancelledAt,

    @Default(false) bool isWfh,
    String? shipTrackingUrl,
    DateTime? shipInitiatedAt,
    DateTime? shipCompletedAt,
    String? returnTrackingUrl,
    DateTime? returnInitiatedAt,

    DateTime? completedAt,
    String? completedBy,
    String? completedNextStatus,

    @Default(false) bool isClientDirect,

    DateTime? createdAt,
    DateTime? updatedAt,

    ItemCategoryResDm? category,
    ItemResDm? assignedItem,
    UserResDm? requester,
    UserResDm? manager,
  }) = _RequestResDm;

  factory RequestResDm.fromJson(Map<String, dynamic> json) =>
      _$RequestResDmFromJson(json);
}
