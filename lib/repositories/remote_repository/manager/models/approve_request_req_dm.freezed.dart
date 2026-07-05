// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'approve_request_req_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApproveRequestReqDm {

 String? get managerDecisionNote;
/// Create a copy of ApproveRequestReqDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApproveRequestReqDmCopyWith<ApproveRequestReqDm> get copyWith => _$ApproveRequestReqDmCopyWithImpl<ApproveRequestReqDm>(this as ApproveRequestReqDm, _$identity);

  /// Serializes this ApproveRequestReqDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApproveRequestReqDm&&(identical(other.managerDecisionNote, managerDecisionNote) || other.managerDecisionNote == managerDecisionNote));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,managerDecisionNote);

@override
String toString() {
  return 'ApproveRequestReqDm(managerDecisionNote: $managerDecisionNote)';
}


}

/// @nodoc
abstract mixin class $ApproveRequestReqDmCopyWith<$Res>  {
  factory $ApproveRequestReqDmCopyWith(ApproveRequestReqDm value, $Res Function(ApproveRequestReqDm) _then) = _$ApproveRequestReqDmCopyWithImpl;
@useResult
$Res call({
 String? managerDecisionNote
});




}
/// @nodoc
class _$ApproveRequestReqDmCopyWithImpl<$Res>
    implements $ApproveRequestReqDmCopyWith<$Res> {
  _$ApproveRequestReqDmCopyWithImpl(this._self, this._then);

  final ApproveRequestReqDm _self;
  final $Res Function(ApproveRequestReqDm) _then;

/// Create a copy of ApproveRequestReqDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? managerDecisionNote = freezed,}) {
  return _then(_self.copyWith(
managerDecisionNote: freezed == managerDecisionNote ? _self.managerDecisionNote : managerDecisionNote // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ApproveRequestReqDm].
extension ApproveRequestReqDmPatterns on ApproveRequestReqDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApproveRequestReqDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApproveRequestReqDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApproveRequestReqDm value)  $default,){
final _that = this;
switch (_that) {
case _ApproveRequestReqDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApproveRequestReqDm value)?  $default,){
final _that = this;
switch (_that) {
case _ApproveRequestReqDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? managerDecisionNote)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApproveRequestReqDm() when $default != null:
return $default(_that.managerDecisionNote);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? managerDecisionNote)  $default,) {final _that = this;
switch (_that) {
case _ApproveRequestReqDm():
return $default(_that.managerDecisionNote);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? managerDecisionNote)?  $default,) {final _that = this;
switch (_that) {
case _ApproveRequestReqDm() when $default != null:
return $default(_that.managerDecisionNote);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _ApproveRequestReqDm implements ApproveRequestReqDm {
  const _ApproveRequestReqDm({this.managerDecisionNote});
  factory _ApproveRequestReqDm.fromJson(Map<String, dynamic> json) => _$ApproveRequestReqDmFromJson(json);

@override final  String? managerDecisionNote;

/// Create a copy of ApproveRequestReqDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApproveRequestReqDmCopyWith<_ApproveRequestReqDm> get copyWith => __$ApproveRequestReqDmCopyWithImpl<_ApproveRequestReqDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApproveRequestReqDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApproveRequestReqDm&&(identical(other.managerDecisionNote, managerDecisionNote) || other.managerDecisionNote == managerDecisionNote));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,managerDecisionNote);

@override
String toString() {
  return 'ApproveRequestReqDm(managerDecisionNote: $managerDecisionNote)';
}


}

/// @nodoc
abstract mixin class _$ApproveRequestReqDmCopyWith<$Res> implements $ApproveRequestReqDmCopyWith<$Res> {
  factory _$ApproveRequestReqDmCopyWith(_ApproveRequestReqDm value, $Res Function(_ApproveRequestReqDm) _then) = __$ApproveRequestReqDmCopyWithImpl;
@override @useResult
$Res call({
 String? managerDecisionNote
});




}
/// @nodoc
class __$ApproveRequestReqDmCopyWithImpl<$Res>
    implements _$ApproveRequestReqDmCopyWith<$Res> {
  __$ApproveRequestReqDmCopyWithImpl(this._self, this._then);

  final _ApproveRequestReqDm _self;
  final $Res Function(_ApproveRequestReqDm) _then;

/// Create a copy of ApproveRequestReqDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? managerDecisionNote = freezed,}) {
  return _then(_ApproveRequestReqDm(
managerDecisionNote: freezed == managerDecisionNote ? _self.managerDecisionNote : managerDecisionNote // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
