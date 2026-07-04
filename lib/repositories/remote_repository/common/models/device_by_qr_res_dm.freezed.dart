// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_by_qr_res_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeviceByQrResDm {

 String get itemId; String get name; String get categoryName; String get ownerName;
/// Create a copy of DeviceByQrResDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceByQrResDmCopyWith<DeviceByQrResDm> get copyWith => _$DeviceByQrResDmCopyWithImpl<DeviceByQrResDm>(this as DeviceByQrResDm, _$identity);

  /// Serializes this DeviceByQrResDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceByQrResDm&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.name, name) || other.name == name)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.ownerName, ownerName) || other.ownerName == ownerName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,itemId,name,categoryName,ownerName);

@override
String toString() {
  return 'DeviceByQrResDm(itemId: $itemId, name: $name, categoryName: $categoryName, ownerName: $ownerName)';
}


}

/// @nodoc
abstract mixin class $DeviceByQrResDmCopyWith<$Res>  {
  factory $DeviceByQrResDmCopyWith(DeviceByQrResDm value, $Res Function(DeviceByQrResDm) _then) = _$DeviceByQrResDmCopyWithImpl;
@useResult
$Res call({
 String itemId, String name, String categoryName, String ownerName
});




}
/// @nodoc
class _$DeviceByQrResDmCopyWithImpl<$Res>
    implements $DeviceByQrResDmCopyWith<$Res> {
  _$DeviceByQrResDmCopyWithImpl(this._self, this._then);

  final DeviceByQrResDm _self;
  final $Res Function(DeviceByQrResDm) _then;

/// Create a copy of DeviceByQrResDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? itemId = null,Object? name = null,Object? categoryName = null,Object? ownerName = null,}) {
  return _then(_self.copyWith(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,ownerName: null == ownerName ? _self.ownerName : ownerName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DeviceByQrResDm].
extension DeviceByQrResDmPatterns on DeviceByQrResDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceByQrResDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceByQrResDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceByQrResDm value)  $default,){
final _that = this;
switch (_that) {
case _DeviceByQrResDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceByQrResDm value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceByQrResDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String itemId,  String name,  String categoryName,  String ownerName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceByQrResDm() when $default != null:
return $default(_that.itemId,_that.name,_that.categoryName,_that.ownerName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String itemId,  String name,  String categoryName,  String ownerName)  $default,) {final _that = this;
switch (_that) {
case _DeviceByQrResDm():
return $default(_that.itemId,_that.name,_that.categoryName,_that.ownerName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String itemId,  String name,  String categoryName,  String ownerName)?  $default,) {final _that = this;
switch (_that) {
case _DeviceByQrResDm() when $default != null:
return $default(_that.itemId,_that.name,_that.categoryName,_that.ownerName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceByQrResDm implements DeviceByQrResDm {
  const _DeviceByQrResDm({this.itemId = '', this.name = '', this.categoryName = '', this.ownerName = ''});
  factory _DeviceByQrResDm.fromJson(Map<String, dynamic> json) => _$DeviceByQrResDmFromJson(json);

@override@JsonKey() final  String itemId;
@override@JsonKey() final  String name;
@override@JsonKey() final  String categoryName;
@override@JsonKey() final  String ownerName;

/// Create a copy of DeviceByQrResDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceByQrResDmCopyWith<_DeviceByQrResDm> get copyWith => __$DeviceByQrResDmCopyWithImpl<_DeviceByQrResDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceByQrResDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceByQrResDm&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.name, name) || other.name == name)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.ownerName, ownerName) || other.ownerName == ownerName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,itemId,name,categoryName,ownerName);

@override
String toString() {
  return 'DeviceByQrResDm(itemId: $itemId, name: $name, categoryName: $categoryName, ownerName: $ownerName)';
}


}

/// @nodoc
abstract mixin class _$DeviceByQrResDmCopyWith<$Res> implements $DeviceByQrResDmCopyWith<$Res> {
  factory _$DeviceByQrResDmCopyWith(_DeviceByQrResDm value, $Res Function(_DeviceByQrResDm) _then) = __$DeviceByQrResDmCopyWithImpl;
@override @useResult
$Res call({
 String itemId, String name, String categoryName, String ownerName
});




}
/// @nodoc
class __$DeviceByQrResDmCopyWithImpl<$Res>
    implements _$DeviceByQrResDmCopyWith<$Res> {
  __$DeviceByQrResDmCopyWithImpl(this._self, this._then);

  final _DeviceByQrResDm _self;
  final $Res Function(_DeviceByQrResDm) _then;

/// Create a copy of DeviceByQrResDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? itemId = null,Object? name = null,Object? categoryName = null,Object? ownerName = null,}) {
  return _then(_DeviceByQrResDm(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,ownerName: null == ownerName ? _self.ownerName : ownerName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
