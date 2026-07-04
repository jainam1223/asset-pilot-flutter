import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_item_req_dm.freezed.dart';
part 'update_item_req_dm.g.dart';

/// Request body for `PATCH /admin/items/{id}` (Inventory "Edit Device").
@freezed
abstract class UpdateItemReqDm with _$UpdateItemReqDm {
  @JsonSerializable(includeIfNull: false)
  const factory UpdateItemReqDm({
    String? name,
    @JsonKey(name: 'category_id') String? categoryId,
    @JsonKey(name: 'client_name') String? clientName,
    @JsonKey(name: 'purchase_date') DateTime? purchaseDate,
  }) = _UpdateItemReqDm;

  factory UpdateItemReqDm.fromJson(Map<String, dynamic> json) =>
      _$UpdateItemReqDmFromJson(json);
}
