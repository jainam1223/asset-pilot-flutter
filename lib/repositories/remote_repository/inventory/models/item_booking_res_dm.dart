import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_booking_res_dm.freezed.dart';
part 'item_booking_res_dm.g.dart';

/// One existing booking on a device, per `GET /admin/items/{itemId}/bookings`
/// — feeds the A03 calendar overlay so IT can see conflicts before assigning.
///
/// Models only the content of the `APIResponse.data` field, per convention.
@freezed
abstract class ItemBookingResDm with _$ItemBookingResDm {
  const factory ItemBookingResDm({
    @JsonKey(name: 'request_id') @Default('') String requestId,
    @JsonKey(name: 'requester_name') @Default('') String requesterName,
    @JsonKey(name: 'assigned_from') DateTime? assignedFrom,
    @JsonKey(name: 'assigned_to') DateTime? assignedTo,
  }) = _ItemBookingResDm;

  factory ItemBookingResDm.fromJson(Map<String, dynamic> json) =>
      _$ItemBookingResDmFromJson(json);
}
