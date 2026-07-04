// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'direct_assign_req_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DirectAssignReqDm {

@JsonKey(name: 'employee_id') String get employeeId;@JsonKey(name: 'assigned_from') DateTime get assignedFrom;@JsonKey(name: 'assigned_to') DateTime get assignedTo; String? get note;
/// Create a copy of DirectAssignReqDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DirectAssignReqDmCopyWith<DirectAssignReqDm> get copyWith => _$DirectAssignReqDmCopyWithImpl<DirectAssignReqDm>(this as DirectAssignReqDm, _$identity);

  /// Serializes this DirectAssignReqDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DirectAssignReqDm&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.assignedFrom, assignedFrom) || other.assignedFrom == assignedFrom)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,employeeId,assignedFrom,assignedTo,note);

@override
String toString() {
  return 'DirectAssignReqDm(employeeId: $employeeId, assignedFrom: $assignedFrom, assignedTo: $assignedTo, note: $note)';
}


}

/// @nodoc
abstract mixin class $DirectAssignReqDmCopyWith<$Res>  {
  factory $DirectAssignReqDmCopyWith(DirectAssignReqDm value, $Res Function(DirectAssignReqDm) _then) = _$DirectAssignReqDmCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'employee_id') String employeeId,@JsonKey(name: 'assigned_from') DateTime assignedFrom,@JsonKey(name: 'assigned_to') DateTime assignedTo, String? note
});




}
/// @nodoc
class _$DirectAssignReqDmCopyWithImpl<$Res>
    implements $DirectAssignReqDmCopyWith<$Res> {
  _$DirectAssignReqDmCopyWithImpl(this._self, this._then);

  final DirectAssignReqDm _self;
  final $Res Function(DirectAssignReqDm) _then;

/// Create a copy of DirectAssignReqDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? employeeId = null,Object? assignedFrom = null,Object? assignedTo = null,Object? note = freezed,}) {
  return _then(_self.copyWith(
employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,assignedFrom: null == assignedFrom ? _self.assignedFrom : assignedFrom // ignore: cast_nullable_to_non_nullable
as DateTime,assignedTo: null == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as DateTime,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DirectAssignReqDm].
extension DirectAssignReqDmPatterns on DirectAssignReqDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DirectAssignReqDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DirectAssignReqDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DirectAssignReqDm value)  $default,){
final _that = this;
switch (_that) {
case _DirectAssignReqDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DirectAssignReqDm value)?  $default,){
final _that = this;
switch (_that) {
case _DirectAssignReqDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'employee_id')  String employeeId, @JsonKey(name: 'assigned_from')  DateTime assignedFrom, @JsonKey(name: 'assigned_to')  DateTime assignedTo,  String? note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DirectAssignReqDm() when $default != null:
return $default(_that.employeeId,_that.assignedFrom,_that.assignedTo,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'employee_id')  String employeeId, @JsonKey(name: 'assigned_from')  DateTime assignedFrom, @JsonKey(name: 'assigned_to')  DateTime assignedTo,  String? note)  $default,) {final _that = this;
switch (_that) {
case _DirectAssignReqDm():
return $default(_that.employeeId,_that.assignedFrom,_that.assignedTo,_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'employee_id')  String employeeId, @JsonKey(name: 'assigned_from')  DateTime assignedFrom, @JsonKey(name: 'assigned_to')  DateTime assignedTo,  String? note)?  $default,) {final _that = this;
switch (_that) {
case _DirectAssignReqDm() when $default != null:
return $default(_that.employeeId,_that.assignedFrom,_that.assignedTo,_that.note);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _DirectAssignReqDm implements DirectAssignReqDm {
  const _DirectAssignReqDm({@JsonKey(name: 'employee_id') required this.employeeId, @JsonKey(name: 'assigned_from') required this.assignedFrom, @JsonKey(name: 'assigned_to') required this.assignedTo, this.note});
  factory _DirectAssignReqDm.fromJson(Map<String, dynamic> json) => _$DirectAssignReqDmFromJson(json);

@override@JsonKey(name: 'employee_id') final  String employeeId;
@override@JsonKey(name: 'assigned_from') final  DateTime assignedFrom;
@override@JsonKey(name: 'assigned_to') final  DateTime assignedTo;
@override final  String? note;

/// Create a copy of DirectAssignReqDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DirectAssignReqDmCopyWith<_DirectAssignReqDm> get copyWith => __$DirectAssignReqDmCopyWithImpl<_DirectAssignReqDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DirectAssignReqDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DirectAssignReqDm&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.assignedFrom, assignedFrom) || other.assignedFrom == assignedFrom)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,employeeId,assignedFrom,assignedTo,note);

@override
String toString() {
  return 'DirectAssignReqDm(employeeId: $employeeId, assignedFrom: $assignedFrom, assignedTo: $assignedTo, note: $note)';
}


}

/// @nodoc
abstract mixin class _$DirectAssignReqDmCopyWith<$Res> implements $DirectAssignReqDmCopyWith<$Res> {
  factory _$DirectAssignReqDmCopyWith(_DirectAssignReqDm value, $Res Function(_DirectAssignReqDm) _then) = __$DirectAssignReqDmCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'employee_id') String employeeId,@JsonKey(name: 'assigned_from') DateTime assignedFrom,@JsonKey(name: 'assigned_to') DateTime assignedTo, String? note
});




}
/// @nodoc
class __$DirectAssignReqDmCopyWithImpl<$Res>
    implements _$DirectAssignReqDmCopyWith<$Res> {
  __$DirectAssignReqDmCopyWithImpl(this._self, this._then);

  final _DirectAssignReqDm _self;
  final $Res Function(_DirectAssignReqDm) _then;

/// Create a copy of DirectAssignReqDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? employeeId = null,Object? assignedFrom = null,Object? assignedTo = null,Object? note = freezed,}) {
  return _then(_DirectAssignReqDm(
employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,assignedFrom: null == assignedFrom ? _self.assignedFrom : assignedFrom // ignore: cast_nullable_to_non_nullable
as DateTime,assignedTo: null == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as DateTime,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
