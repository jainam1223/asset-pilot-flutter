// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'suggested_device_res_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SuggestedDeviceResDm {

@JsonKey(name: 'item_id') String get itemId; String get name;@JsonKey(name: 'serial_no') String get serialNo;@JsonKey(name: 'active_bookings_count') int get activeBookingsCount;@JsonKey(name: 'free_until') DateTime? get freeUntil;
/// Create a copy of SuggestedDeviceResDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuggestedDeviceResDmCopyWith<SuggestedDeviceResDm> get copyWith => _$SuggestedDeviceResDmCopyWithImpl<SuggestedDeviceResDm>(this as SuggestedDeviceResDm, _$identity);

  /// Serializes this SuggestedDeviceResDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuggestedDeviceResDm&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.name, name) || other.name == name)&&(identical(other.serialNo, serialNo) || other.serialNo == serialNo)&&(identical(other.activeBookingsCount, activeBookingsCount) || other.activeBookingsCount == activeBookingsCount)&&(identical(other.freeUntil, freeUntil) || other.freeUntil == freeUntil));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,itemId,name,serialNo,activeBookingsCount,freeUntil);

@override
String toString() {
  return 'SuggestedDeviceResDm(itemId: $itemId, name: $name, serialNo: $serialNo, activeBookingsCount: $activeBookingsCount, freeUntil: $freeUntil)';
}


}

