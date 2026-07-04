// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assign_device_req_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AssignDeviceReqDm {

 String get requestId; String get deviceId; String get assignedFrom; String get assignedTo; bool get workFromHome;
/// Create a copy of AssignDeviceReqDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssignDeviceReqDmCopyWith<AssignDeviceReqDm> get copyWith => _$AssignDeviceReqDmCopyWithImpl<AssignDeviceReqDm>(this as AssignDeviceReqDm, _$identity);

  /// Serializes this AssignDeviceReqDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssignDeviceReqDm&&(identical(other.requestId, requestId) || other.requestId == requestId)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.assignedFrom, assignedFrom) || other.assignedFrom == assignedFrom)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo)&&(identical(other.workFromHome, workFromHome) || other.workFromHome == workFromHome));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,requestId,deviceId,assignedFrom,assignedTo,workFromHome);

@override
String toString() {
  return 'AssignDeviceReqDm(requestId: $requestId, deviceId: $deviceId, assignedFrom: $assignedFrom, assignedTo: $assignedTo, workFromHome: $workFromHome)';
}


}

/// @nodoc
abstract mixin class $AssignDeviceReqDmCopyWith<$Res>  {
  factory $AssignDeviceReqDmCopyWith(AssignDeviceReqDm value, $Res Function(AssignDeviceReqDm) _then) = _$AssignDeviceReqDmCopyWithImpl;
@useResult
$Res call({
 String requestId, String deviceId, String assignedFrom, String assignedTo, bool workFromHome
});




}
/// @nodoc
class _$AssignDeviceReqDmCopyWithImpl<$Res>
    implements $AssignDeviceReqDmCopyWith<$Res> {
  _$AssignDeviceReqDmCopyWithImpl(this._self, this._then);

  final AssignDeviceReqDm _self;
  final $Res Function(AssignDeviceReqDm) _then;

/// Create a copy of AssignDeviceReqDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? requestId = null,Object? deviceId = null,Object? assignedFrom = null,Object? assignedTo = null,Object? workFromHome = null,}) {
  return _then(_self.copyWith(
requestId: null == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String,deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,assignedFrom: null == assignedFrom ? _self.assignedFrom : assignedFrom // ignore: cast_nullable_to_non_nullable
as String,assignedTo: null == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as String,workFromHome: null == workFromHome ? _self.workFromHome : workFromHome // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AssignDeviceReqDm].
extension AssignDeviceReqDmPatterns on AssignDeviceReqDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AssignDeviceReqDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AssignDeviceReqDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AssignDeviceReqDm value)  $default,){
final _that = this;
switch (_that) {
case _AssignDeviceReqDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AssignDeviceReqDm value)?  $default,){
final _that = this;
switch (_that) {
case _AssignDeviceReqDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String requestId,  String deviceId,  String assignedFrom,  String assignedTo,  bool workFromHome)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AssignDeviceReqDm() when $default != null:
return $default(_that.requestId,_that.deviceId,_that.assignedFrom,_that.assignedTo,_that.workFromHome);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String requestId,  String deviceId,  String assignedFrom,  String assignedTo,  bool workFromHome)  $default,) {final _that = this;
switch (_that) {
case _AssignDeviceReqDm():
return $default(_that.requestId,_that.deviceId,_that.assignedFrom,_that.assignedTo,_that.workFromHome);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String requestId,  String deviceId,  String assignedFrom,  String assignedTo,  bool workFromHome)?  $default,) {final _that = this;
switch (_that) {
case _AssignDeviceReqDm() when $default != null:
return $default(_that.requestId,_that.deviceId,_that.assignedFrom,_that.assignedTo,_that.workFromHome);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _AssignDeviceReqDm implements AssignDeviceReqDm {
  const _AssignDeviceReqDm({required this.requestId, required this.deviceId, required this.assignedFrom, required this.assignedTo, required this.workFromHome});
  factory _AssignDeviceReqDm.fromJson(Map<String, dynamic> json) => _$AssignDeviceReqDmFromJson(json);

@override final  String requestId;
@override final  String deviceId;
@override final  String assignedFrom;
@override final  String assignedTo;
@override final  bool workFromHome;

/// Create a copy of AssignDeviceReqDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssignDeviceReqDmCopyWith<_AssignDeviceReqDm> get copyWith => __$AssignDeviceReqDmCopyWithImpl<_AssignDeviceReqDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AssignDeviceReqDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssignDeviceReqDm&&(identical(other.requestId, requestId) || other.requestId == requestId)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.assignedFrom, assignedFrom) || other.assignedFrom == assignedFrom)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo)&&(identical(other.workFromHome, workFromHome) || other.workFromHome == workFromHome));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,requestId,deviceId,assignedFrom,assignedTo,workFromHome);

@override
String toString() {
  return 'AssignDeviceReqDm(requestId: $requestId, deviceId: $deviceId, assignedFrom: $assignedFrom, assignedTo: $assignedTo, workFromHome: $workFromHome)';
}


}

/// @nodoc
abstract mixin class _$AssignDeviceReqDmCopyWith<$Res> implements $AssignDeviceReqDmCopyWith<$Res> {
  factory _$AssignDeviceReqDmCopyWith(_AssignDeviceReqDm value, $Res Function(_AssignDeviceReqDm) _then) = __$AssignDeviceReqDmCopyWithImpl;
@override @useResult
$Res call({
 String requestId, String deviceId, String assignedFrom, String assignedTo, bool workFromHome
});




}
/// @nodoc
class __$AssignDeviceReqDmCopyWithImpl<$Res>
    implements _$AssignDeviceReqDmCopyWith<$Res> {
  __$AssignDeviceReqDmCopyWithImpl(this._self, this._then);

  final _AssignDeviceReqDm _self;
  final $Res Function(_AssignDeviceReqDm) _then;

/// Create a copy of AssignDeviceReqDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? requestId = null,Object? deviceId = null,Object? assignedFrom = null,Object? assignedTo = null,Object? workFromHome = null,}) {
  return _then(_AssignDeviceReqDm(
requestId: null == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String,deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,assignedFrom: null == assignedFrom ? _self.assignedFrom : assignedFrom // ignore: cast_nullable_to_non_nullable
as String,assignedTo: null == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as String,workFromHome: null == workFromHome ? _self.workFromHome : workFromHome // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
