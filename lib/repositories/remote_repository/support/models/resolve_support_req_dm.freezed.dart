// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resolve_support_req_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResolveSupportReqDm {

 String get supportId; SupportResolution get resolution; DeviceStatus get oldDeviceNextStatus; String? get swappedToItemId; String? get itNote;
/// Create a copy of ResolveSupportReqDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResolveSupportReqDmCopyWith<ResolveSupportReqDm> get copyWith => _$ResolveSupportReqDmCopyWithImpl<ResolveSupportReqDm>(this as ResolveSupportReqDm, _$identity);

  /// Serializes this ResolveSupportReqDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResolveSupportReqDm&&(identical(other.supportId, supportId) || other.supportId == supportId)&&(identical(other.resolution, resolution) || other.resolution == resolution)&&(identical(other.oldDeviceNextStatus, oldDeviceNextStatus) || other.oldDeviceNextStatus == oldDeviceNextStatus)&&(identical(other.swappedToItemId, swappedToItemId) || other.swappedToItemId == swappedToItemId)&&(identical(other.itNote, itNote) || other.itNote == itNote));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,supportId,resolution,oldDeviceNextStatus,swappedToItemId,itNote);

@override
String toString() {
  return 'ResolveSupportReqDm(supportId: $supportId, resolution: $resolution, oldDeviceNextStatus: $oldDeviceNextStatus, swappedToItemId: $swappedToItemId, itNote: $itNote)';
}


}

