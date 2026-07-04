import 'package:freezed_annotation/freezed_annotation.dart';

import 'pagination_meta_dm.dart';

part 'paginated_res_dm.freezed.dart';
part 'paginated_res_dm.g.dart';

/// Generic wrapper for a server-side-paginated list endpoint.
///
/// The backend puts the rows in `data` and paging info in `meta.pagination`;
/// the [DioClient] interceptor reshapes that into `{ items, pagination }`,
/// which this model deserializes. Retrofit passes the element `fromJson` via
/// `genericArgumentFactories`.
@Freezed(genericArgumentFactories: true)
abstract class PaginatedResDm<T> with _$PaginatedResDm<T> {
  const factory PaginatedResDm({
    @Default(<Never>[]) List<T> items,
    @Default(PaginationMetaDm()) PaginationMetaDm pagination,
  }) = _PaginatedResDm<T>;

  factory PaginatedResDm.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$PaginatedResDmFromJson(json, fromJsonT);
}
