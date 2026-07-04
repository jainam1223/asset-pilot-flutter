import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_meta_dm.freezed.dart';
part 'pagination_meta_dm.g.dart';

/// Server-side pagination metadata, carried in the response envelope's
/// `meta.pagination` object. The [DioClient] response interceptor folds it
/// alongside the list so [PaginatedResDm] can deserialize both together.
@freezed
abstract class PaginationMetaDm with _$PaginationMetaDm {
  const factory PaginationMetaDm({
    @Default(1) int page,
    @Default(0) @JsonKey(name: 'page_size') int pageSize,
    @Default(0) @JsonKey(name: 'total_items') int totalItems,
    @Default(0) @JsonKey(name: 'total_pages') int totalPages,
  }) = _PaginationMetaDm;

  factory PaginationMetaDm.fromJson(Map<String, dynamic> json) =>
      _$PaginationMetaDmFromJson(json);
}
