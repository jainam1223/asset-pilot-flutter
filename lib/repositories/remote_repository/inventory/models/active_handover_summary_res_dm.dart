import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../values/enumeration/statuses.dart';

part 'active_handover_summary_res_dm.freezed.dart';
part 'active_handover_summary_res_dm.g.dart';

/// The active peer-to-peer handover for a device, shown on the admin
/// Device Detail screen (mockup A05) — read-only audit info.
///
/// Models only the content of the `APIResponse.data` field, per convention.
@freezed
abstract class ActiveHandoverSummaryResDm with _$ActiveHandoverSummaryResDm {
  const factory ActiveHandoverSummaryResDm({
    @Default('') String borrowerName,
    @Default('') String durationLabel,
    @Default(HandoverStatus.requested) HandoverStatus status,
  }) = _ActiveHandoverSummaryResDm;

  factory ActiveHandoverSummaryResDm.fromJson(Map<String, dynamic> json) =>
      _$ActiveHandoverSummaryResDmFromJson(json);
}
