// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_support_request_req_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FileSupportRequestReqDm {

 SupportType get type; String get description;
/// Create a copy of FileSupportRequestReqDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FileSupportRequestReqDmCopyWith<FileSupportRequestReqDm> get copyWith => _$FileSupportRequestReqDmCopyWithImpl<FileSupportRequestReqDm>(this as FileSupportRequestReqDm, _$identity);

  /// Serializes this FileSupportRequestReqDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FileSupportRequestReqDm&&(identical(other.type, type) || other.type == type)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,description);

@override
String toString() {
  return 'FileSupportRequestReqDm(type: $type, description: $description)';
}


}

/// @nodoc
abstract mixin class $FileSupportRequestReqDmCopyWith<$Res>  {
  factory $FileSupportRequestReqDmCopyWith(FileSupportRequestReqDm value, $Res Function(FileSupportRequestReqDm) _then) = _$FileSupportRequestReqDmCopyWithImpl;
@useResult
$Res call({
 SupportType type, String description
});




}
/// @nodoc
class _$FileSupportRequestReqDmCopyWithImpl<$Res>
    implements $FileSupportRequestReqDmCopyWith<$Res> {
  _$FileSupportRequestReqDmCopyWithImpl(this._self, this._then);

  final FileSupportRequestReqDm _self;
  final $Res Function(FileSupportRequestReqDm) _then;

/// Create a copy of FileSupportRequestReqDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? description = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SupportType,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FileSupportRequestReqDm].
extension FileSupportRequestReqDmPatterns on FileSupportRequestReqDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FileSupportRequestReqDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FileSupportRequestReqDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FileSupportRequestReqDm value)  $default,){
final _that = this;
switch (_that) {
case _FileSupportRequestReqDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FileSupportRequestReqDm value)?  $default,){
final _that = this;
switch (_that) {
case _FileSupportRequestReqDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SupportType type,  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FileSupportRequestReqDm() when $default != null:
return $default(_that.type,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SupportType type,  String description)  $default,) {final _that = this;
switch (_that) {
case _FileSupportRequestReqDm():
return $default(_that.type,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SupportType type,  String description)?  $default,) {final _that = this;
switch (_that) {
case _FileSupportRequestReqDm() when $default != null:
return $default(_that.type,_that.description);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _FileSupportRequestReqDm implements FileSupportRequestReqDm {
  const _FileSupportRequestReqDm({required this.type, required this.description});
  factory _FileSupportRequestReqDm.fromJson(Map<String, dynamic> json) => _$FileSupportRequestReqDmFromJson(json);

@override final  SupportType type;
@override final  String description;

/// Create a copy of FileSupportRequestReqDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FileSupportRequestReqDmCopyWith<_FileSupportRequestReqDm> get copyWith => __$FileSupportRequestReqDmCopyWithImpl<_FileSupportRequestReqDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FileSupportRequestReqDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FileSupportRequestReqDm&&(identical(other.type, type) || other.type == type)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,description);

@override
String toString() {
  return 'FileSupportRequestReqDm(type: $type, description: $description)';
}


}

/// @nodoc
abstract mixin class _$FileSupportRequestReqDmCopyWith<$Res> implements $FileSupportRequestReqDmCopyWith<$Res> {
  factory _$FileSupportRequestReqDmCopyWith(_FileSupportRequestReqDm value, $Res Function(_FileSupportRequestReqDm) _then) = __$FileSupportRequestReqDmCopyWithImpl;
@override @useResult
$Res call({
 SupportType type, String description
});




}
/// @nodoc
class __$FileSupportRequestReqDmCopyWithImpl<$Res>
    implements _$FileSupportRequestReqDmCopyWith<$Res> {
  __$FileSupportRequestReqDmCopyWithImpl(this._self, this._then);

  final _FileSupportRequestReqDm _self;
  final $Res Function(_FileSupportRequestReqDm) _then;

/// Create a copy of FileSupportRequestReqDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? description = null,}) {
  return _then(_FileSupportRequestReqDm(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SupportType,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
