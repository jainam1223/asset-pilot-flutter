import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../values/enumeration/statuses.dart';

part 'inventory_item_res_dm.freezed.dart';
part 'inventory_item_res_dm.g.dart';

/// One row of the admin Inventory Management table (mockup A04).
///
/// Models only the content of the `APIResponse.data` field, per convention.
@freezed
abstract class InventoryItemResDm with _$InventoryItemResDm {
  const factory InventoryItemResDm({
    @Default('') String id,
    @Default('') String name,
    @Default('') String serial,
    @Default('') String category,
    @Default(OwnerType.company) OwnerType ownerType,
    @Default('') String clientName,
    @Default(DeviceStatus.available) DeviceStatus status,
    @Default('') String currentOwnerName,
  }) = _InventoryItemResDm;

  factory InventoryItemResDm.fromJson(Map<String, dynamic> json) =>
      _$InventoryItemResDmFromJson(json);
}
