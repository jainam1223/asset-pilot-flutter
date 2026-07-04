import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../values/enumeration/statuses.dart';

part 'open_support_snapshot_res_dm.freezed.dart';
part 'open_support_snapshot_res_dm.g.dart';

/// One row of `GET /admin/dashboard/open-support`.
///
/// Models only the content of the `APIResponse.data` field, per convention.
@freezed
abstract class OpenSupportSnapshotResDm with _$OpenSupportSnapshotResDm {
  const factory OpenSupportSnapshotResDm({
    @Default('') String id,
    @JsonKey(name: 'item_name') @Default('') String itemName,
    @Default(SupportType.update) SupportType type,
    @Default(SupportStatus.open) SupportStatus status,
    @JsonKey(name: 'filed_at') DateTime? filedAt,
  }) = _OpenSupportSnapshotResDm;

  factory OpenSupportSnapshotResDm.fromJson(Map<String, dynamic> json) =>
      _$OpenSupportSnapshotResDmFromJson(json);
}
