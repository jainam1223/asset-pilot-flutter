// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'decide_extension_req_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DecideExtensionReqDm {

 String get extensionId; ExtensionStatus get decision; String? get note;
/// Create a copy of DecideExtensionReqDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DecideExtensionReqDmCopyWith<DecideExtensionReqDm> get copyWith => _$DecideExtensionReqDmCopyWithImpl<DecideExtensionReqDm>(this as DecideExtensionReqDm, _$identity);

  /// Serializes this DecideExtensionReqDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DecideExtensionReqDm&&(identical(other.extensionId, extensionId) || other.extensionId == extensionId)&&(identical(other.decision, decision) || other.decision == decision)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,extensionId,decision,note);

@override
String toString() {
  return 'DecideExtensionReqDm(extensionId: $extensionId, decision: $decision, note: $note)';
}


}

/// @nodoc
abstract mixin class $DecideExtensionReqDmCopyWith<$Res>  {
  factory $DecideExtensionReqDmCopyWith(DecideExtensionReqDm value, $Res Function(DecideExtensionReqDm) _then) = _$DecideExtensionReqDmCopyWithImpl;
@useResult
$Res call({
 String extensionId, ExtensionStatus decision, String? note
});




}
/// @nodoc
class _$DecideExtensionReqDmCopyWithImpl<$Res>
    implements $DecideExtensionReqDmCopyWith<$Res> {
  _$DecideExtensionReqDmCopyWithImpl(this._self, this._then);

  final DecideExtensionReqDm _self;
  final $Res Function(DecideExtensionReqDm) _then;

/// Create a copy of DecideExtensionReqDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? extensionId = null,Object? decision = null,Object? note = freezed,}) {
  return _then(_self.copyWith(
extensionId: null == extensionId ? _self.extensionId : extensionId // ignore: cast_nullable_to_non_nullable
as String,decision: null == decision ? _self.decision : decision // ignore: cast_nullable_to_non_nullable
as ExtensionStatus,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DecideExtensionReqDm].
extension DecideExtensionReqDmPatterns on DecideExtensionReqDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DecideExtensionReqDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DecideExtensionReqDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DecideExtensionReqDm value)  $default,){
final _that = this;
switch (_that) {
case _DecideExtensionReqDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DecideExtensionReqDm value)?  $default,){
final _that = this;
switch (_that) {
case _DecideExtensionReqDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String extensionId,  ExtensionStatus decision,  String? note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DecideExtensionReqDm() when $default != null:
return $default(_that.extensionId,_that.decision,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String extensionId,  ExtensionStatus decision,  String? note)  $default,) {final _that = this;
switch (_that) {
case _DecideExtensionReqDm():
return $default(_that.extensionId,_that.decision,_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String extensionId,  ExtensionStatus decision,  String? note)?  $default,) {final _that = this;
switch (_that) {
case _DecideExtensionReqDm() when $default != null:
return $default(_that.extensionId,_that.decision,_that.note);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _DecideExtensionReqDm implements DecideExtensionReqDm {
  const _DecideExtensionReqDm({required this.extensionId, required this.decision, this.note});
  factory _DecideExtensionReqDm.fromJson(Map<String, dynamic> json) => _$DecideExtensionReqDmFromJson(json);

@override final  String extensionId;
@override final  ExtensionStatus decision;
@override final  String? note;

/// Create a copy of DecideExtensionReqDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DecideExtensionReqDmCopyWith<_DecideExtensionReqDm> get copyWith => __$DecideExtensionReqDmCopyWithImpl<_DecideExtensionReqDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DecideExtensionReqDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DecideExtensionReqDm&&(identical(other.extensionId, extensionId) || other.extensionId == extensionId)&&(identical(other.decision, decision) || other.decision == decision)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,extensionId,decision,note);

@override
String toString() {
  return 'DecideExtensionReqDm(extensionId: $extensionId, decision: $decision, note: $note)';
}


}

/// @nodoc
abstract mixin class _$DecideExtensionReqDmCopyWith<$Res> implements $DecideExtensionReqDmCopyWith<$Res> {
  factory _$DecideExtensionReqDmCopyWith(_DecideExtensionReqDm value, $Res Function(_DecideExtensionReqDm) _then) = __$DecideExtensionReqDmCopyWithImpl;
@override @useResult
$Res call({
 String extensionId, ExtensionStatus decision, String? note
});




}
/// @nodoc
class __$DecideExtensionReqDmCopyWithImpl<$Res>
    implements _$DecideExtensionReqDmCopyWith<$Res> {
  __$DecideExtensionReqDmCopyWithImpl(this._self, this._then);

  final _DecideExtensionReqDm _self;
  final $Res Function(_DecideExtensionReqDm) _then;

/// Create a copy of DecideExtensionReqDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? extensionId = null,Object? decision = null,Object? note = freezed,}) {
  return _then(_DecideExtensionReqDm(
extensionId: null == extensionId ? _self.extensionId : extensionId // ignore: cast_nullable_to_non_nullable
as String,decision: null == decision ? _self.decision : decision // ignore: cast_nullable_to_non_nullable
as ExtensionStatus,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
