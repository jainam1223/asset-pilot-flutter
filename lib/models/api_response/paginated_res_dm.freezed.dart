// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_res_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaginatedResDm<T> {

 List<T> get items; PaginationMetaDm get pagination;
/// Create a copy of PaginatedResDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginatedResDmCopyWith<T, PaginatedResDm<T>> get copyWith => _$PaginatedResDmCopyWithImpl<T, PaginatedResDm<T>>(this as PaginatedResDm<T>, _$identity);

  /// Serializes this PaginatedResDm to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginatedResDm<T>&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),pagination);

@override
String toString() {
  return 'PaginatedResDm<$T>(items: $items, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $PaginatedResDmCopyWith<T,$Res>  {
  factory $PaginatedResDmCopyWith(PaginatedResDm<T> value, $Res Function(PaginatedResDm<T>) _then) = _$PaginatedResDmCopyWithImpl;
@useResult
$Res call({
 List<T> items, PaginationMetaDm pagination
});


$PaginationMetaDmCopyWith<$Res> get pagination;

}
/// @nodoc
class _$PaginatedResDmCopyWithImpl<T,$Res>
    implements $PaginatedResDmCopyWith<T, $Res> {
  _$PaginatedResDmCopyWithImpl(this._self, this._then);

  final PaginatedResDm<T> _self;
  final $Res Function(PaginatedResDm<T>) _then;

/// Create a copy of PaginatedResDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? pagination = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<T>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PaginationMetaDm,
  ));
}
/// Create a copy of PaginatedResDm
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationMetaDmCopyWith<$Res> get pagination {
  
  return $PaginationMetaDmCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [PaginatedResDm].
extension PaginatedResDmPatterns<T> on PaginatedResDm<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginatedResDm<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginatedResDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginatedResDm<T> value)  $default,){
final _that = this;
switch (_that) {
case _PaginatedResDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginatedResDm<T> value)?  $default,){
final _that = this;
switch (_that) {
case _PaginatedResDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<T> items,  PaginationMetaDm pagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginatedResDm() when $default != null:
return $default(_that.items,_that.pagination);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<T> items,  PaginationMetaDm pagination)  $default,) {final _that = this;
switch (_that) {
case _PaginatedResDm():
return $default(_that.items,_that.pagination);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<T> items,  PaginationMetaDm pagination)?  $default,) {final _that = this;
switch (_that) {
case _PaginatedResDm() when $default != null:
return $default(_that.items,_that.pagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class _PaginatedResDm<T> implements PaginatedResDm<T> {
  const _PaginatedResDm({final  List<T> items = const <Never>[], this.pagination = const PaginationMetaDm()}): _items = items;
  factory _PaginatedResDm.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$PaginatedResDmFromJson(json,fromJsonT);

 final  List<T> _items;
@override@JsonKey() List<T> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey() final  PaginationMetaDm pagination;

/// Create a copy of PaginatedResDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginatedResDmCopyWith<T, _PaginatedResDm<T>> get copyWith => __$PaginatedResDmCopyWithImpl<T, _PaginatedResDm<T>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
  return _$PaginatedResDmToJson<T>(this, toJsonT);
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginatedResDm<T>&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),pagination);

@override
String toString() {
  return 'PaginatedResDm<$T>(items: $items, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$PaginatedResDmCopyWith<T,$Res> implements $PaginatedResDmCopyWith<T, $Res> {
  factory _$PaginatedResDmCopyWith(_PaginatedResDm<T> value, $Res Function(_PaginatedResDm<T>) _then) = __$PaginatedResDmCopyWithImpl;
@override @useResult
$Res call({
 List<T> items, PaginationMetaDm pagination
});


@override $PaginationMetaDmCopyWith<$Res> get pagination;

}
/// @nodoc
class __$PaginatedResDmCopyWithImpl<T,$Res>
    implements _$PaginatedResDmCopyWith<T, $Res> {
  __$PaginatedResDmCopyWithImpl(this._self, this._then);

  final _PaginatedResDm<T> _self;
  final $Res Function(_PaginatedResDm<T>) _then;

/// Create a copy of PaginatedResDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? pagination = null,}) {
  return _then(_PaginatedResDm<T>(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<T>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PaginationMetaDm,
  ));
}

/// Create a copy of PaginatedResDm
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationMetaDmCopyWith<$Res> get pagination {
  
  return $PaginationMetaDmCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}

// dart format on
