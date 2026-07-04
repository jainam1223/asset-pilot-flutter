// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'escalate_to_manager_req_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EscalateToManagerReqDm {

@JsonKey(name: 'manager_id') String? get managerId;
/// Create a copy of EscalateToManagerReqDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EscalateToManagerReqDmCopyWith<EscalateToManagerReqDm> get copyWith => _$EscalateToManagerReqDmCopyWithImpl<EscalateToManagerReqDm>(this as EscalateToManagerReqDm, _$identity);

  /// Serializes this EscalateToManagerReqDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EscalateToManagerReqDm&&(identical(other.managerId, managerId) || other.managerId == managerId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,managerId);

@override
String toString() {
  return 'EscalateToManagerReqDm(managerId: $managerId)';
}


}

/// @nodoc
abstract mixin class $EscalateToManagerReqDmCopyWith<$Res>  {
  factory $EscalateToManagerReqDmCopyWith(EscalateToManagerReqDm value, $Res Function(EscalateToManagerReqDm) _then) = _$EscalateToManagerReqDmCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'manager_id') String? managerId
});




}
/// @nodoc
class _$EscalateToManagerReqDmCopyWithImpl<$Res>
    implements $EscalateToManagerReqDmCopyWith<$Res> {
  _$EscalateToManagerReqDmCopyWithImpl(this._self, this._then);

  final EscalateToManagerReqDm _self;
  final $Res Function(EscalateToManagerReqDm) _then;

/// Create a copy of EscalateToManagerReqDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? managerId = freezed,}) {
  return _then(_self.copyWith(
managerId: freezed == managerId ? _self.managerId : managerId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [EscalateToManagerReqDm].
extension EscalateToManagerReqDmPatterns on EscalateToManagerReqDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EscalateToManagerReqDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EscalateToManagerReqDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EscalateToManagerReqDm value)  $default,){
final _that = this;
switch (_that) {
case _EscalateToManagerReqDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EscalateToManagerReqDm value)?  $default,){
final _that = this;
switch (_that) {
case _EscalateToManagerReqDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'manager_id')  String? managerId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EscalateToManagerReqDm() when $default != null:
return $default(_that.managerId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'manager_id')  String? managerId)  $default,) {final _that = this;
switch (_that) {
case _EscalateToManagerReqDm():
return $default(_that.managerId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'manager_id')  String? managerId)?  $default,) {final _that = this;
switch (_that) {
case _EscalateToManagerReqDm() when $default != null:
return $default(_that.managerId);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _EscalateToManagerReqDm implements EscalateToManagerReqDm {
  const _EscalateToManagerReqDm({@JsonKey(name: 'manager_id') this.managerId});
  factory _EscalateToManagerReqDm.fromJson(Map<String, dynamic> json) => _$EscalateToManagerReqDmFromJson(json);

@override@JsonKey(name: 'manager_id') final  String? managerId;

/// Create a copy of EscalateToManagerReqDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EscalateToManagerReqDmCopyWith<_EscalateToManagerReqDm> get copyWith => __$EscalateToManagerReqDmCopyWithImpl<_EscalateToManagerReqDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EscalateToManagerReqDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EscalateToManagerReqDm&&(identical(other.managerId, managerId) || other.managerId == managerId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,managerId);

@override
String toString() {
  return 'EscalateToManagerReqDm(managerId: $managerId)';
}


}

/// @nodoc
abstract mixin class _$EscalateToManagerReqDmCopyWith<$Res> implements $EscalateToManagerReqDmCopyWith<$Res> {
  factory _$EscalateToManagerReqDmCopyWith(_EscalateToManagerReqDm value, $Res Function(_EscalateToManagerReqDm) _then) = __$EscalateToManagerReqDmCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'manager_id') String? managerId
});




}
/// @nodoc
class __$EscalateToManagerReqDmCopyWithImpl<$Res>
    implements _$EscalateToManagerReqDmCopyWith<$Res> {
  __$EscalateToManagerReqDmCopyWithImpl(this._self, this._then);

  final _EscalateToManagerReqDm _self;
  final $Res Function(_EscalateToManagerReqDm) _then;

/// Create a copy of EscalateToManagerReqDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? managerId = freezed,}) {
  return _then(_EscalateToManagerReqDm(
managerId: freezed == managerId ? _self.managerId : managerId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
