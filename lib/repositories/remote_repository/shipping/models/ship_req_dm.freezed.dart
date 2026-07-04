// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ship_req_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ShipReqDm {

@JsonKey(name: 'ship_tracking_url') String get shipTrackingUrl;
/// Create a copy of ShipReqDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShipReqDmCopyWith<ShipReqDm> get copyWith => _$ShipReqDmCopyWithImpl<ShipReqDm>(this as ShipReqDm, _$identity);

  /// Serializes this ShipReqDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShipReqDm&&(identical(other.shipTrackingUrl, shipTrackingUrl) || other.shipTrackingUrl == shipTrackingUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,shipTrackingUrl);

@override
String toString() {
  return 'ShipReqDm(shipTrackingUrl: $shipTrackingUrl)';
}


}

/// @nodoc
abstract mixin class $ShipReqDmCopyWith<$Res>  {
  factory $ShipReqDmCopyWith(ShipReqDm value, $Res Function(ShipReqDm) _then) = _$ShipReqDmCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ship_tracking_url') String shipTrackingUrl
});




}
/// @nodoc
class _$ShipReqDmCopyWithImpl<$Res>
    implements $ShipReqDmCopyWith<$Res> {
  _$ShipReqDmCopyWithImpl(this._self, this._then);

  final ShipReqDm _self;
  final $Res Function(ShipReqDm) _then;

/// Create a copy of ShipReqDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? shipTrackingUrl = null,}) {
  return _then(_self.copyWith(
shipTrackingUrl: null == shipTrackingUrl ? _self.shipTrackingUrl : shipTrackingUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ShipReqDm].
extension ShipReqDmPatterns on ShipReqDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShipReqDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShipReqDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShipReqDm value)  $default,){
final _that = this;
switch (_that) {
case _ShipReqDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShipReqDm value)?  $default,){
final _that = this;
switch (_that) {
case _ShipReqDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ship_tracking_url')  String shipTrackingUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShipReqDm() when $default != null:
return $default(_that.shipTrackingUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ship_tracking_url')  String shipTrackingUrl)  $default,) {final _that = this;
switch (_that) {
case _ShipReqDm():
return $default(_that.shipTrackingUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ship_tracking_url')  String shipTrackingUrl)?  $default,) {final _that = this;
switch (_that) {
case _ShipReqDm() when $default != null:
return $default(_that.shipTrackingUrl);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _ShipReqDm implements ShipReqDm {
  const _ShipReqDm({@JsonKey(name: 'ship_tracking_url') required this.shipTrackingUrl});
  factory _ShipReqDm.fromJson(Map<String, dynamic> json) => _$ShipReqDmFromJson(json);

@override@JsonKey(name: 'ship_tracking_url') final  String shipTrackingUrl;

/// Create a copy of ShipReqDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShipReqDmCopyWith<_ShipReqDm> get copyWith => __$ShipReqDmCopyWithImpl<_ShipReqDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShipReqDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShipReqDm&&(identical(other.shipTrackingUrl, shipTrackingUrl) || other.shipTrackingUrl == shipTrackingUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,shipTrackingUrl);

@override
String toString() {
  return 'ShipReqDm(shipTrackingUrl: $shipTrackingUrl)';
}


}

/// @nodoc
abstract mixin class _$ShipReqDmCopyWith<$Res> implements $ShipReqDmCopyWith<$Res> {
  factory _$ShipReqDmCopyWith(_ShipReqDm value, $Res Function(_ShipReqDm) _then) = __$ShipReqDmCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ship_tracking_url') String shipTrackingUrl
});




}
/// @nodoc
class __$ShipReqDmCopyWithImpl<$Res>
    implements _$ShipReqDmCopyWith<$Res> {
  __$ShipReqDmCopyWithImpl(this._self, this._then);

  final _ShipReqDm _self;
  final $Res Function(_ShipReqDm) _then;

/// Create a copy of ShipReqDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? shipTrackingUrl = null,}) {
  return _then(_ShipReqDm(
shipTrackingUrl: null == shipTrackingUrl ? _self.shipTrackingUrl : shipTrackingUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
