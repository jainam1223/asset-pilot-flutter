// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_assignment_res_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CurrentAssignmentResDm {

 String get requestId; String get requesterName; String get assignedFrom; String get assignedTo; bool get workFromHome; String get shipTracking;
/// Create a copy of CurrentAssignmentResDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurrentAssignmentResDmCopyWith<CurrentAssignmentResDm> get copyWith => _$CurrentAssignmentResDmCopyWithImpl<CurrentAssignmentResDm>(this as CurrentAssignmentResDm, _$identity);

  /// Serializes this CurrentAssignmentResDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrentAssignmentResDm&&(identical(other.requestId, requestId) || other.requestId == requestId)&&(identical(other.requesterName, requesterName) || other.requesterName == requesterName)&&(identical(other.assignedFrom, assignedFrom) || other.assignedFrom == assignedFrom)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo)&&(identical(other.workFromHome, workFromHome) || other.workFromHome == workFromHome)&&(identical(other.shipTracking, shipTracking) || other.shipTracking == shipTracking));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,requestId,requesterName,assignedFrom,assignedTo,workFromHome,shipTracking);

@override
String toString() {
  return 'CurrentAssignmentResDm(requestId: $requestId, requesterName: $requesterName, assignedFrom: $assignedFrom, assignedTo: $assignedTo, workFromHome: $workFromHome, shipTracking: $shipTracking)';
}


}

