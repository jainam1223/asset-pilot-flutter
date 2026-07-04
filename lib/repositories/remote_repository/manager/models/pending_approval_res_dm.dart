import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../values/enumeration/statuses.dart';

part 'pending_approval_res_dm.freezed.dart';
part 'pending_approval_res_dm.g.dart';

/// One row of the manager's Pending Approvals list (mockup M01) and the
/// Approval Detail screen (mockup M02).
///
/// Models only the content of the `APIResponse.data` field, per convention.
@freezed
abstract class PendingApprovalResDm with _$PendingApprovalResDm {
  const factory PendingApprovalResDm({
    @Default('') String id,
    @Default('') String employeeName,
    @Default('') String category,
    @Default(RequestPriority.medium) RequestPriority priority,
    @Default('') String requestedFrom,
    @Default('') String requestedTo,
    @Default('') String note,
    @Default(MgrApprovalStatus.pending) MgrApprovalStatus mgrApprovalStatus,
    String? decisionNote,
  }) = _PendingApprovalResDm;

  factory PendingApprovalResDm.fromJson(Map<String, dynamic> json) =>
      _$PendingApprovalResDmFromJson(json);
}
