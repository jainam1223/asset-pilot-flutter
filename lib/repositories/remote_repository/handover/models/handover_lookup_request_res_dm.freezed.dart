// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'handover_lookup_request_res_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HandoverLookupRequestResDm {

 String get id; String get status; String get priority; DateTime? get assignedFrom; DateTime? get assignedTo;
/// Create a copy of HandoverLookupRequestResDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HandoverLookupRequestResDmCopyWith<HandoverLookupRequestResDm> get copyWith => _$HandoverLookupRequestResDmCopyWithImpl<HandoverLookupRequestResDm>(this as HandoverLookupRequestResDm, _$identity);

  /// Serializes this HandoverLookupRequestResDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HandoverLookupRequestResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.assignedFrom, assignedFrom) || other.assignedFrom == assignedFrom)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,priority,assignedFrom,assignedTo);

@override
String toString() {
  return 'HandoverLookupRequestResDm(id: $id, status: $status, priority: $priority, assignedFrom: $assignedFrom, assignedTo: $assignedTo)';
}


}

/// @nodoc
abstract mixin class $HandoverLookupRequestResDmCopyWith<$Res>  {
  factory $HandoverLookupRequestResDmCopyWith(HandoverLookupRequestResDm value, $Res Function(HandoverLookupRequestResDm) _then) = _$HandoverLookupRequestResDmCopyWithImpl;
@useResult
$Res call({
 String id, String status, String priority, DateTime? assignedFrom, DateTime? assignedTo
});




}
/// @nodoc
class _$HandoverLookupRequestResDmCopyWithImpl<$Res>
    implements $HandoverLookupRequestResDmCopyWith<$Res> {
  _$HandoverLookupRequestResDmCopyWithImpl(this._self, this._then);

  final HandoverLookupRequestResDm _self;
  final $Res Function(HandoverLookupRequestResDm) _then;

/// Create a copy of HandoverLookupRequestResDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? status = null,Object? priority = null,Object? assignedFrom = freezed,Object? assignedTo = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String,assignedFrom: freezed == assignedFrom ? _self.assignedFrom : assignedFrom // ignore: cast_nullable_to_non_nullable
as DateTime?,assignedTo: freezed == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [HandoverLookupRequestResDm].
extension HandoverLookupRequestResDmPatterns on HandoverLookupRequestResDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HandoverLookupRequestResDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HandoverLookupRequestResDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HandoverLookupRequestResDm value)  $default,){
final _that = this;
switch (_that) {
case _HandoverLookupRequestResDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HandoverLookupRequestResDm value)?  $default,){
final _that = this;
switch (_that) {
case _HandoverLookupRequestResDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String status,  String priority,  DateTime? assignedFrom,  DateTime? assignedTo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HandoverLookupRequestResDm() when $default != null:
return $default(_that.id,_that.status,_that.priority,_that.assignedFrom,_that.assignedTo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String status,  String priority,  DateTime? assignedFrom,  DateTime? assignedTo)  $default,) {final _that = this;
switch (_that) {
case _HandoverLookupRequestResDm():
return $default(_that.id,_that.status,_that.priority,_that.assignedFrom,_that.assignedTo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String status,  String priority,  DateTime? assignedFrom,  DateTime? assignedTo)?  $default,) {final _that = this;
switch (_that) {
case _HandoverLookupRequestResDm() when $default != null:
return $default(_that.id,_that.status,_that.priority,_that.assignedFrom,_that.assignedTo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HandoverLookupRequestResDm implements HandoverLookupRequestResDm {
  const _HandoverLookupRequestResDm({this.id = '', this.status = 'requested', this.priority = 'medium', this.assignedFrom, this.assignedTo});
  factory _HandoverLookupRequestResDm.fromJson(Map<String, dynamic> json) => _$HandoverLookupRequestResDmFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String status;
@override@JsonKey() final  String priority;
@override final  DateTime? assignedFrom;
@override final  DateTime? assignedTo;

/// Create a copy of HandoverLookupRequestResDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HandoverLookupRequestResDmCopyWith<_HandoverLookupRequestResDm> get copyWith => __$HandoverLookupRequestResDmCopyWithImpl<_HandoverLookupRequestResDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HandoverLookupRequestResDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HandoverLookupRequestResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.assignedFrom, assignedFrom) || other.assignedFrom == assignedFrom)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,priority,assignedFrom,assignedTo);

@override
String toString() {
  return 'HandoverLookupRequestResDm(id: $id, status: $status, priority: $priority, assignedFrom: $assignedFrom, assignedTo: $assignedTo)';
}


}

/// @nodoc
abstract mixin class _$HandoverLookupRequestResDmCopyWith<$Res> implements $HandoverLookupRequestResDmCopyWith<$Res> {
  factory _$HandoverLookupRequestResDmCopyWith(_HandoverLookupRequestResDm value, $Res Function(_HandoverLookupRequestResDm) _then) = __$HandoverLookupRequestResDmCopyWithImpl;
@override @useResult
$Res call({
 String id, String status, String priority, DateTime? assignedFrom, DateTime? assignedTo
});




}
/// @nodoc
class __$HandoverLookupRequestResDmCopyWithImpl<$Res>
    implements _$HandoverLookupRequestResDmCopyWith<$Res> {
  __$HandoverLookupRequestResDmCopyWithImpl(this._self, this._then);

  final _HandoverLookupRequestResDm _self;
  final $Res Function(_HandoverLookupRequestResDm) _then;

/// Create a copy of HandoverLookupRequestResDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? status = null,Object? priority = null,Object? assignedFrom = freezed,Object? assignedTo = freezed,}) {
  return _then(_HandoverLookupRequestResDm(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String,assignedFrom: freezed == assignedFrom ? _self.assignedFrom : assignedFrom // ignore: cast_nullable_to_non_nullable
as DateTime?,assignedTo: freezed == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
