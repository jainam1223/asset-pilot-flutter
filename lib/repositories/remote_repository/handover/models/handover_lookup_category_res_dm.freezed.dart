// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'handover_lookup_category_res_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HandoverLookupCategoryResDm {

 String get id; String get name;
/// Create a copy of HandoverLookupCategoryResDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HandoverLookupCategoryResDmCopyWith<HandoverLookupCategoryResDm> get copyWith => _$HandoverLookupCategoryResDmCopyWithImpl<HandoverLookupCategoryResDm>(this as HandoverLookupCategoryResDm, _$identity);

  /// Serializes this HandoverLookupCategoryResDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HandoverLookupCategoryResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'HandoverLookupCategoryResDm(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $HandoverLookupCategoryResDmCopyWith<$Res>  {
  factory $HandoverLookupCategoryResDmCopyWith(HandoverLookupCategoryResDm value, $Res Function(HandoverLookupCategoryResDm) _then) = _$HandoverLookupCategoryResDmCopyWithImpl;
@useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class _$HandoverLookupCategoryResDmCopyWithImpl<$Res>
    implements $HandoverLookupCategoryResDmCopyWith<$Res> {
  _$HandoverLookupCategoryResDmCopyWithImpl(this._self, this._then);

  final HandoverLookupCategoryResDm _self;
  final $Res Function(HandoverLookupCategoryResDm) _then;

/// Create a copy of HandoverLookupCategoryResDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [HandoverLookupCategoryResDm].
extension HandoverLookupCategoryResDmPatterns on HandoverLookupCategoryResDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HandoverLookupCategoryResDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HandoverLookupCategoryResDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HandoverLookupCategoryResDm value)  $default,){
final _that = this;
switch (_that) {
case _HandoverLookupCategoryResDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HandoverLookupCategoryResDm value)?  $default,){
final _that = this;
switch (_that) {
case _HandoverLookupCategoryResDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HandoverLookupCategoryResDm() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name)  $default,) {final _that = this;
switch (_that) {
case _HandoverLookupCategoryResDm():
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name)?  $default,) {final _that = this;
switch (_that) {
case _HandoverLookupCategoryResDm() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HandoverLookupCategoryResDm implements HandoverLookupCategoryResDm {
  const _HandoverLookupCategoryResDm({this.id = '', this.name = ''});
  factory _HandoverLookupCategoryResDm.fromJson(Map<String, dynamic> json) => _$HandoverLookupCategoryResDmFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String name;

/// Create a copy of HandoverLookupCategoryResDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HandoverLookupCategoryResDmCopyWith<_HandoverLookupCategoryResDm> get copyWith => __$HandoverLookupCategoryResDmCopyWithImpl<_HandoverLookupCategoryResDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HandoverLookupCategoryResDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HandoverLookupCategoryResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'HandoverLookupCategoryResDm(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$HandoverLookupCategoryResDmCopyWith<$Res> implements $HandoverLookupCategoryResDmCopyWith<$Res> {
  factory _$HandoverLookupCategoryResDmCopyWith(_HandoverLookupCategoryResDm value, $Res Function(_HandoverLookupCategoryResDm) _then) = __$HandoverLookupCategoryResDmCopyWithImpl;
@override @useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class __$HandoverLookupCategoryResDmCopyWithImpl<$Res>
    implements _$HandoverLookupCategoryResDmCopyWith<$Res> {
  __$HandoverLookupCategoryResDmCopyWithImpl(this._self, this._then);

  final _HandoverLookupCategoryResDm _self;
  final $Res Function(_HandoverLookupCategoryResDm) _then;

/// Create a copy of HandoverLookupCategoryResDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_HandoverLookupCategoryResDm(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
