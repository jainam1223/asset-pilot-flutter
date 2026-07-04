import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_res_dm.freezed.dart';
part 'item_res_dm.g.dart';

/// Full `item` row (the physical device) — every column, regardless of
/// which endpoint nests it. Status/owner-type wire strings are parsed to
/// [DeviceStatus]/[OwnerType] by module-level `xFromWire` helpers, not here.
///
/// [assignedFrom]/[assignedTo]/[isWfh]/[shipTrackingUrl] aren't `item`
/// columns — `GET /me/devices` flattens the item's active `request` row's
/// fields onto it instead of nesting them; null when not assigned.
@freezed
abstract class ItemResDm with _$ItemResDm {
  const factory ItemResDm({
    @Default('') String id,
    @Default('') String name,
    @Default('') String serialNo,
    @Default('') String categoryId,
    @Default('company') String ownerType,
    String? clientName,
    @Default('available') String status,
    String? currentOwnerId,
    DateTime? purchaseDate,
    @Default('') String qrCodeToken,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? assignedFrom,
    DateTime? assignedTo,
    @Default(false) bool isWfh,
    String? shipTrackingUrl,
  }) = _ItemResDm;

  factory ItemResDm.fromJson(Map<String, dynamic> json) =>
      _$ItemResDmFromJson(json);
}
