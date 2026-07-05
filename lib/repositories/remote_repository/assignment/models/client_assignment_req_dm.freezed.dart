// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_assignment_req_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClientAssignmentReqDm {

 String get deviceId; String get employeeId; DateTime get assignedFrom; DateTime get assignedTo; String? get notes;
/// Create a copy of ClientAssignmentReqDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClientAssignmentReqDmCopyWith<ClientAssignmentReqDm> get copyWith => _$ClientAssignmentReqDmCopyWithImpl<ClientAssignmentReqDm>(this as ClientAssignmentReqDm, _$identity);

  /// Serializes this ClientAssignmentReqDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClientAssignmentReqDm&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.assignedFrom, assignedFrom) || other.assignedFrom == assignedFrom)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deviceId,employeeId,assignedFrom,assignedTo,notes);

@override
String toString() {
  return 'ClientAssignmentReqDm(deviceId: $deviceId, employeeId: $employeeId, assignedFrom: $assignedFrom, assignedTo: $assignedTo, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $ClientAssignmentReqDmCopyWith<$Res>  {
  factory $ClientAssignmentReqDmCopyWith(ClientAssignmentReqDm value, $Res Function(ClientAssignmentReqDm) _then) = _$ClientAssignmentReqDmCopyWithImpl;
@useResult
$Res call({
 String deviceId, String employeeId, DateTime assignedFrom, DateTime assignedTo, String? notes
});




}
/// @nodoc
class _$ClientAssignmentReqDmCopyWithImpl<$Res>
    implements $ClientAssignmentReqDmCopyWith<$Res> {
  _$ClientAssignmentReqDmCopyWithImpl(this._self, this._then);

  final ClientAssignmentReqDm _self;
  final $Res Function(ClientAssignmentReqDm) _then;

/// Create a copy of ClientAssignmentReqDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deviceId = null,Object? employeeId = null,Object? assignedFrom = null,Object? assignedTo = null,Object? notes = freezed,}) {
  return _then(_self.copyWith(
deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,assignedFrom: null == assignedFrom ? _self.assignedFrom : assignedFrom // ignore: cast_nullable_to_non_nullable
as DateTime,assignedTo: null == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as DateTime,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ClientAssignmentReqDm].
extension ClientAssignmentReqDmPatterns on ClientAssignmentReqDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClientAssignmentReqDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClientAssignmentReqDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClientAssignmentReqDm value)  $default,){
final _that = this;
switch (_that) {
case _ClientAssignmentReqDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClientAssignmentReqDm value)?  $default,){
final _that = this;
switch (_that) {
case _ClientAssignmentReqDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String deviceId,  String employeeId,  DateTime assignedFrom,  DateTime assignedTo,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClientAssignmentReqDm() when $default != null:
return $default(_that.deviceId,_that.employeeId,_that.assignedFrom,_that.assignedTo,_that.notes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String deviceId,  String employeeId,  DateTime assignedFrom,  DateTime assignedTo,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _ClientAssignmentReqDm():
return $default(_that.deviceId,_that.employeeId,_that.assignedFrom,_that.assignedTo,_that.notes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String deviceId,  String employeeId,  DateTime assignedFrom,  DateTime assignedTo,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _ClientAssignmentReqDm() when $default != null:
return $default(_that.deviceId,_that.employeeId,_that.assignedFrom,_that.assignedTo,_that.notes);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _ClientAssignmentReqDm implements ClientAssignmentReqDm {
  const _ClientAssignmentReqDm({required this.deviceId, required this.employeeId, required this.assignedFrom, required this.assignedTo, this.notes});
  factory _ClientAssignmentReqDm.fromJson(Map<String, dynamic> json) => _$ClientAssignmentReqDmFromJson(json);

@override final  String deviceId;
@override final  String employeeId;
@override final  DateTime assignedFrom;
@override final  DateTime assignedTo;
@override final  String? notes;

/// Create a copy of ClientAssignmentReqDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClientAssignmentReqDmCopyWith<_ClientAssignmentReqDm> get copyWith => __$ClientAssignmentReqDmCopyWithImpl<_ClientAssignmentReqDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClientAssignmentReqDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClientAssignmentReqDm&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.assignedFrom, assignedFrom) || other.assignedFrom == assignedFrom)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deviceId,employeeId,assignedFrom,assignedTo,notes);

@override
String toString() {
  return 'ClientAssignmentReqDm(deviceId: $deviceId, employeeId: $employeeId, assignedFrom: $assignedFrom, assignedTo: $assignedTo, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$ClientAssignmentReqDmCopyWith<$Res> implements $ClientAssignmentReqDmCopyWith<$Res> {
  factory _$ClientAssignmentReqDmCopyWith(_ClientAssignmentReqDm value, $Res Function(_ClientAssignmentReqDm) _then) = __$ClientAssignmentReqDmCopyWithImpl;
@override @useResult
$Res call({
 String deviceId, String employeeId, DateTime assignedFrom, DateTime assignedTo, String? notes
});




}
/// @nodoc
class __$ClientAssignmentReqDmCopyWithImpl<$Res>
    implements _$ClientAssignmentReqDmCopyWith<$Res> {
  __$ClientAssignmentReqDmCopyWithImpl(this._self, this._then);

  final _ClientAssignmentReqDm _self;
  final $Res Function(_ClientAssignmentReqDm) _then;

/// Create a copy of ClientAssignmentReqDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deviceId = null,Object? employeeId = null,Object? assignedFrom = null,Object? assignedTo = null,Object? notes = freezed,}) {
  return _then(_ClientAssignmentReqDm(
deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,assignedFrom: null == assignedFrom ? _self.assignedFrom : assignedFrom // ignore: cast_nullable_to_non_nullable
as DateTime,assignedTo: null == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as DateTime,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
