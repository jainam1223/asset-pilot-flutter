// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_device_status_req_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateDeviceStatusReqDm {

 String get deviceId; DeviceStatus get newStatus; String? get note;
/// Create a copy of UpdateDeviceStatusReqDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateDeviceStatusReqDmCopyWith<UpdateDeviceStatusReqDm> get copyWith => _$UpdateDeviceStatusReqDmCopyWithImpl<UpdateDeviceStatusReqDm>(this as UpdateDeviceStatusReqDm, _$identity);

  /// Serializes this UpdateDeviceStatusReqDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateDeviceStatusReqDm&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.newStatus, newStatus) || other.newStatus == newStatus)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deviceId,newStatus,note);

@override
String toString() {
  return 'UpdateDeviceStatusReqDm(deviceId: $deviceId, newStatus: $newStatus, note: $note)';
}


}

/// @nodoc
abstract mixin class $UpdateDeviceStatusReqDmCopyWith<$Res>  {
  factory $UpdateDeviceStatusReqDmCopyWith(UpdateDeviceStatusReqDm value, $Res Function(UpdateDeviceStatusReqDm) _then) = _$UpdateDeviceStatusReqDmCopyWithImpl;
@useResult
$Res call({
 String deviceId, DeviceStatus newStatus, String? note
});




}
/// @nodoc
class _$UpdateDeviceStatusReqDmCopyWithImpl<$Res>
    implements $UpdateDeviceStatusReqDmCopyWith<$Res> {
  _$UpdateDeviceStatusReqDmCopyWithImpl(this._self, this._then);

  final UpdateDeviceStatusReqDm _self;
  final $Res Function(UpdateDeviceStatusReqDm) _then;

/// Create a copy of UpdateDeviceStatusReqDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deviceId = null,Object? newStatus = null,Object? note = freezed,}) {
  return _then(_self.copyWith(
deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,newStatus: null == newStatus ? _self.newStatus : newStatus // ignore: cast_nullable_to_non_nullable
as DeviceStatus,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateDeviceStatusReqDm].
extension UpdateDeviceStatusReqDmPatterns on UpdateDeviceStatusReqDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateDeviceStatusReqDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateDeviceStatusReqDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateDeviceStatusReqDm value)  $default,){
final _that = this;
switch (_that) {
case _UpdateDeviceStatusReqDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateDeviceStatusReqDm value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateDeviceStatusReqDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String deviceId,  DeviceStatus newStatus,  String? note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateDeviceStatusReqDm() when $default != null:
return $default(_that.deviceId,_that.newStatus,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String deviceId,  DeviceStatus newStatus,  String? note)  $default,) {final _that = this;
switch (_that) {
case _UpdateDeviceStatusReqDm():
return $default(_that.deviceId,_that.newStatus,_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String deviceId,  DeviceStatus newStatus,  String? note)?  $default,) {final _that = this;
switch (_that) {
case _UpdateDeviceStatusReqDm() when $default != null:
return $default(_that.deviceId,_that.newStatus,_that.note);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _UpdateDeviceStatusReqDm implements UpdateDeviceStatusReqDm {
  const _UpdateDeviceStatusReqDm({required this.deviceId, required this.newStatus, this.note});
  factory _UpdateDeviceStatusReqDm.fromJson(Map<String, dynamic> json) => _$UpdateDeviceStatusReqDmFromJson(json);

@override final  String deviceId;
@override final  DeviceStatus newStatus;
@override final  String? note;

/// Create a copy of UpdateDeviceStatusReqDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateDeviceStatusReqDmCopyWith<_UpdateDeviceStatusReqDm> get copyWith => __$UpdateDeviceStatusReqDmCopyWithImpl<_UpdateDeviceStatusReqDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateDeviceStatusReqDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateDeviceStatusReqDm&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.newStatus, newStatus) || other.newStatus == newStatus)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deviceId,newStatus,note);

@override
String toString() {
  return 'UpdateDeviceStatusReqDm(deviceId: $deviceId, newStatus: $newStatus, note: $note)';
}


}

/// @nodoc
abstract mixin class _$UpdateDeviceStatusReqDmCopyWith<$Res> implements $UpdateDeviceStatusReqDmCopyWith<$Res> {
  factory _$UpdateDeviceStatusReqDmCopyWith(_UpdateDeviceStatusReqDm value, $Res Function(_UpdateDeviceStatusReqDm) _then) = __$UpdateDeviceStatusReqDmCopyWithImpl;
@override @useResult
$Res call({
 String deviceId, DeviceStatus newStatus, String? note
});




}
/// @nodoc
class __$UpdateDeviceStatusReqDmCopyWithImpl<$Res>
    implements _$UpdateDeviceStatusReqDmCopyWith<$Res> {
  __$UpdateDeviceStatusReqDmCopyWithImpl(this._self, this._then);

  final _UpdateDeviceStatusReqDm _self;
  final $Res Function(_UpdateDeviceStatusReqDm) _then;

/// Create a copy of UpdateDeviceStatusReqDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deviceId = null,Object? newStatus = null,Object? note = freezed,}) {
  return _then(_UpdateDeviceStatusReqDm(
deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,newStatus: null == newStatus ? _self.newStatus : newStatus // ignore: cast_nullable_to_non_nullable
as DeviceStatus,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
