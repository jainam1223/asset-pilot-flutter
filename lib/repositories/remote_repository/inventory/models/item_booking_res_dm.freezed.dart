// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_booking_res_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ItemBookingResDm {

@JsonKey(name: 'request_id') String get requestId;@JsonKey(name: 'requester_name') String get requesterName;@JsonKey(name: 'assigned_from') DateTime? get assignedFrom;@JsonKey(name: 'assigned_to') DateTime? get assignedTo;
/// Create a copy of ItemBookingResDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemBookingResDmCopyWith<ItemBookingResDm> get copyWith => _$ItemBookingResDmCopyWithImpl<ItemBookingResDm>(this as ItemBookingResDm, _$identity);

  /// Serializes this ItemBookingResDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemBookingResDm&&(identical(other.requestId, requestId) || other.requestId == requestId)&&(identical(other.requesterName, requesterName) || other.requesterName == requesterName)&&(identical(other.assignedFrom, assignedFrom) || other.assignedFrom == assignedFrom)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,requestId,requesterName,assignedFrom,assignedTo);

@override
String toString() {
  return 'ItemBookingResDm(requestId: $requestId, requesterName: $requesterName, assignedFrom: $assignedFrom, assignedTo: $assignedTo)';
}


}

/// @nodoc
abstract mixin class $ItemBookingResDmCopyWith<$Res>  {
  factory $ItemBookingResDmCopyWith(ItemBookingResDm value, $Res Function(ItemBookingResDm) _then) = _$ItemBookingResDmCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'request_id') String requestId,@JsonKey(name: 'requester_name') String requesterName,@JsonKey(name: 'assigned_from') DateTime? assignedFrom,@JsonKey(name: 'assigned_to') DateTime? assignedTo
});




}
/// @nodoc
class _$ItemBookingResDmCopyWithImpl<$Res>
    implements $ItemBookingResDmCopyWith<$Res> {
  _$ItemBookingResDmCopyWithImpl(this._self, this._then);

  final ItemBookingResDm _self;
  final $Res Function(ItemBookingResDm) _then;

/// Create a copy of ItemBookingResDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? requestId = null,Object? requesterName = null,Object? assignedFrom = freezed,Object? assignedTo = freezed,}) {
  return _then(_self.copyWith(
requestId: null == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String,requesterName: null == requesterName ? _self.requesterName : requesterName // ignore: cast_nullable_to_non_nullable
as String,assignedFrom: freezed == assignedFrom ? _self.assignedFrom : assignedFrom // ignore: cast_nullable_to_non_nullable
as DateTime?,assignedTo: freezed == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [ItemBookingResDm].
extension ItemBookingResDmPatterns on ItemBookingResDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemBookingResDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemBookingResDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemBookingResDm value)  $default,){
final _that = this;
switch (_that) {
case _ItemBookingResDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemBookingResDm value)?  $default,){
final _that = this;
switch (_that) {
case _ItemBookingResDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'request_id')  String requestId, @JsonKey(name: 'requester_name')  String requesterName, @JsonKey(name: 'assigned_from')  DateTime? assignedFrom, @JsonKey(name: 'assigned_to')  DateTime? assignedTo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemBookingResDm() when $default != null:
return $default(_that.requestId,_that.requesterName,_that.assignedFrom,_that.assignedTo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'request_id')  String requestId, @JsonKey(name: 'requester_name')  String requesterName, @JsonKey(name: 'assigned_from')  DateTime? assignedFrom, @JsonKey(name: 'assigned_to')  DateTime? assignedTo)  $default,) {final _that = this;
switch (_that) {
case _ItemBookingResDm():
return $default(_that.requestId,_that.requesterName,_that.assignedFrom,_that.assignedTo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'request_id')  String requestId, @JsonKey(name: 'requester_name')  String requesterName, @JsonKey(name: 'assigned_from')  DateTime? assignedFrom, @JsonKey(name: 'assigned_to')  DateTime? assignedTo)?  $default,) {final _that = this;
switch (_that) {
case _ItemBookingResDm() when $default != null:
return $default(_that.requestId,_that.requesterName,_that.assignedFrom,_that.assignedTo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ItemBookingResDm implements ItemBookingResDm {
  const _ItemBookingResDm({@JsonKey(name: 'request_id') this.requestId = '', @JsonKey(name: 'requester_name') this.requesterName = '', @JsonKey(name: 'assigned_from') this.assignedFrom, @JsonKey(name: 'assigned_to') this.assignedTo});
  factory _ItemBookingResDm.fromJson(Map<String, dynamic> json) => _$ItemBookingResDmFromJson(json);

@override@JsonKey(name: 'request_id') final  String requestId;
@override@JsonKey(name: 'requester_name') final  String requesterName;
@override@JsonKey(name: 'assigned_from') final  DateTime? assignedFrom;
@override@JsonKey(name: 'assigned_to') final  DateTime? assignedTo;

/// Create a copy of ItemBookingResDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemBookingResDmCopyWith<_ItemBookingResDm> get copyWith => __$ItemBookingResDmCopyWithImpl<_ItemBookingResDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemBookingResDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemBookingResDm&&(identical(other.requestId, requestId) || other.requestId == requestId)&&(identical(other.requesterName, requesterName) || other.requesterName == requesterName)&&(identical(other.assignedFrom, assignedFrom) || other.assignedFrom == assignedFrom)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,requestId,requesterName,assignedFrom,assignedTo);

@override
String toString() {
  return 'ItemBookingResDm(requestId: $requestId, requesterName: $requesterName, assignedFrom: $assignedFrom, assignedTo: $assignedTo)';
}


}

/// @nodoc
abstract mixin class _$ItemBookingResDmCopyWith<$Res> implements $ItemBookingResDmCopyWith<$Res> {
  factory _$ItemBookingResDmCopyWith(_ItemBookingResDm value, $Res Function(_ItemBookingResDm) _then) = __$ItemBookingResDmCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'request_id') String requestId,@JsonKey(name: 'requester_name') String requesterName,@JsonKey(name: 'assigned_from') DateTime? assignedFrom,@JsonKey(name: 'assigned_to') DateTime? assignedTo
});




}
/// @nodoc
class __$ItemBookingResDmCopyWithImpl<$Res>
    implements _$ItemBookingResDmCopyWith<$Res> {
  __$ItemBookingResDmCopyWithImpl(this._self, this._then);

  final _ItemBookingResDm _self;
  final $Res Function(_ItemBookingResDm) _then;

/// Create a copy of ItemBookingResDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? requestId = null,Object? requesterName = null,Object? assignedFrom = freezed,Object? assignedTo = freezed,}) {
  return _then(_ItemBookingResDm(
requestId: null == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String,requesterName: null == requesterName ? _self.requesterName : requesterName // ignore: cast_nullable_to_non_nullable
as String,assignedFrom: freezed == assignedFrom ? _self.assignedFrom : assignedFrom // ignore: cast_nullable_to_non_nullable
as DateTime?,assignedTo: freezed == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
