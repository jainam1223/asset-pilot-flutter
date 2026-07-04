import 'package:freezed_annotation/freezed_annotation.dart';

import 'handover_lookup_category_res_dm.dart';

part 'handover_lookup_item_res_dm.freezed.dart';
part 'handover_lookup_item_res_dm.g.dart';

/// `item` as nested by `GET /me/devices/{itemId}` — the subset of `item`
/// columns that endpoint returns, plus the joined `category` row.
@freezed
abstract class HandoverLookupItemResDm with _$HandoverLookupItemResDm {
  const factory HandoverLookupItemResDm({
    @Default('') String id,
    @Default('') String name,
    @Default('') String serialNo,
    @Default('available') String status,
    String? currentOwnerId,
    HandoverLookupCategoryResDm? category,
  }) = _HandoverLookupItemResDm;

  factory HandoverLookupItemResDm.fromJson(Map<String, dynamic> json) =>
      _$HandoverLookupItemResDmFromJson(json);
}
