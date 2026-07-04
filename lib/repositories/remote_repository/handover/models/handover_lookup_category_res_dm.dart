import 'package:freezed_annotation/freezed_annotation.dart';

part 'handover_lookup_category_res_dm.freezed.dart';
part 'handover_lookup_category_res_dm.g.dart';

/// `item.category` as nested by `GET /me/devices/{itemId}` — id + name only.
@freezed
abstract class HandoverLookupCategoryResDm with _$HandoverLookupCategoryResDm {
  const factory HandoverLookupCategoryResDm({
    @Default('') String id,
    @Default('') String name,
  }) = _HandoverLookupCategoryResDm;

  factory HandoverLookupCategoryResDm.fromJson(Map<String, dynamic> json) =>
      _$HandoverLookupCategoryResDmFromJson(json);
}
