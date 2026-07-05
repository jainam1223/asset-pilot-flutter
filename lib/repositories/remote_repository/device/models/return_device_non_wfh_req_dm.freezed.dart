// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'return_device_non_wfh_req_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReturnDeviceNonWfhReqDm {

 String get itemId;
/// Create a copy of ReturnDeviceNonWfhReqDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReturnDeviceNonWfhReqDmCopyWith<ReturnDeviceNonWfhReqDm> get copyWith => _$ReturnDeviceNonWfhReqDmCopyWithImpl<ReturnDeviceNonWfhReqDm>(this as ReturnDeviceNonWfhReqDm, _$identity);

  /// Serializes this ReturnDeviceNonWfhReqDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReturnDeviceNonWfhReqDm&&(identical(other.itemId, itemId) || other.itemId == itemId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,itemId);

@override
String toString() {
  return 'ReturnDeviceNonWfhReqDm(itemId: $itemId)';
}


}

/// @nodoc
abstract mixin class $ReturnDeviceNonWfhReqDmCopyWith<$Res>  {
  factory $ReturnDeviceNonWfhReqDmCopyWith(ReturnDeviceNonWfhReqDm value, $Res Function(ReturnDeviceNonWfhReqDm) _then) = _$ReturnDeviceNonWfhReqDmCopyWithImpl;
@useResult
$Res call({
 String itemId
});




}
/// @nodoc
class _$ReturnDeviceNonWfhReqDmCopyWithImpl<$Res>
    implements $ReturnDeviceNonWfhReqDmCopyWith<$Res> {
  _$ReturnDeviceNonWfhReqDmCopyWithImpl(this._self, this._then);

  final ReturnDeviceNonWfhReqDm _self;
  final $Res Function(ReturnDeviceNonWfhReqDm) _then;

/// Create a copy of ReturnDeviceNonWfhReqDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? itemId = null,}) {
  return _then(_self.copyWith(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ReturnDeviceNonWfhReqDm].
extension ReturnDeviceNonWfhReqDmPatterns on ReturnDeviceNonWfhReqDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReturnDeviceNonWfhReqDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReturnDeviceNonWfhReqDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReturnDeviceNonWfhReqDm value)  $default,){
final _that = this;
switch (_that) {
case _ReturnDeviceNonWfhReqDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReturnDeviceNonWfhReqDm value)?  $default,){
final _that = this;
switch (_that) {
case _ReturnDeviceNonWfhReqDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String itemId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReturnDeviceNonWfhReqDm() when $default != null:
return $default(_that.itemId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String itemId)  $default,) {final _that = this;
switch (_that) {
case _ReturnDeviceNonWfhReqDm():
return $default(_that.itemId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String itemId)?  $default,) {final _that = this;
switch (_that) {
case _ReturnDeviceNonWfhReqDm() when $default != null:
return $default(_that.itemId);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _ReturnDeviceNonWfhReqDm implements ReturnDeviceNonWfhReqDm {
  const _ReturnDeviceNonWfhReqDm({required this.itemId});
  factory _ReturnDeviceNonWfhReqDm.fromJson(Map<String, dynamic> json) => _$ReturnDeviceNonWfhReqDmFromJson(json);

@override final  String itemId;

/// Create a copy of ReturnDeviceNonWfhReqDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReturnDeviceNonWfhReqDmCopyWith<_ReturnDeviceNonWfhReqDm> get copyWith => __$ReturnDeviceNonWfhReqDmCopyWithImpl<_ReturnDeviceNonWfhReqDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReturnDeviceNonWfhReqDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReturnDeviceNonWfhReqDm&&(identical(other.itemId, itemId) || other.itemId == itemId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,itemId);

@override
String toString() {
  return 'ReturnDeviceNonWfhReqDm(itemId: $itemId)';
}


}

/// @nodoc
abstract mixin class _$ReturnDeviceNonWfhReqDmCopyWith<$Res> implements $ReturnDeviceNonWfhReqDmCopyWith<$Res> {
  factory _$ReturnDeviceNonWfhReqDmCopyWith(_ReturnDeviceNonWfhReqDm value, $Res Function(_ReturnDeviceNonWfhReqDm) _then) = __$ReturnDeviceNonWfhReqDmCopyWithImpl;
@override @useResult
$Res call({
 String itemId
});




}
/// @nodoc
class __$ReturnDeviceNonWfhReqDmCopyWithImpl<$Res>
    implements _$ReturnDeviceNonWfhReqDmCopyWith<$Res> {
  __$ReturnDeviceNonWfhReqDmCopyWithImpl(this._self, this._then);

  final _ReturnDeviceNonWfhReqDm _self;
  final $Res Function(_ReturnDeviceNonWfhReqDm) _then;

/// Create a copy of ReturnDeviceNonWfhReqDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? itemId = null,}) {
  return _then(_ReturnDeviceNonWfhReqDm(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
