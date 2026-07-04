import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../values/enumeration/statuses.dart';

part 'open_ticket_summary_res_dm.freezed.dart';
part 'open_ticket_summary_res_dm.g.dart';

/// One open support ticket for a device, shown on the admin Device Detail
/// screen (mockup A05).
///
/// Models only the content of the `APIResponse.data` field, per convention.
@freezed
abstract class OpenTicketSummaryResDm with _$OpenTicketSummaryResDm {
  const factory OpenTicketSummaryResDm({
    @Default('') String id,
    @Default('') String title,
    @Default(SupportStatus.open) SupportStatus status,
    @Default('') String raisedOn,
  }) = _OpenTicketSummaryResDm;

  factory OpenTicketSummaryResDm.fromJson(Map<String, dynamic> json) =>
      _$OpenTicketSummaryResDmFromJson(json);
}
