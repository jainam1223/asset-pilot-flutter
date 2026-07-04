import 'package:freezed_annotation/freezed_annotation.dart';

part 'suggested_device_res_dm.freezed.dart';
part 'suggested_device_res_dm.g.dart';

/// One AI-ranked suggested device for a request (mockup A03 center panel),
/// per `GET /admin/requests/{id}/suggested-devices`. Rows arrive pre-sorted
/// by fewest active requests then longest free — the UI ranks by list order.
///
/// Models only the content of the `APIResponse.data` field, per convention.
@freezed
abstract class SuggestedDeviceResDm with _$SuggestedDeviceResDm {
  const factory SuggestedDeviceResDm({
    @JsonKey(name: 'item_id') @Default('') String itemId,
    @Default('') String name,
    @JsonKey(name: 'serial_no') @Default('') String serialNo,
    @JsonKey(name: 'active_bookings_count')
    @Default(0)
    int activeBookingsCount,
    @JsonKey(name: 'free_until') DateTime? freeUntil,
  }) = _SuggestedDeviceResDm;

  factory SuggestedDeviceResDm.fromJson(Map<String, dynamic> json) =>
      _$SuggestedDeviceResDmFromJson(json);
}
