// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_item_res_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InventoryItemResDm {

 String get id; String get name; String get serial; String get category; OwnerType get ownerType; String get clientName; DeviceStatus get status; String get currentOwnerName;
/// Create a copy of InventoryItemResDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventoryItemResDmCopyWith<InventoryItemResDm> get copyWith => _$InventoryItemResDmCopyWithImpl<InventoryItemResDm>(this as InventoryItemResDm, _$identity);

  /// Serializes this InventoryItemResDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryItemResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.serial, serial) || other.serial == serial)&&(identical(other.category, category) || other.category == category)&&(identical(other.ownerType, ownerType) || other.ownerType == ownerType)&&(identical(other.clientName, clientName) || other.clientName == clientName)&&(identical(other.status, status) || other.status == status)&&(identical(other.currentOwnerName, currentOwnerName) || other.currentOwnerName == currentOwnerName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,serial,category,ownerType,clientName,status,currentOwnerName);

@override
String toString() {
  return 'InventoryItemResDm(id: $id, name: $name, serial: $serial, category: $category, ownerType: $ownerType, clientName: $clientName, status: $status, currentOwnerName: $currentOwnerName)';
}


}

/// @nodoc
abstract mixin class $InventoryItemResDmCopyWith<$Res>  {
  factory $InventoryItemResDmCopyWith(InventoryItemResDm value, $Res Function(InventoryItemResDm) _then) = _$InventoryItemResDmCopyWithImpl;
@useResult
$Res call({
 String id, String name, String serial, String category, OwnerType ownerType, String clientName, DeviceStatus status, String currentOwnerName
});




}
/// @nodoc
class _$InventoryItemResDmCopyWithImpl<$Res>
    implements $InventoryItemResDmCopyWith<$Res> {
  _$InventoryItemResDmCopyWithImpl(this._self, this._then);

  final InventoryItemResDm _self;
  final $Res Function(InventoryItemResDm) _then;

/// Create a copy of InventoryItemResDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? serial = null,Object? category = null,Object? ownerType = null,Object? clientName = null,Object? status = null,Object? currentOwnerName = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,serial: null == serial ? _self.serial : serial // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,ownerType: null == ownerType ? _self.ownerType : ownerType // ignore: cast_nullable_to_non_nullable
as OwnerType,clientName: null == clientName ? _self.clientName : clientName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DeviceStatus,currentOwnerName: null == currentOwnerName ? _self.currentOwnerName : currentOwnerName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [InventoryItemResDm].
extension InventoryItemResDmPatterns on InventoryItemResDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InventoryItemResDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InventoryItemResDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InventoryItemResDm value)  $default,){
final _that = this;
switch (_that) {
case _InventoryItemResDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InventoryItemResDm value)?  $default,){
final _that = this;
switch (_that) {
case _InventoryItemResDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String serial,  String category,  OwnerType ownerType,  String clientName,  DeviceStatus status,  String currentOwnerName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InventoryItemResDm() when $default != null:
return $default(_that.id,_that.name,_that.serial,_that.category,_that.ownerType,_that.clientName,_that.status,_that.currentOwnerName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String serial,  String category,  OwnerType ownerType,  String clientName,  DeviceStatus status,  String currentOwnerName)  $default,) {final _that = this;
switch (_that) {
case _InventoryItemResDm():
return $default(_that.id,_that.name,_that.serial,_that.category,_that.ownerType,_that.clientName,_that.status,_that.currentOwnerName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String serial,  String category,  OwnerType ownerType,  String clientName,  DeviceStatus status,  String currentOwnerName)?  $default,) {final _that = this;
switch (_that) {
case _InventoryItemResDm() when $default != null:
return $default(_that.id,_that.name,_that.serial,_that.category,_that.ownerType,_that.clientName,_that.status,_that.currentOwnerName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InventoryItemResDm implements InventoryItemResDm {
  const _InventoryItemResDm({this.id = '', this.name = '', this.serial = '', this.category = '', this.ownerType = OwnerType.company, this.clientName = '', this.status = DeviceStatus.available, this.currentOwnerName = ''});
  factory _InventoryItemResDm.fromJson(Map<String, dynamic> json) => _$InventoryItemResDmFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String name;
@override@JsonKey() final  String serial;
@override@JsonKey() final  String category;
@override@JsonKey() final  OwnerType ownerType;
@override@JsonKey() final  String clientName;
@override@JsonKey() final  DeviceStatus status;
@override@JsonKey() final  String currentOwnerName;

/// Create a copy of InventoryItemResDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InventoryItemResDmCopyWith<_InventoryItemResDm> get copyWith => __$InventoryItemResDmCopyWithImpl<_InventoryItemResDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InventoryItemResDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InventoryItemResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.serial, serial) || other.serial == serial)&&(identical(other.category, category) || other.category == category)&&(identical(other.ownerType, ownerType) || other.ownerType == ownerType)&&(identical(other.clientName, clientName) || other.clientName == clientName)&&(identical(other.status, status) || other.status == status)&&(identical(other.currentOwnerName, currentOwnerName) || other.currentOwnerName == currentOwnerName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,serial,category,ownerType,clientName,status,currentOwnerName);

@override
String toString() {
  return 'InventoryItemResDm(id: $id, name: $name, serial: $serial, category: $category, ownerType: $ownerType, clientName: $clientName, status: $status, currentOwnerName: $currentOwnerName)';
}


}

/// @nodoc
abstract mixin class _$InventoryItemResDmCopyWith<$Res> implements $InventoryItemResDmCopyWith<$Res> {
  factory _$InventoryItemResDmCopyWith(_InventoryItemResDm value, $Res Function(_InventoryItemResDm) _then) = __$InventoryItemResDmCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String serial, String category, OwnerType ownerType, String clientName, DeviceStatus status, String currentOwnerName
});




}
/// @nodoc
class __$InventoryItemResDmCopyWithImpl<$Res>
    implements _$InventoryItemResDmCopyWith<$Res> {
  __$InventoryItemResDmCopyWithImpl(this._self, this._then);

  final _InventoryItemResDm _self;
  final $Res Function(_InventoryItemResDm) _then;

/// Create a copy of InventoryItemResDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? serial = null,Object? category = null,Object? ownerType = null,Object? clientName = null,Object? status = null,Object? currentOwnerName = null,}) {
  return _then(_InventoryItemResDm(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,serial: null == serial ? _self.serial : serial // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,ownerType: null == ownerType ? _self.ownerType : ownerType // ignore: cast_nullable_to_non_nullable
as OwnerType,clientName: null == clientName ? _self.clientName : clientName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DeviceStatus,currentOwnerName: null == currentOwnerName ? _self.currentOwnerName : currentOwnerName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
