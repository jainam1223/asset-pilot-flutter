import 'package:freezed_annotation/freezed_annotation.dart';

part 'handover_lookup_request_res_dm.freezed.dart';
part 'handover_lookup_request_res_dm.g.dart';

/// `request` as nested by `GET /me/devices/{itemId}` — the item's active
/// assignment request, if any. Null when the device isn't currently
/// assigned via a `request` row.
@freezed
abstract class HandoverLookupRequestResDm with _$HandoverLookupRequestResDm {
  const factory HandoverLookupRequestResDm({
    @Default('') String id,
    @Default('requested') String status,
    @Default('medium') String priority,
    DateTime? assignedFrom,
    DateTime? assignedTo,
  }) = _HandoverLookupRequestResDm;

  factory HandoverLookupRequestResDm.fromJson(Map<String, dynamic> json) =>
      _$HandoverLookupRequestResDmFromJson(json);
}
