// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_device_res_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EmployeeDeviceResDm {

 String get id; String get name; String get email; String get role; String? get managerId; List<RequestResDm> get requests;
/// Create a copy of EmployeeDeviceResDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeDeviceResDmCopyWith<EmployeeDeviceResDm> get copyWith => _$EmployeeDeviceResDmCopyWithImpl<EmployeeDeviceResDm>(this as EmployeeDeviceResDm, _$identity);

  /// Serializes this EmployeeDeviceResDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeDeviceResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role)&&(identical(other.managerId, managerId) || other.managerId == managerId)&&const DeepCollectionEquality().equals(other.requests, requests));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,role,managerId,const DeepCollectionEquality().hash(requests));

@override
String toString() {
  return 'EmployeeDeviceResDm(id: $id, name: $name, email: $email, role: $role, managerId: $managerId, requests: $requests)';
}


}

/// @nodoc
abstract mixin class $EmployeeDeviceResDmCopyWith<$Res>  {
  factory $EmployeeDeviceResDmCopyWith(EmployeeDeviceResDm value, $Res Function(EmployeeDeviceResDm) _then) = _$EmployeeDeviceResDmCopyWithImpl;
@useResult
$Res call({
 String id, String name, String email, String role, String? managerId, List<RequestResDm> requests
});




}
/// @nodoc
class _$EmployeeDeviceResDmCopyWithImpl<$Res>
    implements $EmployeeDeviceResDmCopyWith<$Res> {
  _$EmployeeDeviceResDmCopyWithImpl(this._self, this._then);

  final EmployeeDeviceResDm _self;
  final $Res Function(EmployeeDeviceResDm) _then;

/// Create a copy of EmployeeDeviceResDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? email = null,Object? role = null,Object? managerId = freezed,Object? requests = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,managerId: freezed == managerId ? _self.managerId : managerId // ignore: cast_nullable_to_non_nullable
as String?,requests: null == requests ? _self.requests : requests // ignore: cast_nullable_to_non_nullable
as List<RequestResDm>,
  ));
}

}


/// Adds pattern-matching-related methods to [EmployeeDeviceResDm].
extension EmployeeDeviceResDmPatterns on EmployeeDeviceResDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmployeeDeviceResDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmployeeDeviceResDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmployeeDeviceResDm value)  $default,){
final _that = this;
switch (_that) {
case _EmployeeDeviceResDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmployeeDeviceResDm value)?  $default,){
final _that = this;
switch (_that) {
case _EmployeeDeviceResDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String email,  String role,  String? managerId,  List<RequestResDm> requests)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmployeeDeviceResDm() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.role,_that.managerId,_that.requests);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String email,  String role,  String? managerId,  List<RequestResDm> requests)  $default,) {final _that = this;
switch (_that) {
case _EmployeeDeviceResDm():
return $default(_that.id,_that.name,_that.email,_that.role,_that.managerId,_that.requests);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String email,  String role,  String? managerId,  List<RequestResDm> requests)?  $default,) {final _that = this;
switch (_that) {
case _EmployeeDeviceResDm() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.role,_that.managerId,_that.requests);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmployeeDeviceResDm implements EmployeeDeviceResDm {
  const _EmployeeDeviceResDm({this.id = '', this.name = '', this.email = '', this.role = '', this.managerId, final  List<RequestResDm> requests = const <RequestResDm>[]}): _requests = requests;
  factory _EmployeeDeviceResDm.fromJson(Map<String, dynamic> json) => _$EmployeeDeviceResDmFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String name;
@override@JsonKey() final  String email;
@override@JsonKey() final  String role;
@override final  String? managerId;
 final  List<RequestResDm> _requests;
@override@JsonKey() List<RequestResDm> get requests {
  if (_requests is EqualUnmodifiableListView) return _requests;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_requests);
}


/// Create a copy of EmployeeDeviceResDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmployeeDeviceResDmCopyWith<_EmployeeDeviceResDm> get copyWith => __$EmployeeDeviceResDmCopyWithImpl<_EmployeeDeviceResDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmployeeDeviceResDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmployeeDeviceResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role)&&(identical(other.managerId, managerId) || other.managerId == managerId)&&const DeepCollectionEquality().equals(other._requests, _requests));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,role,managerId,const DeepCollectionEquality().hash(_requests));

@override
String toString() {
  return 'EmployeeDeviceResDm(id: $id, name: $name, email: $email, role: $role, managerId: $managerId, requests: $requests)';
}


}

/// @nodoc
abstract mixin class _$EmployeeDeviceResDmCopyWith<$Res> implements $EmployeeDeviceResDmCopyWith<$Res> {
  factory _$EmployeeDeviceResDmCopyWith(_EmployeeDeviceResDm value, $Res Function(_EmployeeDeviceResDm) _then) = __$EmployeeDeviceResDmCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String email, String role, String? managerId, List<RequestResDm> requests
});




}
/// @nodoc
class __$EmployeeDeviceResDmCopyWithImpl<$Res>
    implements _$EmployeeDeviceResDmCopyWith<$Res> {
  __$EmployeeDeviceResDmCopyWithImpl(this._self, this._then);

  final _EmployeeDeviceResDm _self;
  final $Res Function(_EmployeeDeviceResDm) _then;

/// Create a copy of EmployeeDeviceResDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? email = null,Object? role = null,Object? managerId = freezed,Object? requests = null,}) {
  return _then(_EmployeeDeviceResDm(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,managerId: freezed == managerId ? _self.managerId : managerId // ignore: cast_nullable_to_non_nullable
as String?,requests: null == requests ? _self._requests : requests // ignore: cast_nullable_to_non_nullable
as List<RequestResDm>,
  ));
}


}

// dart format on
