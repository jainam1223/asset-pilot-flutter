// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_request_req_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateRequestReqDm {

@JsonKey(name: 'category_id') String get categoryId;@JsonKey(name: 'requested_from') DateTime get requestedFrom;@JsonKey(name: 'requested_to') DateTime get requestedTo; String get priority; String? get note;@JsonKey(name: 'is_wfh') bool get isWfh;
/// Create a copy of CreateRequestReqDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateRequestReqDmCopyWith<CreateRequestReqDm> get copyWith => _$CreateRequestReqDmCopyWithImpl<CreateRequestReqDm>(this as CreateRequestReqDm, _$identity);

  /// Serializes this CreateRequestReqDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateRequestReqDm&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.requestedFrom, requestedFrom) || other.requestedFrom == requestedFrom)&&(identical(other.requestedTo, requestedTo) || other.requestedTo == requestedTo)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.note, note) || other.note == note)&&(identical(other.isWfh, isWfh) || other.isWfh == isWfh));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,categoryId,requestedFrom,requestedTo,priority,note,isWfh);

@override
String toString() {
  return 'CreateRequestReqDm(categoryId: $categoryId, requestedFrom: $requestedFrom, requestedTo: $requestedTo, priority: $priority, note: $note, isWfh: $isWfh)';
}


}

/// @nodoc
abstract mixin class $CreateRequestReqDmCopyWith<$Res>  {
  factory $CreateRequestReqDmCopyWith(CreateRequestReqDm value, $Res Function(CreateRequestReqDm) _then) = _$CreateRequestReqDmCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'category_id') String categoryId,@JsonKey(name: 'requested_from') DateTime requestedFrom,@JsonKey(name: 'requested_to') DateTime requestedTo, String priority, String? note,@JsonKey(name: 'is_wfh') bool isWfh
});




}
/// @nodoc
class _$CreateRequestReqDmCopyWithImpl<$Res>
    implements $CreateRequestReqDmCopyWith<$Res> {
  _$CreateRequestReqDmCopyWithImpl(this._self, this._then);

  final CreateRequestReqDm _self;
  final $Res Function(CreateRequestReqDm) _then;

/// Create a copy of CreateRequestReqDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categoryId = null,Object? requestedFrom = null,Object? requestedTo = null,Object? priority = null,Object? note = freezed,Object? isWfh = null,}) {
  return _then(_self.copyWith(
categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,requestedFrom: null == requestedFrom ? _self.requestedFrom : requestedFrom // ignore: cast_nullable_to_non_nullable
as DateTime,requestedTo: null == requestedTo ? _self.requestedTo : requestedTo // ignore: cast_nullable_to_non_nullable
as DateTime,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,isWfh: null == isWfh ? _self.isWfh : isWfh // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateRequestReqDm].
extension CreateRequestReqDmPatterns on CreateRequestReqDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateRequestReqDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateRequestReqDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateRequestReqDm value)  $default,){
final _that = this;
switch (_that) {
case _CreateRequestReqDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateRequestReqDm value)?  $default,){
final _that = this;
switch (_that) {
case _CreateRequestReqDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'category_id')  String categoryId, @JsonKey(name: 'requested_from')  DateTime requestedFrom, @JsonKey(name: 'requested_to')  DateTime requestedTo,  String priority,  String? note, @JsonKey(name: 'is_wfh')  bool isWfh)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateRequestReqDm() when $default != null:
return $default(_that.categoryId,_that.requestedFrom,_that.requestedTo,_that.priority,_that.note,_that.isWfh);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'category_id')  String categoryId, @JsonKey(name: 'requested_from')  DateTime requestedFrom, @JsonKey(name: 'requested_to')  DateTime requestedTo,  String priority,  String? note, @JsonKey(name: 'is_wfh')  bool isWfh)  $default,) {final _that = this;
switch (_that) {
case _CreateRequestReqDm():
return $default(_that.categoryId,_that.requestedFrom,_that.requestedTo,_that.priority,_that.note,_that.isWfh);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'category_id')  String categoryId, @JsonKey(name: 'requested_from')  DateTime requestedFrom, @JsonKey(name: 'requested_to')  DateTime requestedTo,  String priority,  String? note, @JsonKey(name: 'is_wfh')  bool isWfh)?  $default,) {final _that = this;
switch (_that) {
case _CreateRequestReqDm() when $default != null:
return $default(_that.categoryId,_that.requestedFrom,_that.requestedTo,_that.priority,_that.note,_that.isWfh);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _CreateRequestReqDm implements CreateRequestReqDm {
  const _CreateRequestReqDm({@JsonKey(name: 'category_id') required this.categoryId, @JsonKey(name: 'requested_from') required this.requestedFrom, @JsonKey(name: 'requested_to') required this.requestedTo, required this.priority, this.note, @JsonKey(name: 'is_wfh') required this.isWfh});
  factory _CreateRequestReqDm.fromJson(Map<String, dynamic> json) => _$CreateRequestReqDmFromJson(json);

@override@JsonKey(name: 'category_id') final  String categoryId;
@override@JsonKey(name: 'requested_from') final  DateTime requestedFrom;
@override@JsonKey(name: 'requested_to') final  DateTime requestedTo;
@override final  String priority;
@override final  String? note;
@override@JsonKey(name: 'is_wfh') final  bool isWfh;

/// Create a copy of CreateRequestReqDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateRequestReqDmCopyWith<_CreateRequestReqDm> get copyWith => __$CreateRequestReqDmCopyWithImpl<_CreateRequestReqDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateRequestReqDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateRequestReqDm&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.requestedFrom, requestedFrom) || other.requestedFrom == requestedFrom)&&(identical(other.requestedTo, requestedTo) || other.requestedTo == requestedTo)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.note, note) || other.note == note)&&(identical(other.isWfh, isWfh) || other.isWfh == isWfh));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,categoryId,requestedFrom,requestedTo,priority,note,isWfh);

@override
String toString() {
  return 'CreateRequestReqDm(categoryId: $categoryId, requestedFrom: $requestedFrom, requestedTo: $requestedTo, priority: $priority, note: $note, isWfh: $isWfh)';
}


}

/// @nodoc
abstract mixin class _$CreateRequestReqDmCopyWith<$Res> implements $CreateRequestReqDmCopyWith<$Res> {
  factory _$CreateRequestReqDmCopyWith(_CreateRequestReqDm value, $Res Function(_CreateRequestReqDm) _then) = __$CreateRequestReqDmCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'category_id') String categoryId,@JsonKey(name: 'requested_from') DateTime requestedFrom,@JsonKey(name: 'requested_to') DateTime requestedTo, String priority, String? note,@JsonKey(name: 'is_wfh') bool isWfh
});




}
/// @nodoc
class __$CreateRequestReqDmCopyWithImpl<$Res>
    implements _$CreateRequestReqDmCopyWith<$Res> {
  __$CreateRequestReqDmCopyWithImpl(this._self, this._then);

  final _CreateRequestReqDm _self;
  final $Res Function(_CreateRequestReqDm) _then;

/// Create a copy of CreateRequestReqDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categoryId = null,Object? requestedFrom = null,Object? requestedTo = null,Object? priority = null,Object? note = freezed,Object? isWfh = null,}) {
  return _then(_CreateRequestReqDm(
categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,requestedFrom: null == requestedFrom ? _self.requestedFrom : requestedFrom // ignore: cast_nullable_to_non_nullable
as DateTime,requestedTo: null == requestedTo ? _self.requestedTo : requestedTo // ignore: cast_nullable_to_non_nullable
as DateTime,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,isWfh: null == isWfh ? _self.isWfh : isWfh // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
