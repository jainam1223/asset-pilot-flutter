import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../values/enumeration/statuses.dart';

part 'support_summary_res_dm.freezed.dart';
part 'support_summary_res_dm.g.dart';

/// One row of the admin Support Requests table (mockup A08). Carries the
/// description too, so the inline "Resolve" panel can render without a
/// second fetch.
///
/// Models only the content of the `APIResponse.data` field, per convention.
@freezed
abstract class SupportSummaryResDm with _$SupportSummaryResDm {
  const factory SupportSummaryResDm({
    @Default('') String id,
    @Default('') String deviceName,
    @Default(SupportType.update) SupportType type,
    @Default(SupportStatus.open) SupportStatus status,
    @Default('') String description,
    @Default('') String filedAt,
  }) = _SupportSummaryResDm;

  factory SupportSummaryResDm.fromJson(Map<String, dynamic> json) =>
      _$SupportSummaryResDmFromJson(json);
}
