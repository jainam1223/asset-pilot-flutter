// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complete_return_req_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompleteReturnReqDm {

@JsonKey(name: 'next_status') DeviceStatus get nextStatus;
/// Create a copy of CompleteReturnReqDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompleteReturnReqDmCopyWith<CompleteReturnReqDm> get copyWith => _$CompleteReturnReqDmCopyWithImpl<CompleteReturnReqDm>(this as CompleteReturnReqDm, _$identity);

  /// Serializes this CompleteReturnReqDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompleteReturnReqDm&&(identical(other.nextStatus, nextStatus) || other.nextStatus == nextStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nextStatus);

@override
String toString() {
  return 'CompleteReturnReqDm(nextStatus: $nextStatus)';
}


}

/// @nodoc
abstract mixin class $CompleteReturnReqDmCopyWith<$Res>  {
  factory $CompleteReturnReqDmCopyWith(CompleteReturnReqDm value, $Res Function(CompleteReturnReqDm) _then) = _$CompleteReturnReqDmCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'next_status') DeviceStatus nextStatus
});




}
/// @nodoc
class _$CompleteReturnReqDmCopyWithImpl<$Res>
    implements $CompleteReturnReqDmCopyWith<$Res> {
  _$CompleteReturnReqDmCopyWithImpl(this._self, this._then);

  final CompleteReturnReqDm _self;
  final $Res Function(CompleteReturnReqDm) _then;

/// Create a copy of CompleteReturnReqDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nextStatus = null,}) {
  return _then(_self.copyWith(
nextStatus: null == nextStatus ? _self.nextStatus : nextStatus // ignore: cast_nullable_to_non_nullable
as DeviceStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [CompleteReturnReqDm].
extension CompleteReturnReqDmPatterns on CompleteReturnReqDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompleteReturnReqDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompleteReturnReqDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompleteReturnReqDm value)  $default,){
final _that = this;
switch (_that) {
case _CompleteReturnReqDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompleteReturnReqDm value)?  $default,){
final _that = this;
switch (_that) {
case _CompleteReturnReqDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'next_status')  DeviceStatus nextStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompleteReturnReqDm() when $default != null:
return $default(_that.nextStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'next_status')  DeviceStatus nextStatus)  $default,) {final _that = this;
switch (_that) {
case _CompleteReturnReqDm():
return $default(_that.nextStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'next_status')  DeviceStatus nextStatus)?  $default,) {final _that = this;
switch (_that) {
case _CompleteReturnReqDm() when $default != null:
return $default(_that.nextStatus);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _CompleteReturnReqDm implements CompleteReturnReqDm {
  const _CompleteReturnReqDm({@JsonKey(name: 'next_status') required this.nextStatus});
  factory _CompleteReturnReqDm.fromJson(Map<String, dynamic> json) => _$CompleteReturnReqDmFromJson(json);

@override@JsonKey(name: 'next_status') final  DeviceStatus nextStatus;

/// Create a copy of CompleteReturnReqDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompleteReturnReqDmCopyWith<_CompleteReturnReqDm> get copyWith => __$CompleteReturnReqDmCopyWithImpl<_CompleteReturnReqDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompleteReturnReqDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompleteReturnReqDm&&(identical(other.nextStatus, nextStatus) || other.nextStatus == nextStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nextStatus);

@override
String toString() {
  return 'CompleteReturnReqDm(nextStatus: $nextStatus)';
}


}

/// @nodoc
abstract mixin class _$CompleteReturnReqDmCopyWith<$Res> implements $CompleteReturnReqDmCopyWith<$Res> {
  factory _$CompleteReturnReqDmCopyWith(_CompleteReturnReqDm value, $Res Function(_CompleteReturnReqDm) _then) = __$CompleteReturnReqDmCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'next_status') DeviceStatus nextStatus
});




}
/// @nodoc
class __$CompleteReturnReqDmCopyWithImpl<$Res>
    implements _$CompleteReturnReqDmCopyWith<$Res> {
  __$CompleteReturnReqDmCopyWithImpl(this._self, this._then);

  final _CompleteReturnReqDm _self;
  final $Res Function(_CompleteReturnReqDm) _then;

/// Create a copy of CompleteReturnReqDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nextStatus = null,}) {
  return _then(_CompleteReturnReqDm(
nextStatus: null == nextStatus ? _self.nextStatus : nextStatus // ignore: cast_nullable_to_non_nullable
as DeviceStatus,
  ));
}


}

// dart format on
