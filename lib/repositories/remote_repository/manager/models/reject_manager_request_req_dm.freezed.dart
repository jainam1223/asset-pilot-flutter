// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reject_manager_request_req_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RejectManagerRequestReqDm {

 String? get managerDecisionNote; String? get rejectedReason;
/// Create a copy of RejectManagerRequestReqDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RejectManagerRequestReqDmCopyWith<RejectManagerRequestReqDm> get copyWith => _$RejectManagerRequestReqDmCopyWithImpl<RejectManagerRequestReqDm>(this as RejectManagerRequestReqDm, _$identity);

  /// Serializes this RejectManagerRequestReqDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RejectManagerRequestReqDm&&(identical(other.managerDecisionNote, managerDecisionNote) || other.managerDecisionNote == managerDecisionNote)&&(identical(other.rejectedReason, rejectedReason) || other.rejectedReason == rejectedReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,managerDecisionNote,rejectedReason);

@override
String toString() {
  return 'RejectManagerRequestReqDm(managerDecisionNote: $managerDecisionNote, rejectedReason: $rejectedReason)';
}


}

/// @nodoc
abstract mixin class $RejectManagerRequestReqDmCopyWith<$Res>  {
  factory $RejectManagerRequestReqDmCopyWith(RejectManagerRequestReqDm value, $Res Function(RejectManagerRequestReqDm) _then) = _$RejectManagerRequestReqDmCopyWithImpl;
@useResult
$Res call({
 String? managerDecisionNote, String? rejectedReason
});




}
/// @nodoc
class _$RejectManagerRequestReqDmCopyWithImpl<$Res>
    implements $RejectManagerRequestReqDmCopyWith<$Res> {
  _$RejectManagerRequestReqDmCopyWithImpl(this._self, this._then);

  final RejectManagerRequestReqDm _self;
  final $Res Function(RejectManagerRequestReqDm) _then;

/// Create a copy of RejectManagerRequestReqDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? managerDecisionNote = freezed,Object? rejectedReason = freezed,}) {
  return _then(_self.copyWith(
managerDecisionNote: freezed == managerDecisionNote ? _self.managerDecisionNote : managerDecisionNote // ignore: cast_nullable_to_non_nullable
as String?,rejectedReason: freezed == rejectedReason ? _self.rejectedReason : rejectedReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RejectManagerRequestReqDm].
extension RejectManagerRequestReqDmPatterns on RejectManagerRequestReqDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RejectManagerRequestReqDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RejectManagerRequestReqDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RejectManagerRequestReqDm value)  $default,){
final _that = this;
switch (_that) {
case _RejectManagerRequestReqDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RejectManagerRequestReqDm value)?  $default,){
final _that = this;
switch (_that) {
case _RejectManagerRequestReqDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? managerDecisionNote,  String? rejectedReason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RejectManagerRequestReqDm() when $default != null:
return $default(_that.managerDecisionNote,_that.rejectedReason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? managerDecisionNote,  String? rejectedReason)  $default,) {final _that = this;
switch (_that) {
case _RejectManagerRequestReqDm():
return $default(_that.managerDecisionNote,_that.rejectedReason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? managerDecisionNote,  String? rejectedReason)?  $default,) {final _that = this;
switch (_that) {
case _RejectManagerRequestReqDm() when $default != null:
return $default(_that.managerDecisionNote,_that.rejectedReason);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _RejectManagerRequestReqDm implements RejectManagerRequestReqDm {
  const _RejectManagerRequestReqDm({this.managerDecisionNote, this.rejectedReason});
  factory _RejectManagerRequestReqDm.fromJson(Map<String, dynamic> json) => _$RejectManagerRequestReqDmFromJson(json);

@override final  String? managerDecisionNote;
@override final  String? rejectedReason;

/// Create a copy of RejectManagerRequestReqDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RejectManagerRequestReqDmCopyWith<_RejectManagerRequestReqDm> get copyWith => __$RejectManagerRequestReqDmCopyWithImpl<_RejectManagerRequestReqDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RejectManagerRequestReqDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RejectManagerRequestReqDm&&(identical(other.managerDecisionNote, managerDecisionNote) || other.managerDecisionNote == managerDecisionNote)&&(identical(other.rejectedReason, rejectedReason) || other.rejectedReason == rejectedReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,managerDecisionNote,rejectedReason);

@override
String toString() {
  return 'RejectManagerRequestReqDm(managerDecisionNote: $managerDecisionNote, rejectedReason: $rejectedReason)';
}


}

/// @nodoc
abstract mixin class _$RejectManagerRequestReqDmCopyWith<$Res> implements $RejectManagerRequestReqDmCopyWith<$Res> {
  factory _$RejectManagerRequestReqDmCopyWith(_RejectManagerRequestReqDm value, $Res Function(_RejectManagerRequestReqDm) _then) = __$RejectManagerRequestReqDmCopyWithImpl;
@override @useResult
$Res call({
 String? managerDecisionNote, String? rejectedReason
});




}
/// @nodoc
class __$RejectManagerRequestReqDmCopyWithImpl<$Res>
    implements _$RejectManagerRequestReqDmCopyWith<$Res> {
  __$RejectManagerRequestReqDmCopyWithImpl(this._self, this._then);

  final _RejectManagerRequestReqDm _self;
  final $Res Function(_RejectManagerRequestReqDm) _then;

/// Create a copy of RejectManagerRequestReqDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? managerDecisionNote = freezed,Object? rejectedReason = freezed,}) {
  return _then(_RejectManagerRequestReqDm(
managerDecisionNote: freezed == managerDecisionNote ? _self.managerDecisionNote : managerDecisionNote // ignore: cast_nullable_to_non_nullable
as String?,rejectedReason: freezed == rejectedReason ? _self.rejectedReason : rejectedReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
