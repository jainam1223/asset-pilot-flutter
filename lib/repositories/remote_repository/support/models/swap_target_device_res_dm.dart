import 'package:freezed_annotation/freezed_annotation.dart';

part 'swap_target_device_res_dm.freezed.dart';
part 'swap_target_device_res_dm.g.dart';

/// An available replacement device offered in the A08 "Swapped" resolution
/// flow (swap-target dropdown).
///
/// Models only the content of the `APIResponse.data` field, per convention.
@freezed
abstract class SwapTargetDeviceResDm with _$SwapTargetDeviceResDm {
  const factory SwapTargetDeviceResDm({
    @Default('') String id,
    @Default('') String name,
    @Default('') String serial,
  }) = _SwapTargetDeviceResDm;

  factory SwapTargetDeviceResDm.fromJson(Map<String, dynamic> json) =>
      _$SwapTargetDeviceResDmFromJson(json);
}
