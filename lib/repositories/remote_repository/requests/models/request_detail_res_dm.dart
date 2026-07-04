import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../values/enumeration/statuses.dart';

part 'request_detail_res_dm.freezed.dart';
part 'request_detail_res_dm.g.dart';

/// Full detail for a single request (mockup A03 left panel).
///
/// Models only the content of the `APIResponse.data` field, per convention.
@freezed
abstract class RequestDetailResDm with _$RequestDetailResDm {
  const factory RequestDetailResDm({
    @Default('') String id,
    @Default('') String employeeName,
    @Default('') String employeeDepartment,
    @Default('') String category,
    @Default(RequestPriority.medium) RequestPriority priority,
    @Default(RequestStatus.pendingItApproval) RequestStatus status,
    @Default('') String requestedFrom,
    @Default('') String requestedTo,
    @Default(false) bool managerApproved,
    @Default(false) bool workFromHome,
    @Default('') String note,
  }) = _RequestDetailResDm;

  factory RequestDetailResDm.fromJson(Map<String, dynamic> json) =>
      _$RequestDetailResDmFromJson(json);
}
