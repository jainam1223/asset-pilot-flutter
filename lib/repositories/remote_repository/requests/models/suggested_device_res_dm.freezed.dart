// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'suggested_device_res_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SuggestedDeviceResDm {

 int get rank; String get deviceId; String get name; String get serial; String get reason; String get availabilityLabel; bool get recommended;
/// Create a copy of SuggestedDeviceResDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuggestedDeviceResDmCopyWith<SuggestedDeviceResDm> get copyWith => _$SuggestedDeviceResDmCopyWithImpl<SuggestedDeviceResDm>(this as SuggestedDeviceResDm, _$identity);

  /// Serializes this SuggestedDeviceResDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuggestedDeviceResDm&&(identical(other.rank, rank) || other.rank == rank)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.name, name) || other.name == name)&&(identical(other.serial, serial) || other.serial == serial)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.availabilityLabel, availabilityLabel) || other.availabilityLabel == availabilityLabel)&&(identical(other.recommended, recommended) || other.recommended == recommended));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rank,deviceId,name,serial,reason,availabilityLabel,recommended);

@override
String toString() {
  return 'SuggestedDeviceResDm(rank: $rank, deviceId: $deviceId, name: $name, serial: $serial, reason: $reason, availabilityLabel: $availabilityLabel, recommended: $recommended)';
}


}

/// @nodoc
abstract mixin class $SuggestedDeviceResDmCopyWith<$Res>  {
  factory $SuggestedDeviceResDmCopyWith(SuggestedDeviceResDm value, $Res Function(SuggestedDeviceResDm) _then) = _$SuggestedDeviceResDmCopyWithImpl;
@useResult
$Res call({
 int rank, String deviceId, String name, String serial, String reason, String availabilityLabel, bool recommended
});




}
/// @nodoc
class _$SuggestedDeviceResDmCopyWithImpl<$Res>
    implements $SuggestedDeviceResDmCopyWith<$Res> {
  _$SuggestedDeviceResDmCopyWithImpl(this._self, this._then);

  final SuggestedDeviceResDm _self;
  final $Res Function(SuggestedDeviceResDm) _then;

/// Create a copy of SuggestedDeviceResDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rank = null,Object? deviceId = null,Object? name = null,Object? serial = null,Object? reason = null,Object? availabilityLabel = null,Object? recommended = null,}) {
  return _then(_self.copyWith(
rank: null == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as int,deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,serial: null == serial ? _self.serial : serial // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,availabilityLabel: null == availabilityLabel ? _self.availabilityLabel : availabilityLabel // ignore: cast_nullable_to_non_nullable
as String,recommended: null == recommended ? _self.recommended : recommended // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SuggestedDeviceResDm].
extension SuggestedDeviceResDmPatterns on SuggestedDeviceResDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SuggestedDeviceResDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SuggestedDeviceResDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SuggestedDeviceResDm value)  $default,){
final _that = this;
switch (_that) {
case _SuggestedDeviceResDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SuggestedDeviceResDm value)?  $default,){
final _that = this;
switch (_that) {
case _SuggestedDeviceResDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int rank,  String deviceId,  String name,  String serial,  String reason,  String availabilityLabel,  bool recommended)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SuggestedDeviceResDm() when $default != null:
return $default(_that.rank,_that.deviceId,_that.name,_that.serial,_that.reason,_that.availabilityLabel,_that.recommended);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int rank,  String deviceId,  String name,  String serial,  String reason,  String availabilityLabel,  bool recommended)  $default,) {final _that = this;
switch (_that) {
case _SuggestedDeviceResDm():
return $default(_that.rank,_that.deviceId,_that.name,_that.serial,_that.reason,_that.availabilityLabel,_that.recommended);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int rank,  String deviceId,  String name,  String serial,  String reason,  String availabilityLabel,  bool recommended)?  $default,) {final _that = this;
switch (_that) {
case _SuggestedDeviceResDm() when $default != null:
return $default(_that.rank,_that.deviceId,_that.name,_that.serial,_that.reason,_that.availabilityLabel,_that.recommended);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SuggestedDeviceResDm implements SuggestedDeviceResDm {
  const _SuggestedDeviceResDm({this.rank = 0, this.deviceId = '', this.name = '', this.serial = '', this.reason = '', this.availabilityLabel = '', this.recommended = false});
  factory _SuggestedDeviceResDm.fromJson(Map<String, dynamic> json) => _$SuggestedDeviceResDmFromJson(json);

@override@JsonKey() final  int rank;
@override@JsonKey() final  String deviceId;
@override@JsonKey() final  String name;
@override@JsonKey() final  String serial;
@override@JsonKey() final  String reason;
@override@JsonKey() final  String availabilityLabel;
@override@JsonKey() final  bool recommended;

/// Create a copy of SuggestedDeviceResDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuggestedDeviceResDmCopyWith<_SuggestedDeviceResDm> get copyWith => __$SuggestedDeviceResDmCopyWithImpl<_SuggestedDeviceResDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SuggestedDeviceResDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SuggestedDeviceResDm&&(identical(other.rank, rank) || other.rank == rank)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.name, name) || other.name == name)&&(identical(other.serial, serial) || other.serial == serial)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.availabilityLabel, availabilityLabel) || other.availabilityLabel == availabilityLabel)&&(identical(other.recommended, recommended) || other.recommended == recommended));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rank,deviceId,name,serial,reason,availabilityLabel,recommended);

@override
String toString() {
  return 'SuggestedDeviceResDm(rank: $rank, deviceId: $deviceId, name: $name, serial: $serial, reason: $reason, availabilityLabel: $availabilityLabel, recommended: $recommended)';
}


}

/// @nodoc
abstract mixin class _$SuggestedDeviceResDmCopyWith<$Res> implements $SuggestedDeviceResDmCopyWith<$Res> {
  factory _$SuggestedDeviceResDmCopyWith(_SuggestedDeviceResDm value, $Res Function(_SuggestedDeviceResDm) _then) = __$SuggestedDeviceResDmCopyWithImpl;
@override @useResult
$Res call({
 int rank, String deviceId, String name, String serial, String reason, String availabilityLabel, bool recommended
});




}
/// @nodoc
class __$SuggestedDeviceResDmCopyWithImpl<$Res>
    implements _$SuggestedDeviceResDmCopyWith<$Res> {
  __$SuggestedDeviceResDmCopyWithImpl(this._self, this._then);

  final _SuggestedDeviceResDm _self;
  final $Res Function(_SuggestedDeviceResDm) _then;

/// Create a copy of SuggestedDeviceResDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rank = null,Object? deviceId = null,Object? name = null,Object? serial = null,Object? reason = null,Object? availabilityLabel = null,Object? recommended = null,}) {
  return _then(_SuggestedDeviceResDm(
rank: null == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as int,deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,serial: null == serial ? _self.serial : serial // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,availabilityLabel: null == availabilityLabel ? _self.availabilityLabel : availabilityLabel // ignore: cast_nullable_to_non_nullable
as String,recommended: null == recommended ? _self.recommended : recommended // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
