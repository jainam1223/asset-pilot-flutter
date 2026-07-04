// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_handover_request_req_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateHandoverRequestReqDm {

 String get itemId; int get requestedDurationHours; String? get note;
/// Create a copy of CreateHandoverRequestReqDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateHandoverRequestReqDmCopyWith<CreateHandoverRequestReqDm> get copyWith => _$CreateHandoverRequestReqDmCopyWithImpl<CreateHandoverRequestReqDm>(this as CreateHandoverRequestReqDm, _$identity);

  /// Serializes this CreateHandoverRequestReqDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateHandoverRequestReqDm&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.requestedDurationHours, requestedDurationHours) || other.requestedDurationHours == requestedDurationHours)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,itemId,requestedDurationHours,note);

@override
String toString() {
  return 'CreateHandoverRequestReqDm(itemId: $itemId, requestedDurationHours: $requestedDurationHours, note: $note)';
}


}

/// @nodoc
abstract mixin class $CreateHandoverRequestReqDmCopyWith<$Res>  {
  factory $CreateHandoverRequestReqDmCopyWith(CreateHandoverRequestReqDm value, $Res Function(CreateHandoverRequestReqDm) _then) = _$CreateHandoverRequestReqDmCopyWithImpl;
@useResult
$Res call({
 String itemId, int requestedDurationHours, String? note
});




}
/// @nodoc
class _$CreateHandoverRequestReqDmCopyWithImpl<$Res>
    implements $CreateHandoverRequestReqDmCopyWith<$Res> {
  _$CreateHandoverRequestReqDmCopyWithImpl(this._self, this._then);

  final CreateHandoverRequestReqDm _self;
  final $Res Function(CreateHandoverRequestReqDm) _then;

/// Create a copy of CreateHandoverRequestReqDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? itemId = null,Object? requestedDurationHours = null,Object? note = freezed,}) {
  return _then(_self.copyWith(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,requestedDurationHours: null == requestedDurationHours ? _self.requestedDurationHours : requestedDurationHours // ignore: cast_nullable_to_non_nullable
as int,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateHandoverRequestReqDm].
extension CreateHandoverRequestReqDmPatterns on CreateHandoverRequestReqDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateHandoverRequestReqDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateHandoverRequestReqDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateHandoverRequestReqDm value)  $default,){
final _that = this;
switch (_that) {
case _CreateHandoverRequestReqDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateHandoverRequestReqDm value)?  $default,){
final _that = this;
switch (_that) {
case _CreateHandoverRequestReqDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String itemId,  int requestedDurationHours,  String? note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateHandoverRequestReqDm() when $default != null:
return $default(_that.itemId,_that.requestedDurationHours,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String itemId,  int requestedDurationHours,  String? note)  $default,) {final _that = this;
switch (_that) {
case _CreateHandoverRequestReqDm():
return $default(_that.itemId,_that.requestedDurationHours,_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String itemId,  int requestedDurationHours,  String? note)?  $default,) {final _that = this;
switch (_that) {
case _CreateHandoverRequestReqDm() when $default != null:
return $default(_that.itemId,_that.requestedDurationHours,_that.note);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _CreateHandoverRequestReqDm implements CreateHandoverRequestReqDm {
  const _CreateHandoverRequestReqDm({required this.itemId, required this.requestedDurationHours, this.note});
  factory _CreateHandoverRequestReqDm.fromJson(Map<String, dynamic> json) => _$CreateHandoverRequestReqDmFromJson(json);

@override final  String itemId;
@override final  int requestedDurationHours;
@override final  String? note;

/// Create a copy of CreateHandoverRequestReqDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateHandoverRequestReqDmCopyWith<_CreateHandoverRequestReqDm> get copyWith => __$CreateHandoverRequestReqDmCopyWithImpl<_CreateHandoverRequestReqDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateHandoverRequestReqDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateHandoverRequestReqDm&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.requestedDurationHours, requestedDurationHours) || other.requestedDurationHours == requestedDurationHours)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,itemId,requestedDurationHours,note);

@override
String toString() {
  return 'CreateHandoverRequestReqDm(itemId: $itemId, requestedDurationHours: $requestedDurationHours, note: $note)';
}


}

/// @nodoc
abstract mixin class _$CreateHandoverRequestReqDmCopyWith<$Res> implements $CreateHandoverRequestReqDmCopyWith<$Res> {
  factory _$CreateHandoverRequestReqDmCopyWith(_CreateHandoverRequestReqDm value, $Res Function(_CreateHandoverRequestReqDm) _then) = __$CreateHandoverRequestReqDmCopyWithImpl;
@override @useResult
$Res call({
 String itemId, int requestedDurationHours, String? note
});




}
/// @nodoc
class __$CreateHandoverRequestReqDmCopyWithImpl<$Res>
    implements _$CreateHandoverRequestReqDmCopyWith<$Res> {
  __$CreateHandoverRequestReqDmCopyWithImpl(this._self, this._then);

  final _CreateHandoverRequestReqDm _self;
  final $Res Function(_CreateHandoverRequestReqDm) _then;

/// Create a copy of CreateHandoverRequestReqDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? itemId = null,Object? requestedDurationHours = null,Object? note = freezed,}) {
  return _then(_CreateHandoverRequestReqDm(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,requestedDurationHours: null == requestedDurationHours ? _self.requestedDurationHours : requestedDurationHours // ignore: cast_nullable_to_non_nullable
as int,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
