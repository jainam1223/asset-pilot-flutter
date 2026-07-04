import 'package:freezed_annotation/freezed_annotation.dart';

part 'suggested_device_res_dm.freezed.dart';
part 'suggested_device_res_dm.g.dart';

/// One AI-ranked suggested device for a request (mockup A03 center panel).
///
/// Models only the content of the `APIResponse.data` field, per convention.
@freezed
abstract class SuggestedDeviceResDm with _$SuggestedDeviceResDm {
  const factory SuggestedDeviceResDm({
    @Default(0) int rank,
    @Default('') String deviceId,
    @Default('') String name,
    @Default('') String serial,
    @Default('') String reason,
    @Default('') String availabilityLabel,
    @Default(false) bool recommended,
  }) = _SuggestedDeviceResDm;

  factory SuggestedDeviceResDm.fromJson(Map<String, dynamic> json) =>
      _$SuggestedDeviceResDmFromJson(json);
}
