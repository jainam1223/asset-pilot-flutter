import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_by_qr_res_dm.freezed.dart';
part 'device_by_qr_res_dm.g.dart';

/// Response of `GET /devices/by-qr/{qrCodeToken}` — the pre-handover device
/// lookup (Handover · Scan/Pick, mockup E12).
@freezed
abstract class DeviceByQrResDm with _$DeviceByQrResDm {
  const factory DeviceByQrResDm({
    @Default('') String itemId,
    @Default('') String name,
    @Default('') String categoryName,
    @Default('') String ownerName,
  }) = _DeviceByQrResDm;

  factory DeviceByQrResDm.fromJson(Map<String, dynamic> json) =>
      _$DeviceByQrResDmFromJson(json);
}
