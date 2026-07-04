import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../values/enumeration/statuses.dart';

part 'extension_request_summary_res_dm.freezed.dart';
part 'extension_request_summary_res_dm.g.dart';

/// One row of the admin Extension Requests table (mockup A11).
///
/// Models only the content of the `APIResponse.data` field, per convention.
@freezed
abstract class ExtensionRequestSummaryResDm
    with _$ExtensionRequestSummaryResDm {
  const factory ExtensionRequestSummaryResDm({
    @Default('') String id,
    @Default('') String employeeName,
    @Default('') String deviceName,
    @Default('') String currentToDate,
    @Default('') String extendToDate,
    @Default(MgrApprovalStatus.pending) MgrApprovalStatus mgrApprovalStatus,
    @Default(ExtensionStatus.pending) ExtensionStatus status,
  }) = _ExtensionRequestSummaryResDm;

  factory ExtensionRequestSummaryResDm.fromJson(Map<String, dynamic> json) =>
      _$ExtensionRequestSummaryResDmFromJson(json);
}
