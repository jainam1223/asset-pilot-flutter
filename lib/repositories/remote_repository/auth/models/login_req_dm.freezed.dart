// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_req_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginReqDm {

 String get email;
/// Create a copy of LoginReqDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginReqDmCopyWith<LoginReqDm> get copyWith => _$LoginReqDmCopyWithImpl<LoginReqDm>(this as LoginReqDm, _$identity);

  /// Serializes this LoginReqDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginReqDm&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'LoginReqDm(email: $email)';
}


}

/// @nodoc
abstract mixin class $LoginReqDmCopyWith<$Res>  {
  factory $LoginReqDmCopyWith(LoginReqDm value, $Res Function(LoginReqDm) _then) = _$LoginReqDmCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class _$LoginReqDmCopyWithImpl<$Res>
    implements $LoginReqDmCopyWith<$Res> {
  _$LoginReqDmCopyWithImpl(this._self, this._then);

  final LoginReqDm _self;
  final $Res Function(LoginReqDm) _then;

/// Create a copy of LoginReqDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginReqDm].
extension LoginReqDmPatterns on LoginReqDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginReqDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginReqDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginReqDm value)  $default,){
final _that = this;
switch (_that) {
case _LoginReqDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginReqDm value)?  $default,){
final _that = this;
switch (_that) {
case _LoginReqDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginReqDm() when $default != null:
return $default(_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email)  $default,) {final _that = this;
switch (_that) {
case _LoginReqDm():
return $default(_that.email);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email)?  $default,) {final _that = this;
switch (_that) {
case _LoginReqDm() when $default != null:
return $default(_that.email);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _LoginReqDm implements LoginReqDm {
  const _LoginReqDm({required this.email});
  factory _LoginReqDm.fromJson(Map<String, dynamic> json) => _$LoginReqDmFromJson(json);

@override final  String email;

/// Create a copy of LoginReqDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginReqDmCopyWith<_LoginReqDm> get copyWith => __$LoginReqDmCopyWithImpl<_LoginReqDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginReqDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginReqDm&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'LoginReqDm(email: $email)';
}


}

/// @nodoc
abstract mixin class _$LoginReqDmCopyWith<$Res> implements $LoginReqDmCopyWith<$Res> {
  factory _$LoginReqDmCopyWith(_LoginReqDm value, $Res Function(_LoginReqDm) _then) = __$LoginReqDmCopyWithImpl;
@override @useResult
$Res call({
 String email
});




}
/// @nodoc
class __$LoginReqDmCopyWithImpl<$Res>
    implements _$LoginReqDmCopyWith<$Res> {
  __$LoginReqDmCopyWithImpl(this._self, this._then);

  final _LoginReqDm _self;
  final $Res Function(_LoginReqDm) _then;

/// Create a copy of LoginReqDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(_LoginReqDm(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
