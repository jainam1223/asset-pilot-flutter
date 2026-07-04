// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_meta_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaginationMetaDm {

 int get page;@JsonKey(name: 'page_size') int get pageSize;@JsonKey(name: 'total_items') int get totalItems;@JsonKey(name: 'total_pages') int get totalPages;
/// Create a copy of PaginationMetaDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginationMetaDmCopyWith<PaginationMetaDm> get copyWith => _$PaginationMetaDmCopyWithImpl<PaginationMetaDm>(this as PaginationMetaDm, _$identity);

  /// Serializes this PaginationMetaDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginationMetaDm&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,pageSize,totalItems,totalPages);

@override
String toString() {
  return 'PaginationMetaDm(page: $page, pageSize: $pageSize, totalItems: $totalItems, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class $PaginationMetaDmCopyWith<$Res>  {
  factory $PaginationMetaDmCopyWith(PaginationMetaDm value, $Res Function(PaginationMetaDm) _then) = _$PaginationMetaDmCopyWithImpl;
@useResult
$Res call({
 int page,@JsonKey(name: 'page_size') int pageSize,@JsonKey(name: 'total_items') int totalItems,@JsonKey(name: 'total_pages') int totalPages
});




}
/// @nodoc
class _$PaginationMetaDmCopyWithImpl<$Res>
    implements $PaginationMetaDmCopyWith<$Res> {
  _$PaginationMetaDmCopyWithImpl(this._self, this._then);

  final PaginationMetaDm _self;
  final $Res Function(PaginationMetaDm) _then;

/// Create a copy of PaginationMetaDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? pageSize = null,Object? totalItems = null,Object? totalPages = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PaginationMetaDm].
extension PaginationMetaDmPatterns on PaginationMetaDm {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginationMetaDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginationMetaDm() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginationMetaDm value)  $default,){
final _that = this;
switch (_that) {
case _PaginationMetaDm():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginationMetaDm value)?  $default,){
final _that = this;
switch (_that) {
case _PaginationMetaDm() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int page, @JsonKey(name: 'page_size')  int pageSize, @JsonKey(name: 'total_items')  int totalItems, @JsonKey(name: 'total_pages')  int totalPages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginationMetaDm() when $default != null:
return $default(_that.page,_that.pageSize,_that.totalItems,_that.totalPages);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int page, @JsonKey(name: 'page_size')  int pageSize, @JsonKey(name: 'total_items')  int totalItems, @JsonKey(name: 'total_pages')  int totalPages)  $default,) {final _that = this;
switch (_that) {
case _PaginationMetaDm():
return $default(_that.page,_that.pageSize,_that.totalItems,_that.totalPages);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int page, @JsonKey(name: 'page_size')  int pageSize, @JsonKey(name: 'total_items')  int totalItems, @JsonKey(name: 'total_pages')  int totalPages)?  $default,) {final _that = this;
switch (_that) {
case _PaginationMetaDm() when $default != null:
return $default(_that.page,_that.pageSize,_that.totalItems,_that.totalPages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaginationMetaDm implements PaginationMetaDm {
  const _PaginationMetaDm({this.page = 1, @JsonKey(name: 'page_size') this.pageSize = 0, @JsonKey(name: 'total_items') this.totalItems = 0, @JsonKey(name: 'total_pages') this.totalPages = 0});
  factory _PaginationMetaDm.fromJson(Map<String, dynamic> json) => _$PaginationMetaDmFromJson(json);

@override@JsonKey() final  int page;
@override@JsonKey(name: 'page_size') final  int pageSize;
@override@JsonKey(name: 'total_items') final  int totalItems;
@override@JsonKey(name: 'total_pages') final  int totalPages;

/// Create a copy of PaginationMetaDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginationMetaDmCopyWith<_PaginationMetaDm> get copyWith => __$PaginationMetaDmCopyWithImpl<_PaginationMetaDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaginationMetaDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginationMetaDm&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,pageSize,totalItems,totalPages);

@override
String toString() {
  return 'PaginationMetaDm(page: $page, pageSize: $pageSize, totalItems: $totalItems, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class _$PaginationMetaDmCopyWith<$Res> implements $PaginationMetaDmCopyWith<$Res> {
  factory _$PaginationMetaDmCopyWith(_PaginationMetaDm value, $Res Function(_PaginationMetaDm) _then) = __$PaginationMetaDmCopyWithImpl;
@override @useResult
$Res call({
 int page,@JsonKey(name: 'page_size') int pageSize,@JsonKey(name: 'total_items') int totalItems,@JsonKey(name: 'total_pages') int totalPages
});




}
/// @nodoc
class __$PaginationMetaDmCopyWithImpl<$Res>
    implements _$PaginationMetaDmCopyWith<$Res> {
  __$PaginationMetaDmCopyWithImpl(this._self, this._then);

  final _PaginationMetaDm _self;
  final $Res Function(_PaginationMetaDm) _then;

/// Create a copy of PaginationMetaDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? pageSize = null,Object? totalItems = null,Object? totalPages = null,}) {
  return _then(_PaginationMetaDm(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
