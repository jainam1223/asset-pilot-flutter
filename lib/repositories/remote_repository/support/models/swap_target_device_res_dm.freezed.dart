// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'swap_target_device_res_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SwapTargetDeviceResDm {

 String get id; String get name; String get serial;
/// Create a copy of SwapTargetDeviceResDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SwapTargetDeviceResDmCopyWith<SwapTargetDeviceResDm> get copyWith => _$SwapTargetDeviceResDmCopyWithImpl<SwapTargetDeviceResDm>(this as SwapTargetDeviceResDm, _$identity);

  /// Serializes this SwapTargetDeviceResDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SwapTargetDeviceResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.serial, serial) || other.serial == serial));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,serial);

@override
String toString() {
  return 'SwapTargetDeviceResDm(id: $id, name: $name, serial: $serial)';
}


}

/// @nodoc
abstract mixin class $SwapTargetDeviceResDmCopyWith<$Res>  {
  factory $SwapTargetDeviceResDmCopyWith(SwapTargetDeviceResDm value, $Res Function(SwapTargetDeviceResDm) _then) = _$SwapTargetDeviceResDmCopyWithImpl;
@useResult
$Res call({
 String id, String name, String serial
});




}
/// @nodoc
class _$SwapTargetDeviceResDmCopyWithImpl<$Res>
    implements $SwapTargetDeviceResDmCopyWith<$Res> {
  _$SwapTargetDeviceResDmCopyWithImpl(this._self, this._then);

  final SwapTargetDeviceResDm _self;
  final $Res Function(SwapTargetDeviceResDm) _then;

/// Create a copy of SwapTargetDeviceResDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? serial = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,serial: null == serial ? _self.serial : serial // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SwapTargetDeviceResDm].
extension SwapTargetDeviceResDmPatterns on SwapTargetDeviceResDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SwapTargetDeviceResDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SwapTargetDeviceResDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SwapTargetDeviceResDm value)  $default,){
final _that = this;
switch (_that) {
case _SwapTargetDeviceResDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SwapTargetDeviceResDm value)?  $default,){
final _that = this;
switch (_that) {
case _SwapTargetDeviceResDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String serial)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SwapTargetDeviceResDm() when $default != null:
return $default(_that.id,_that.name,_that.serial);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String serial)  $default,) {final _that = this;
switch (_that) {
case _SwapTargetDeviceResDm():
return $default(_that.id,_that.name,_that.serial);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String serial)?  $default,) {final _that = this;
switch (_that) {
case _SwapTargetDeviceResDm() when $default != null:
return $default(_that.id,_that.name,_that.serial);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SwapTargetDeviceResDm implements SwapTargetDeviceResDm {
  const _SwapTargetDeviceResDm({this.id = '', this.name = '', this.serial = ''});
  factory _SwapTargetDeviceResDm.fromJson(Map<String, dynamic> json) => _$SwapTargetDeviceResDmFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String name;
@override@JsonKey() final  String serial;

/// Create a copy of SwapTargetDeviceResDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SwapTargetDeviceResDmCopyWith<_SwapTargetDeviceResDm> get copyWith => __$SwapTargetDeviceResDmCopyWithImpl<_SwapTargetDeviceResDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SwapTargetDeviceResDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SwapTargetDeviceResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.serial, serial) || other.serial == serial));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,serial);

@override
String toString() {
  return 'SwapTargetDeviceResDm(id: $id, name: $name, serial: $serial)';
}


}

/// @nodoc
abstract mixin class _$SwapTargetDeviceResDmCopyWith<$Res> implements $SwapTargetDeviceResDmCopyWith<$Res> {
  factory _$SwapTargetDeviceResDmCopyWith(_SwapTargetDeviceResDm value, $Res Function(_SwapTargetDeviceResDm) _then) = __$SwapTargetDeviceResDmCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String serial
});




}
/// @nodoc
class __$SwapTargetDeviceResDmCopyWithImpl<$Res>
    implements _$SwapTargetDeviceResDmCopyWith<$Res> {
  __$SwapTargetDeviceResDmCopyWithImpl(this._self, this._then);

  final _SwapTargetDeviceResDm _self;
  final $Res Function(_SwapTargetDeviceResDm) _then;

/// Create a copy of SwapTargetDeviceResDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? serial = null,}) {
  return _then(_SwapTargetDeviceResDm(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,serial: null == serial ? _self.serial : serial // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
