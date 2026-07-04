// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'maintenance_item_res_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MaintenanceItemResDm {

 String get id; String get name; String get serial; String get category; DeviceStatus get status; String get setAt;
/// Create a copy of MaintenanceItemResDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaintenanceItemResDmCopyWith<MaintenanceItemResDm> get copyWith => _$MaintenanceItemResDmCopyWithImpl<MaintenanceItemResDm>(this as MaintenanceItemResDm, _$identity);

  /// Serializes this MaintenanceItemResDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaintenanceItemResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.serial, serial) || other.serial == serial)&&(identical(other.category, category) || other.category == category)&&(identical(other.status, status) || other.status == status)&&(identical(other.setAt, setAt) || other.setAt == setAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,serial,category,status,setAt);

@override
String toString() {
  return 'MaintenanceItemResDm(id: $id, name: $name, serial: $serial, category: $category, status: $status, setAt: $setAt)';
}


}

/// @nodoc
abstract mixin class $MaintenanceItemResDmCopyWith<$Res>  {
  factory $MaintenanceItemResDmCopyWith(MaintenanceItemResDm value, $Res Function(MaintenanceItemResDm) _then) = _$MaintenanceItemResDmCopyWithImpl;
@useResult
$Res call({
 String id, String name, String serial, String category, DeviceStatus status, String setAt
});




}
/// @nodoc
class _$MaintenanceItemResDmCopyWithImpl<$Res>
    implements $MaintenanceItemResDmCopyWith<$Res> {
  _$MaintenanceItemResDmCopyWithImpl(this._self, this._then);

  final MaintenanceItemResDm _self;
  final $Res Function(MaintenanceItemResDm) _then;

/// Create a copy of MaintenanceItemResDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? serial = null,Object? category = null,Object? status = null,Object? setAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,serial: null == serial ? _self.serial : serial // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DeviceStatus,setAt: null == setAt ? _self.setAt : setAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MaintenanceItemResDm].
extension MaintenanceItemResDmPatterns on MaintenanceItemResDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MaintenanceItemResDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MaintenanceItemResDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MaintenanceItemResDm value)  $default,){
final _that = this;
switch (_that) {
case _MaintenanceItemResDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MaintenanceItemResDm value)?  $default,){
final _that = this;
switch (_that) {
case _MaintenanceItemResDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String serial,  String category,  DeviceStatus status,  String setAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MaintenanceItemResDm() when $default != null:
return $default(_that.id,_that.name,_that.serial,_that.category,_that.status,_that.setAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String serial,  String category,  DeviceStatus status,  String setAt)  $default,) {final _that = this;
switch (_that) {
case _MaintenanceItemResDm():
return $default(_that.id,_that.name,_that.serial,_that.category,_that.status,_that.setAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String serial,  String category,  DeviceStatus status,  String setAt)?  $default,) {final _that = this;
switch (_that) {
case _MaintenanceItemResDm() when $default != null:
return $default(_that.id,_that.name,_that.serial,_that.category,_that.status,_that.setAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MaintenanceItemResDm implements MaintenanceItemResDm {
  const _MaintenanceItemResDm({this.id = '', this.name = '', this.serial = '', this.category = '', this.status = DeviceStatus.underRepair, this.setAt = ''});
  factory _MaintenanceItemResDm.fromJson(Map<String, dynamic> json) => _$MaintenanceItemResDmFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String name;
@override@JsonKey() final  String serial;
@override@JsonKey() final  String category;
@override@JsonKey() final  DeviceStatus status;
@override@JsonKey() final  String setAt;

/// Create a copy of MaintenanceItemResDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MaintenanceItemResDmCopyWith<_MaintenanceItemResDm> get copyWith => __$MaintenanceItemResDmCopyWithImpl<_MaintenanceItemResDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MaintenanceItemResDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MaintenanceItemResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.serial, serial) || other.serial == serial)&&(identical(other.category, category) || other.category == category)&&(identical(other.status, status) || other.status == status)&&(identical(other.setAt, setAt) || other.setAt == setAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,serial,category,status,setAt);

@override
String toString() {
  return 'MaintenanceItemResDm(id: $id, name: $name, serial: $serial, category: $category, status: $status, setAt: $setAt)';
}


}

/// @nodoc
abstract mixin class _$MaintenanceItemResDmCopyWith<$Res> implements $MaintenanceItemResDmCopyWith<$Res> {
  factory _$MaintenanceItemResDmCopyWith(_MaintenanceItemResDm value, $Res Function(_MaintenanceItemResDm) _then) = __$MaintenanceItemResDmCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String serial, String category, DeviceStatus status, String setAt
});




}
/// @nodoc
class __$MaintenanceItemResDmCopyWithImpl<$Res>
    implements _$MaintenanceItemResDmCopyWith<$Res> {
  __$MaintenanceItemResDmCopyWithImpl(this._self, this._then);

  final _MaintenanceItemResDm _self;
  final $Res Function(_MaintenanceItemResDm) _then;

/// Create a copy of MaintenanceItemResDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? serial = null,Object? category = null,Object? status = null,Object? setAt = null,}) {
  return _then(_MaintenanceItemResDm(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,serial: null == serial ? _self.serial : serial // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DeviceStatus,setAt: null == setAt ? _self.setAt : setAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
