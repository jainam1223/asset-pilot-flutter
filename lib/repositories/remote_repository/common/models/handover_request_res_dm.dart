import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../values/enumeration/statuses.dart';
import 'item_res_dm.dart';
import 'user_res_dm.dart';

part 'handover_request_res_dm.freezed.dart';
part 'handover_request_res_dm.g.dart';

/// Full `handover_request` row as returned by the `/me/handover-requests`
/// endpoints — `item`/`owner`/`borrower` are joined rows, not flat columns.
@freezed
abstract class HandoverRequestResDm with _$HandoverRequestResDm {
  const factory HandoverRequestResDm({
    @Default('') String id,
    @Default(HandoverStatus.requested) HandoverStatus status,
    int? requestedDurationHours,
    DateTime? requestedAt,
    DateTime? decidedAt,
    DateTime? completedAt,
    String? note,
    DateTime? createdAt,
    DateTime? updatedAt,
    ItemResDm? item,
    UserResDm? owner,
    UserResDm? borrower,
  }) = _HandoverRequestResDm;

  factory HandoverRequestResDm.fromJson(Map<String, dynamic> json) =>
      _$HandoverRequestResDmFromJson(json);
}
