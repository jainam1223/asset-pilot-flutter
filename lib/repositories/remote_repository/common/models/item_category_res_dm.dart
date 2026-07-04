import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_category_res_dm.freezed.dart';
part 'item_category_res_dm.g.dart';

@freezed
abstract class ItemCategoryResDm with _$ItemCategoryResDm {
  const factory ItemCategoryResDm({
    @Default('') String id,
    @Default('') String name,
    String? description,
    @Default(false) bool requiresMgrApproval,
    @Default(true) bool isActive,
    String? createdAt,
    String? updatedAt,
  }) = _ItemCategoryResDm;

  factory ItemCategoryResDm.fromJson(Map<String, dynamic> json) =>
      _$ItemCategoryResDmFromJson(json);
}