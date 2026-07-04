// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reject_request_req_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RejectRequestReqDm {

 String get requestId; String? get note;
/// Create a copy of RejectRequestReqDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RejectRequestReqDmCopyWith<RejectRequestReqDm> get copyWith => _$RejectRequestReqDmCopyWithImpl<RejectRequestReqDm>(this as RejectRequestReqDm, _$identity);

  /// Serializes this RejectRequestReqDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RejectRequestReqDm&&(identical(other.requestId, requestId) || other.requestId == requestId)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,requestId,note);

@override
String toString() {
  return 'RejectRequestReqDm(requestId: $requestId, note: $note)';
}


}

/// @nodoc
abstract mixin class $RejectRequestReqDmCopyWith<$Res>  {
  factory $RejectRequestReqDmCopyWith(RejectRequestReqDm value, $Res Function(RejectRequestReqDm) _then) = _$RejectRequestReqDmCopyWithImpl;
@useResult
$Res call({
 String requestId, String? note
});




}
/// @nodoc
class _$RejectRequestReqDmCopyWithImpl<$Res>
    implements $RejectRequestReqDmCopyWith<$Res> {
  _$RejectRequestReqDmCopyWithImpl(this._self, this._then);

  final RejectRequestReqDm _self;
  final $Res Function(RejectRequestReqDm) _then;

/// Create a copy of RejectRequestReqDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? requestId = null,Object? note = freezed,}) {
  return _then(_self.copyWith(
requestId: null == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RejectRequestReqDm].
extension RejectRequestReqDmPatterns on RejectRequestReqDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RejectRequestReqDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RejectRequestReqDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RejectRequestReqDm value)  $default,){
final _that = this;
switch (_that) {
case _RejectRequestReqDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RejectRequestReqDm value)?  $default,){
final _that = this;
switch (_that) {
case _RejectRequestReqDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String requestId,  String? note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RejectRequestReqDm() when $default != null:
return $default(_that.requestId,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String requestId,  String? note)  $default,) {final _that = this;
switch (_that) {
case _RejectRequestReqDm():
return $default(_that.requestId,_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String requestId,  String? note)?  $default,) {final _that = this;
switch (_that) {
case _RejectRequestReqDm() when $default != null:
return $default(_that.requestId,_that.note);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _RejectRequestReqDm implements RejectRequestReqDm {
  const _RejectRequestReqDm({required this.requestId, this.note});
  factory _RejectRequestReqDm.fromJson(Map<String, dynamic> json) => _$RejectRequestReqDmFromJson(json);

@override final  String requestId;
@override final  String? note;

/// Create a copy of RejectRequestReqDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RejectRequestReqDmCopyWith<_RejectRequestReqDm> get copyWith => __$RejectRequestReqDmCopyWithImpl<_RejectRequestReqDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RejectRequestReqDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RejectRequestReqDm&&(identical(other.requestId, requestId) || other.requestId == requestId)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,requestId,note);

@override
String toString() {
  return 'RejectRequestReqDm(requestId: $requestId, note: $note)';
}


}

/// @nodoc
abstract mixin class _$RejectRequestReqDmCopyWith<$Res> implements $RejectRequestReqDmCopyWith<$Res> {
  factory _$RejectRequestReqDmCopyWith(_RejectRequestReqDm value, $Res Function(_RejectRequestReqDm) _then) = __$RejectRequestReqDmCopyWithImpl;
@override @useResult
$Res call({
 String requestId, String? note
});




}
/// @nodoc
class __$RejectRequestReqDmCopyWithImpl<$Res>
    implements _$RejectRequestReqDmCopyWith<$Res> {
  __$RejectRequestReqDmCopyWithImpl(this._self, this._then);

  final _RejectRequestReqDm _self;
  final $Res Function(_RejectRequestReqDm) _then;

/// Create a copy of RejectRequestReqDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? requestId = null,Object? note = freezed,}) {
  return _then(_RejectRequestReqDm(
requestId: null == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
