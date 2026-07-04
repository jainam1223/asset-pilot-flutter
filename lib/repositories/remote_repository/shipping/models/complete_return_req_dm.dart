import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../values/enumeration/statuses.dart';

part 'complete_return_req_dm.freezed.dart';
part 'complete_return_req_dm.g.dart';

/// Request body for `POST /admin/requests/{id}/complete-return`.
@freezed
abstract class CompleteReturnReqDm with _$CompleteReturnReqDm {
  @JsonSerializable(includeIfNull: false)
  const factory CompleteReturnReqDm({
    @JsonKey(name: 'next_status') required DeviceStatus nextStatus,
  }) = _CompleteReturnReqDm;

  factory CompleteReturnReqDm.fromJson(Map<String, dynamic> json) =>
      _$CompleteReturnReqDmFromJson(json);
}
