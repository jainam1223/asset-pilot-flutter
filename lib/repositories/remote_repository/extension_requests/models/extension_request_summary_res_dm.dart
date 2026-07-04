import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../values/enumeration/statuses.dart';

part 'extension_request_summary_res_dm.freezed.dart';
part 'extension_request_summary_res_dm.g.dart';

/// One row of the admin Extension Requests table (mockup A11), per
/// `GET /admin/extension-requests`.
///
/// Models only the content of the `APIResponse.data` field, per convention.
@freezed
abstract class ExtensionRequestSummaryResDm
    with _$ExtensionRequestSummaryResDm {
  const factory ExtensionRequestSummaryResDm({
    @Default('') String id,
    @JsonKey(name: 'requester_name') @Default('') String employeeName,
    @JsonKey(name: 'item_name') @Default('') String deviceName,
    @JsonKey(name: 'current_assigned_to') DateTime? currentToDate,
    @JsonKey(name: 'extended_to') DateTime? extendToDate,
    @JsonKey(name: 'mgr_approval_status')
    @Default(MgrApprovalStatus.pending)
    MgrApprovalStatus mgrApprovalStatus,
    @Default(ExtensionStatus.pending) ExtensionStatus status,
  }) = _ExtensionRequestSummaryResDm;

  factory ExtensionRequestSummaryResDm.fromJson(Map<String, dynamic> json) =>
      _$ExtensionRequestSummaryResDmFromJson(json);
}
