import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../values/enumeration/statuses.dart';

part 'recent_request_res_dm.freezed.dart';
part 'recent_request_res_dm.g.dart';

/// One row of `GET /admin/dashboard/recent-requests`.
///
/// Models only the content of the `APIResponse.data` field, per convention.
@freezed
abstract class RecentRequestResDm with _$RecentRequestResDm {
  const factory RecentRequestResDm({
    @Default('') String id,
    @JsonKey(name: 'requester_name') @Default('') String requesterName,
    @JsonKey(name: 'category_name') @Default('') String categoryName,
    @Default(RequestStatus.pendingItApproval) RequestStatus status,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _RecentRequestResDm;

  factory RecentRequestResDm.fromJson(Map<String, dynamic> json) =>
      _$RecentRequestResDmFromJson(json);
}
