// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_range_req_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BookingRangeReqDm {

@JsonKey(name: 'assigned_from') DateTime get assignedFrom;@JsonKey(name: 'assigned_to') DateTime get assignedTo;
/// Create a copy of BookingRangeReqDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingRangeReqDmCopyWith<BookingRangeReqDm> get copyWith => _$BookingRangeReqDmCopyWithImpl<BookingRangeReqDm>(this as BookingRangeReqDm, _$identity);

  /// Serializes this BookingRangeReqDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingRangeReqDm&&(identical(other.assignedFrom, assignedFrom) || other.assignedFrom == assignedFrom)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,assignedFrom,assignedTo);

@override
String toString() {
  return 'BookingRangeReqDm(assignedFrom: $assignedFrom, assignedTo: $assignedTo)';
}


}

/// @nodoc
abstract mixin class $BookingRangeReqDmCopyWith<$Res>  {
  factory $BookingRangeReqDmCopyWith(BookingRangeReqDm value, $Res Function(BookingRangeReqDm) _then) = _$BookingRangeReqDmCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'assigned_from') DateTime assignedFrom,@JsonKey(name: 'assigned_to') DateTime assignedTo
});




}
/// @nodoc
class _$BookingRangeReqDmCopyWithImpl<$Res>
    implements $BookingRangeReqDmCopyWith<$Res> {
  _$BookingRangeReqDmCopyWithImpl(this._self, this._then);

  final BookingRangeReqDm _self;
  final $Res Function(BookingRangeReqDm) _then;

/// Create a copy of BookingRangeReqDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? assignedFrom = null,Object? assignedTo = null,}) {
  return _then(_self.copyWith(
assignedFrom: null == assignedFrom ? _self.assignedFrom : assignedFrom // ignore: cast_nullable_to_non_nullable
as DateTime,assignedTo: null == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [BookingRangeReqDm].
extension BookingRangeReqDmPatterns on BookingRangeReqDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingRangeReqDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingRangeReqDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingRangeReqDm value)  $default,){
final _that = this;
switch (_that) {
case _BookingRangeReqDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingRangeReqDm value)?  $default,){
final _that = this;
switch (_that) {
case _BookingRangeReqDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'assigned_from')  DateTime assignedFrom, @JsonKey(name: 'assigned_to')  DateTime assignedTo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingRangeReqDm() when $default != null:
return $default(_that.assignedFrom,_that.assignedTo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'assigned_from')  DateTime assignedFrom, @JsonKey(name: 'assigned_to')  DateTime assignedTo)  $default,) {final _that = this;
switch (_that) {
case _BookingRangeReqDm():
return $default(_that.assignedFrom,_that.assignedTo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'assigned_from')  DateTime assignedFrom, @JsonKey(name: 'assigned_to')  DateTime assignedTo)?  $default,) {final _that = this;
switch (_that) {
case _BookingRangeReqDm() when $default != null:
return $default(_that.assignedFrom,_that.assignedTo);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _BookingRangeReqDm implements BookingRangeReqDm {
  const _BookingRangeReqDm({@JsonKey(name: 'assigned_from') required this.assignedFrom, @JsonKey(name: 'assigned_to') required this.assignedTo});
  factory _BookingRangeReqDm.fromJson(Map<String, dynamic> json) => _$BookingRangeReqDmFromJson(json);

@override@JsonKey(name: 'assigned_from') final  DateTime assignedFrom;
@override@JsonKey(name: 'assigned_to') final  DateTime assignedTo;

/// Create a copy of BookingRangeReqDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingRangeReqDmCopyWith<_BookingRangeReqDm> get copyWith => __$BookingRangeReqDmCopyWithImpl<_BookingRangeReqDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookingRangeReqDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingRangeReqDm&&(identical(other.assignedFrom, assignedFrom) || other.assignedFrom == assignedFrom)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,assignedFrom,assignedTo);

@override
String toString() {
  return 'BookingRangeReqDm(assignedFrom: $assignedFrom, assignedTo: $assignedTo)';
}


}

/// @nodoc
abstract mixin class _$BookingRangeReqDmCopyWith<$Res> implements $BookingRangeReqDmCopyWith<$Res> {
  factory _$BookingRangeReqDmCopyWith(_BookingRangeReqDm value, $Res Function(_BookingRangeReqDm) _then) = __$BookingRangeReqDmCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'assigned_from') DateTime assignedFrom,@JsonKey(name: 'assigned_to') DateTime assignedTo
});




}
/// @nodoc
class __$BookingRangeReqDmCopyWithImpl<$Res>
    implements _$BookingRangeReqDmCopyWith<$Res> {
  __$BookingRangeReqDmCopyWithImpl(this._self, this._then);

  final _BookingRangeReqDm _self;
  final $Res Function(_BookingRangeReqDm) _then;

/// Create a copy of BookingRangeReqDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? assignedFrom = null,Object? assignedTo = null,}) {
  return _then(_BookingRangeReqDm(
assignedFrom: null == assignedFrom ? _self.assignedFrom : assignedFrom // ignore: cast_nullable_to_non_nullable
as DateTime,assignedTo: null == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
