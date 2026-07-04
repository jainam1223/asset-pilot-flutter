// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_item_status_req_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChangeItemStatusReqDm {

 DeviceStatus get status;@JsonKey(name: 'it_note') String? get itNote;
/// Create a copy of ChangeItemStatusReqDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeItemStatusReqDmCopyWith<ChangeItemStatusReqDm> get copyWith => _$ChangeItemStatusReqDmCopyWithImpl<ChangeItemStatusReqDm>(this as ChangeItemStatusReqDm, _$identity);

  /// Serializes this ChangeItemStatusReqDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeItemStatusReqDm&&(identical(other.status, status) || other.status == status)&&(identical(other.itNote, itNote) || other.itNote == itNote));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,itNote);

@override
String toString() {
  return 'ChangeItemStatusReqDm(status: $status, itNote: $itNote)';
}


}

/// @nodoc
abstract mixin class $ChangeItemStatusReqDmCopyWith<$Res>  {
  factory $ChangeItemStatusReqDmCopyWith(ChangeItemStatusReqDm value, $Res Function(ChangeItemStatusReqDm) _then) = _$ChangeItemStatusReqDmCopyWithImpl;
@useResult
$Res call({
 DeviceStatus status,@JsonKey(name: 'it_note') String? itNote
});




}
/// @nodoc
class _$ChangeItemStatusReqDmCopyWithImpl<$Res>
    implements $ChangeItemStatusReqDmCopyWith<$Res> {
  _$ChangeItemStatusReqDmCopyWithImpl(this._self, this._then);

  final ChangeItemStatusReqDm _self;
  final $Res Function(ChangeItemStatusReqDm) _then;

/// Create a copy of ChangeItemStatusReqDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? itNote = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DeviceStatus,itNote: freezed == itNote ? _self.itNote : itNote // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChangeItemStatusReqDm].
extension ChangeItemStatusReqDmPatterns on ChangeItemStatusReqDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChangeItemStatusReqDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChangeItemStatusReqDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChangeItemStatusReqDm value)  $default,){
final _that = this;
switch (_that) {
case _ChangeItemStatusReqDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChangeItemStatusReqDm value)?  $default,){
final _that = this;
switch (_that) {
case _ChangeItemStatusReqDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DeviceStatus status, @JsonKey(name: 'it_note')  String? itNote)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChangeItemStatusReqDm() when $default != null:
return $default(_that.status,_that.itNote);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DeviceStatus status, @JsonKey(name: 'it_note')  String? itNote)  $default,) {final _that = this;
switch (_that) {
case _ChangeItemStatusReqDm():
return $default(_that.status,_that.itNote);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DeviceStatus status, @JsonKey(name: 'it_note')  String? itNote)?  $default,) {final _that = this;
switch (_that) {
case _ChangeItemStatusReqDm() when $default != null:
return $default(_that.status,_that.itNote);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _ChangeItemStatusReqDm implements ChangeItemStatusReqDm {
  const _ChangeItemStatusReqDm({required this.status, @JsonKey(name: 'it_note') this.itNote});
  factory _ChangeItemStatusReqDm.fromJson(Map<String, dynamic> json) => _$ChangeItemStatusReqDmFromJson(json);

@override final  DeviceStatus status;
@override@JsonKey(name: 'it_note') final  String? itNote;

/// Create a copy of ChangeItemStatusReqDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeItemStatusReqDmCopyWith<_ChangeItemStatusReqDm> get copyWith => __$ChangeItemStatusReqDmCopyWithImpl<_ChangeItemStatusReqDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChangeItemStatusReqDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeItemStatusReqDm&&(identical(other.status, status) || other.status == status)&&(identical(other.itNote, itNote) || other.itNote == itNote));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,itNote);

@override
String toString() {
  return 'ChangeItemStatusReqDm(status: $status, itNote: $itNote)';
}


}

/// @nodoc
abstract mixin class _$ChangeItemStatusReqDmCopyWith<$Res> implements $ChangeItemStatusReqDmCopyWith<$Res> {
  factory _$ChangeItemStatusReqDmCopyWith(_ChangeItemStatusReqDm value, $Res Function(_ChangeItemStatusReqDm) _then) = __$ChangeItemStatusReqDmCopyWithImpl;
@override @useResult
$Res call({
 DeviceStatus status,@JsonKey(name: 'it_note') String? itNote
});




}
/// @nodoc
class __$ChangeItemStatusReqDmCopyWithImpl<$Res>
    implements _$ChangeItemStatusReqDmCopyWith<$Res> {
  __$ChangeItemStatusReqDmCopyWithImpl(this._self, this._then);

  final _ChangeItemStatusReqDm _self;
  final $Res Function(_ChangeItemStatusReqDm) _then;

/// Create a copy of ChangeItemStatusReqDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? itNote = freezed,}) {
  return _then(_ChangeItemStatusReqDm(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DeviceStatus,itNote: freezed == itNote ? _self.itNote : itNote // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
