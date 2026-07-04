import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../values/enumeration/statuses.dart';

part 'inventory_item_res_dm.freezed.dart';
part 'inventory_item_res_dm.g.dart';

/// One `item` row, as returned by the admin Inventory Management list (A04)
/// and nested wherever a device is joined in.
///
/// Models only the content of the `APIResponse.data` field, per convention.
@freezed
abstract class InventoryItemResDm with _$InventoryItemResDm {
  const factory InventoryItemResDm({
    @Default('') String id,
    @Default('') String name,
    @JsonKey(name: 'serial_no') @Default('') String serialNo,
    @JsonKey(name: 'category_id') @Default('') String categoryId,
    @JsonKey(name: 'owner_type') @Default(OwnerType.company) OwnerType ownerType,
    @JsonKey(name: 'client_name') String? clientName,
    @Default(DeviceStatus.available) DeviceStatus status,
    @JsonKey(name: 'current_owner_id') String? currentOwnerId,
    @JsonKey(name: 'purchase_date') DateTime? purchaseDate,
    @JsonKey(name: 'qr_code_token') @Default('') String qrCodeToken,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'category_name') @Default('') String categoryName,
    @JsonKey(name: 'current_owner_name') String? currentOwnerName,
  }) = _InventoryItemResDm;

  factory InventoryItemResDm.fromJson(Map<String, dynamic> json) =>
      _$InventoryItemResDmFromJson(json);
}