/// @nodoc
abstract mixin class $CurrentAssignmentResDmCopyWith<$Res>  {
  factory $CurrentAssignmentResDmCopyWith(CurrentAssignmentResDm value, $Res Function(CurrentAssignmentResDm) _then) = _$CurrentAssignmentResDmCopyWithImpl;
@useResult
$Res call({
 String requestId, String requesterName, String assignedFrom, String assignedTo, bool workFromHome, String shipTracking
});




}
/// @nodoc
class _$CurrentAssignmentResDmCopyWithImpl<$Res>
    implements $CurrentAssignmentResDmCopyWith<$Res> {
  _$CurrentAssignmentResDmCopyWithImpl(this._self, this._then);

  final CurrentAssignmentResDm _self;
  final $Res Function(CurrentAssignmentResDm) _then;

/// Create a copy of CurrentAssignmentResDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? requestId = null,Object? requesterName = null,Object? assignedFrom = null,Object? assignedTo = null,Object? workFromHome = null,Object? shipTracking = null,}) {
  return _then(_self.copyWith(
requestId: null == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String,requesterName: null == requesterName ? _self.requesterName : requesterName // ignore: cast_nullable_to_non_nullable
as String,assignedFrom: null == assignedFrom ? _self.assignedFrom : assignedFrom // ignore: cast_nullable_to_non_nullable
as String,assignedTo: null == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as String,workFromHome: null == workFromHome ? _self.workFromHome : workFromHome // ignore: cast_nullable_to_non_nullable
as bool,shipTracking: null == shipTracking ? _self.shipTracking : shipTracking // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CurrentAssignmentResDm].
extension CurrentAssignmentResDmPatterns on CurrentAssignmentResDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CurrentAssignmentResDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CurrentAssignmentResDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CurrentAssignmentResDm value)  $default,){
final _that = this;
switch (_that) {
case _CurrentAssignmentResDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CurrentAssignmentResDm value)?  $default,){
final _that = this;
switch (_that) {
case _CurrentAssignmentResDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String requestId,  String requesterName,  String assignedFrom,  String assignedTo,  bool workFromHome,  String shipTracking)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CurrentAssignmentResDm() when $default != null:
return $default(_that.requestId,_that.requesterName,_that.assignedFrom,_that.assignedTo,_that.workFromHome,_that.shipTracking);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String requestId,  String requesterName,  String assignedFrom,  String assignedTo,  bool workFromHome,  String shipTracking)  $default,) {final _that = this;
switch (_that) {
case _CurrentAssignmentResDm():
return $default(_that.requestId,_that.requesterName,_that.assignedFrom,_that.assignedTo,_that.workFromHome,_that.shipTracking);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String requestId,  String requesterName,  String assignedFrom,  String assignedTo,  bool workFromHome,  String shipTracking)?  $default,) {final _that = this;
switch (_that) {
case _CurrentAssignmentResDm() when $default != null:
return $default(_that.requestId,_that.requesterName,_that.assignedFrom,_that.assignedTo,_that.workFromHome,_that.shipTracking);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CurrentAssignmentResDm implements CurrentAssignmentResDm {
  const _CurrentAssignmentResDm({this.requestId = '', this.requesterName = '', this.assignedFrom = '', this.assignedTo = '', this.workFromHome = false, this.shipTracking = ''});
  factory _CurrentAssignmentResDm.fromJson(Map<String, dynamic> json) => _$CurrentAssignmentResDmFromJson(json);

@override@JsonKey() final  String requestId;
@override@JsonKey() final  String requesterName;
@override@JsonKey() final  String assignedFrom;
@override@JsonKey() final  String assignedTo;
@override@JsonKey() final  bool workFromHome;
@override@JsonKey() final  String shipTracking;

/// Create a copy of CurrentAssignmentResDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurrentAssignmentResDmCopyWith<_CurrentAssignmentResDm> get copyWith => __$CurrentAssignmentResDmCopyWithImpl<_CurrentAssignmentResDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CurrentAssignmentResDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CurrentAssignmentResDm&&(identical(other.requestId, requestId) || other.requestId == requestId)&&(identical(other.requesterName, requesterName) || other.requesterName == requesterName)&&(identical(other.assignedFrom, assignedFrom) || other.assignedFrom == assignedFrom)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo)&&(identical(other.workFromHome, workFromHome) || other.workFromHome == workFromHome)&&(identical(other.shipTracking, shipTracking) || other.shipTracking == shipTracking));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,requestId,requesterName,assignedFrom,assignedTo,workFromHome,shipTracking);

@override
String toString() {
  return 'CurrentAssignmentResDm(requestId: $requestId, requesterName: $requesterName, assignedFrom: $assignedFrom, assignedTo: $assignedTo, workFromHome: $workFromHome, shipTracking: $shipTracking)';
}


}

/// @nodoc
abstract mixin class _$CurrentAssignmentResDmCopyWith<$Res> implements $CurrentAssignmentResDmCopyWith<$Res> {
  factory _$CurrentAssignmentResDmCopyWith(_CurrentAssignmentResDm value, $Res Function(_CurrentAssignmentResDm) _then) = __$CurrentAssignmentResDmCopyWithImpl;
@override @useResult
$Res call({
 String requestId, String requesterName, String assignedFrom, String assignedTo, bool workFromHome, String shipTracking
});




}
/// @nodoc
class __$CurrentAssignmentResDmCopyWithImpl<$Res>
    implements _$CurrentAssignmentResDmCopyWith<$Res> {
  __$CurrentAssignmentResDmCopyWithImpl(this._self, this._then);

  final _CurrentAssignmentResDm _self;
  final $Res Function(_CurrentAssignmentResDm) _then;

/// Create a copy of CurrentAssignmentResDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? requestId = null,Object? requesterName = null,Object? assignedFrom = null,Object? assignedTo = null,Object? workFromHome = null,Object? shipTracking = null,}) {
  return _then(_CurrentAssignmentResDm(
requestId: null == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String,requesterName: null == requesterName ? _self.requesterName : requesterName // ignore: cast_nullable_to_non_nullable
as String,assignedFrom: null == assignedFrom ? _self.assignedFrom : assignedFrom // ignore: cast_nullable_to_non_nullable
as String,assignedTo: null == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as String,workFromHome: null == workFromHome ? _self.workFromHome : workFromHome // ignore: cast_nullable_to_non_nullable
as bool,shipTracking: null == shipTracking ? _self.shipTracking : shipTracking // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
