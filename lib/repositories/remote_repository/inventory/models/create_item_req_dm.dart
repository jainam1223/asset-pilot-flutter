import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../values/enumeration/statuses.dart';

part 'create_item_req_dm.freezed.dart';
part 'create_item_req_dm.g.dart';

/// Request body for `POST /admin/items` (Inventory "Add Device").
@freezed
abstract class CreateItemReqDm with _$CreateItemReqDm {
  @JsonSerializable(includeIfNull: false)
  const factory CreateItemReqDm({
    required String name,
    @JsonKey(name: 'serial_no') required String serialNo,
    @JsonKey(name: 'category_id') required String categoryId,
    @JsonKey(name: 'owner_type') required OwnerType ownerType,
    @JsonKey(name: 'client_name') String? clientName,
    @JsonKey(name: 'purchase_date') DateTime? purchaseDate,
  }) = _CreateItemReqDm;

  factory CreateItemReqDm.fromJson(Map<String, dynamic> json) =>
      _$CreateItemReqDmFromJson(json);
}
