import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_detail_raw_res_dm.freezed.dart';
part 'item_detail_raw_res_dm.g.dart';

/// Raw, unflattened response for `GET /admin/items/{id}` — nests
/// `{ item, category, current_owner, current_request, open_support[],
/// active_handover }`. [InventoryRepository] flattens this into
/// [InventoryDetailResDm] for the screen; kept as raw JSON maps here since
/// the nesting doesn't correspond 1:1 to any single typed model.
@freezed
abstract class ItemDetailRawResDm with _$ItemDetailRawResDm {
  const factory ItemDetailRawResDm({
    Map<String, dynamic>? item,
    Map<String, dynamic>? category,
    @JsonKey(name: 'current_owner') Map<String, dynamic>? currentOwner,
    @JsonKey(name: 'current_request') Map<String, dynamic>? currentRequest,
    @JsonKey(name: 'open_support') @Default(<Map<String, dynamic>>[])
    List<Map<String, dynamic>> openSupport,
    @JsonKey(name: 'active_handover') Map<String, dynamic>? activeHandover,
  }) = _ItemDetailRawResDm;

  factory ItemDetailRawResDm.fromJson(Map<String, dynamic> json) =>
      _$ItemDetailRawResDmFromJson(json);
}
