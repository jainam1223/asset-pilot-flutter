import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../values/enumeration/statuses.dart';

part 'request_summary_res_dm.freezed.dart';
part 'request_summary_res_dm.g.dart';

/// One row of the admin Request Management table (mockup A02).
///
/// Models only the content of the `APIResponse.data` field, per convention.
@freezed
abstract class RequestSummaryResDm with _$RequestSummaryResDm {
  const factory RequestSummaryResDm({
    @Default('') String id,
    @Default('') String employeeName,
    @Default('') String category,
    @Default(RequestPriority.medium) RequestPriority priority,
    @Default(RequestStatus.pendingItApproval) RequestStatus status,
    @Default('') String requestedFrom,
    @Default('') String requestedTo,
    @Default(false) bool managerApproved,
  }) = _RequestSummaryResDm;

  factory RequestSummaryResDm.fromJson(Map<String, dynamic> json) =>
      _$RequestSummaryResDmFromJson(json);
}