/// @nodoc
abstract mixin class $ResolveSupportReqDmCopyWith<$Res>  {
  factory $ResolveSupportReqDmCopyWith(ResolveSupportReqDm value, $Res Function(ResolveSupportReqDm) _then) = _$ResolveSupportReqDmCopyWithImpl;
@useResult
$Res call({
 String supportId, SupportResolution resolution, DeviceStatus oldDeviceNextStatus, String? swappedToItemId, String? itNote
});




}
/// @nodoc
class _$ResolveSupportReqDmCopyWithImpl<$Res>
    implements $ResolveSupportReqDmCopyWith<$Res> {
  _$ResolveSupportReqDmCopyWithImpl(this._self, this._then);

  final ResolveSupportReqDm _self;
  final $Res Function(ResolveSupportReqDm) _then;

/// Create a copy of ResolveSupportReqDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? supportId = null,Object? resolution = null,Object? oldDeviceNextStatus = null,Object? swappedToItemId = freezed,Object? itNote = freezed,}) {
  return _then(_self.copyWith(
supportId: null == supportId ? _self.supportId : supportId // ignore: cast_nullable_to_non_nullable
as String,resolution: null == resolution ? _self.resolution : resolution // ignore: cast_nullable_to_non_nullable
as SupportResolution,oldDeviceNextStatus: null == oldDeviceNextStatus ? _self.oldDeviceNextStatus : oldDeviceNextStatus // ignore: cast_nullable_to_non_nullable
as DeviceStatus,swappedToItemId: freezed == swappedToItemId ? _self.swappedToItemId : swappedToItemId // ignore: cast_nullable_to_non_nullable
as String?,itNote: freezed == itNote ? _self.itNote : itNote // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ResolveSupportReqDm].
extension ResolveSupportReqDmPatterns on ResolveSupportReqDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResolveSupportReqDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResolveSupportReqDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResolveSupportReqDm value)  $default,){
final _that = this;
switch (_that) {
case _ResolveSupportReqDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResolveSupportReqDm value)?  $default,){
final _that = this;
switch (_that) {
case _ResolveSupportReqDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String supportId,  SupportResolution resolution,  DeviceStatus oldDeviceNextStatus,  String? swappedToItemId,  String? itNote)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResolveSupportReqDm() when $default != null:
return $default(_that.supportId,_that.resolution,_that.oldDeviceNextStatus,_that.swappedToItemId,_that.itNote);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String supportId,  SupportResolution resolution,  DeviceStatus oldDeviceNextStatus,  String? swappedToItemId,  String? itNote)  $default,) {final _that = this;
switch (_that) {
case _ResolveSupportReqDm():
return $default(_that.supportId,_that.resolution,_that.oldDeviceNextStatus,_that.swappedToItemId,_that.itNote);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String supportId,  SupportResolution resolution,  DeviceStatus oldDeviceNextStatus,  String? swappedToItemId,  String? itNote)?  $default,) {final _that = this;
switch (_that) {
case _ResolveSupportReqDm() when $default != null:
return $default(_that.supportId,_that.resolution,_that.oldDeviceNextStatus,_that.swappedToItemId,_that.itNote);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _ResolveSupportReqDm implements ResolveSupportReqDm {
  const _ResolveSupportReqDm({required this.supportId, required this.resolution, required this.oldDeviceNextStatus, this.swappedToItemId, this.itNote});
  factory _ResolveSupportReqDm.fromJson(Map<String, dynamic> json) => _$ResolveSupportReqDmFromJson(json);

@override final  String supportId;
@override final  SupportResolution resolution;
@override final  DeviceStatus oldDeviceNextStatus;
@override final  String? swappedToItemId;
@override final  String? itNote;

/// Create a copy of ResolveSupportReqDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResolveSupportReqDmCopyWith<_ResolveSupportReqDm> get copyWith => __$ResolveSupportReqDmCopyWithImpl<_ResolveSupportReqDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResolveSupportReqDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResolveSupportReqDm&&(identical(other.supportId, supportId) || other.supportId == supportId)&&(identical(other.resolution, resolution) || other.resolution == resolution)&&(identical(other.oldDeviceNextStatus, oldDeviceNextStatus) || other.oldDeviceNextStatus == oldDeviceNextStatus)&&(identical(other.swappedToItemId, swappedToItemId) || other.swappedToItemId == swappedToItemId)&&(identical(other.itNote, itNote) || other.itNote == itNote));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,supportId,resolution,oldDeviceNextStatus,swappedToItemId,itNote);

@override
String toString() {
  return 'ResolveSupportReqDm(supportId: $supportId, resolution: $resolution, oldDeviceNextStatus: $oldDeviceNextStatus, swappedToItemId: $swappedToItemId, itNote: $itNote)';
}


}

/// @nodoc
abstract mixin class _$ResolveSupportReqDmCopyWith<$Res> implements $ResolveSupportReqDmCopyWith<$Res> {
  factory _$ResolveSupportReqDmCopyWith(_ResolveSupportReqDm value, $Res Function(_ResolveSupportReqDm) _then) = __$ResolveSupportReqDmCopyWithImpl;
@override @useResult
$Res call({
 String supportId, SupportResolution resolution, DeviceStatus oldDeviceNextStatus, String? swappedToItemId, String? itNote
});




}
/// @nodoc
class __$ResolveSupportReqDmCopyWithImpl<$Res>
    implements _$ResolveSupportReqDmCopyWith<$Res> {
  __$ResolveSupportReqDmCopyWithImpl(this._self, this._then);

  final _ResolveSupportReqDm _self;
  final $Res Function(_ResolveSupportReqDm) _then;

/// Create a copy of ResolveSupportReqDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? supportId = null,Object? resolution = null,Object? oldDeviceNextStatus = null,Object? swappedToItemId = freezed,Object? itNote = freezed,}) {
  return _then(_ResolveSupportReqDm(
supportId: null == supportId ? _self.supportId : supportId // ignore: cast_nullable_to_non_nullable
as String,resolution: null == resolution ? _self.resolution : resolution // ignore: cast_nullable_to_non_nullable
as SupportResolution,oldDeviceNextStatus: null == oldDeviceNextStatus ? _self.oldDeviceNextStatus : oldDeviceNextStatus // ignore: cast_nullable_to_non_nullable
as DeviceStatus,swappedToItemId: freezed == swappedToItemId ? _self.swappedToItemId : swappedToItemId // ignore: cast_nullable_to_non_nullable
as String?,itNote: freezed == itNote ? _self.itNote : itNote // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
