import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_range_req_dm.freezed.dart';
part 'booking_range_req_dm.g.dart';

/// Request body for `PATCH /admin/requests/{conflictingRequestId}/booking-range`
/// — nudges an existing booking's date range (A03 calendar overlay).
@freezed
abstract class BookingRangeReqDm with _$BookingRangeReqDm {
  @JsonSerializable(includeIfNull: false)
  const factory BookingRangeReqDm({
    @JsonKey(name: 'assigned_from') required DateTime assignedFrom,
    @JsonKey(name: 'assigned_to') required DateTime assignedTo,
  }) = _BookingRangeReqDm;

  factory BookingRangeReqDm.fromJson(Map<String, dynamic> json) =>
      _$BookingRangeReqDmFromJson(json);
}