/// @nodoc
abstract mixin class $SuggestedDeviceResDmCopyWith<$Res>  {
  factory $SuggestedDeviceResDmCopyWith(SuggestedDeviceResDm value, $Res Function(SuggestedDeviceResDm) _then) = _$SuggestedDeviceResDmCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'item_id') String itemId, String name,@JsonKey(name: 'serial_no') String serialNo,@JsonKey(name: 'active_bookings_count') int activeBookingsCount,@JsonKey(name: 'free_until') DateTime? freeUntil
});




}
/// @nodoc
class _$SuggestedDeviceResDmCopyWithImpl<$Res>
    implements $SuggestedDeviceResDmCopyWith<$Res> {
  _$SuggestedDeviceResDmCopyWithImpl(this._self, this._then);

  final SuggestedDeviceResDm _self;
  final $Res Function(SuggestedDeviceResDm) _then;

/// Create a copy of SuggestedDeviceResDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? itemId = null,Object? name = null,Object? serialNo = null,Object? activeBookingsCount = null,Object? freeUntil = freezed,}) {
  return _then(_self.copyWith(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,serialNo: null == serialNo ? _self.serialNo : serialNo // ignore: cast_nullable_to_non_nullable
as String,activeBookingsCount: null == activeBookingsCount ? _self.activeBookingsCount : activeBookingsCount // ignore: cast_nullable_to_non_nullable
as int,freeUntil: freezed == freeUntil ? _self.freeUntil : freeUntil // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [SuggestedDeviceResDm].
extension SuggestedDeviceResDmPatterns on SuggestedDeviceResDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SuggestedDeviceResDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SuggestedDeviceResDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SuggestedDeviceResDm value)  $default,){
final _that = this;
switch (_that) {
case _SuggestedDeviceResDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SuggestedDeviceResDm value)?  $default,){
final _that = this;
switch (_that) {
case _SuggestedDeviceResDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'item_id')  String itemId,  String name, @JsonKey(name: 'serial_no')  String serialNo, @JsonKey(name: 'active_bookings_count')  int activeBookingsCount, @JsonKey(name: 'free_until')  DateTime? freeUntil)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SuggestedDeviceResDm() when $default != null:
return $default(_that.itemId,_that.name,_that.serialNo,_that.activeBookingsCount,_that.freeUntil);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'item_id')  String itemId,  String name, @JsonKey(name: 'serial_no')  String serialNo, @JsonKey(name: 'active_bookings_count')  int activeBookingsCount, @JsonKey(name: 'free_until')  DateTime? freeUntil)  $default,) {final _that = this;
switch (_that) {
case _SuggestedDeviceResDm():
return $default(_that.itemId,_that.name,_that.serialNo,_that.activeBookingsCount,_that.freeUntil);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'item_id')  String itemId,  String name, @JsonKey(name: 'serial_no')  String serialNo, @JsonKey(name: 'active_bookings_count')  int activeBookingsCount, @JsonKey(name: 'free_until')  DateTime? freeUntil)?  $default,) {final _that = this;
switch (_that) {
case _SuggestedDeviceResDm() when $default != null:
return $default(_that.itemId,_that.name,_that.serialNo,_that.activeBookingsCount,_that.freeUntil);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SuggestedDeviceResDm implements SuggestedDeviceResDm {
  const _SuggestedDeviceResDm({@JsonKey(name: 'item_id') this.itemId = '', this.name = '', @JsonKey(name: 'serial_no') this.serialNo = '', @JsonKey(name: 'active_bookings_count') this.activeBookingsCount = 0, @JsonKey(name: 'free_until') this.freeUntil});
  factory _SuggestedDeviceResDm.fromJson(Map<String, dynamic> json) => _$SuggestedDeviceResDmFromJson(json);

@override@JsonKey(name: 'item_id') final  String itemId;
@override@JsonKey() final  String name;
@override@JsonKey(name: 'serial_no') final  String serialNo;
@override@JsonKey(name: 'active_bookings_count') final  int activeBookingsCount;
@override@JsonKey(name: 'free_until') final  DateTime? freeUntil;

/// Create a copy of SuggestedDeviceResDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuggestedDeviceResDmCopyWith<_SuggestedDeviceResDm> get copyWith => __$SuggestedDeviceResDmCopyWithImpl<_SuggestedDeviceResDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SuggestedDeviceResDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SuggestedDeviceResDm&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.name, name) || other.name == name)&&(identical(other.serialNo, serialNo) || other.serialNo == serialNo)&&(identical(other.activeBookingsCount, activeBookingsCount) || other.activeBookingsCount == activeBookingsCount)&&(identical(other.freeUntil, freeUntil) || other.freeUntil == freeUntil));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,itemId,name,serialNo,activeBookingsCount,freeUntil);

@override
String toString() {
  return 'SuggestedDeviceResDm(itemId: $itemId, name: $name, serialNo: $serialNo, activeBookingsCount: $activeBookingsCount, freeUntil: $freeUntil)';
}


}

/// @nodoc
abstract mixin class _$SuggestedDeviceResDmCopyWith<$Res> implements $SuggestedDeviceResDmCopyWith<$Res> {
  factory _$SuggestedDeviceResDmCopyWith(_SuggestedDeviceResDm value, $Res Function(_SuggestedDeviceResDm) _then) = __$SuggestedDeviceResDmCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'item_id') String itemId, String name,@JsonKey(name: 'serial_no') String serialNo,@JsonKey(name: 'active_bookings_count') int activeBookingsCount,@JsonKey(name: 'free_until') DateTime? freeUntil
});




}
/// @nodoc
class __$SuggestedDeviceResDmCopyWithImpl<$Res>
    implements _$SuggestedDeviceResDmCopyWith<$Res> {
  __$SuggestedDeviceResDmCopyWithImpl(this._self, this._then);

  final _SuggestedDeviceResDm _self;
  final $Res Function(_SuggestedDeviceResDm) _then;

/// Create a copy of SuggestedDeviceResDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? itemId = null,Object? name = null,Object? serialNo = null,Object? activeBookingsCount = null,Object? freeUntil = freezed,}) {
  return _then(_SuggestedDeviceResDm(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,serialNo: null == serialNo ? _self.serialNo : serialNo // ignore: cast_nullable_to_non_nullable
as String,activeBookingsCount: null == activeBookingsCount ? _self.activeBookingsCount : activeBookingsCount // ignore: cast_nullable_to_non_nullable
as int,freeUntil: freezed == freeUntil ? _self.freeUntil : freeUntil // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
