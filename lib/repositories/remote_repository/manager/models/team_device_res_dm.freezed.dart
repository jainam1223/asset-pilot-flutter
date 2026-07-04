// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_device_res_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TeamDeviceResDm {

 String get id; String get deviceName; String get category; String get assignedTo; DeviceStatus get status;
/// Create a copy of TeamDeviceResDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TeamDeviceResDmCopyWith<TeamDeviceResDm> get copyWith => _$TeamDeviceResDmCopyWithImpl<TeamDeviceResDm>(this as TeamDeviceResDm, _$identity);

  /// Serializes this TeamDeviceResDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TeamDeviceResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&(identical(other.category, category) || other.category == category)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,deviceName,category,assignedTo,status);

@override
String toString() {
  return 'TeamDeviceResDm(id: $id, deviceName: $deviceName, category: $category, assignedTo: $assignedTo, status: $status)';
}


}

/// @nodoc
abstract mixin class $TeamDeviceResDmCopyWith<$Res>  {
  factory $TeamDeviceResDmCopyWith(TeamDeviceResDm value, $Res Function(TeamDeviceResDm) _then) = _$TeamDeviceResDmCopyWithImpl;
@useResult
$Res call({
 String id, String deviceName, String category, String assignedTo, DeviceStatus status
});




}
/// @nodoc
class _$TeamDeviceResDmCopyWithImpl<$Res>
    implements $TeamDeviceResDmCopyWith<$Res> {
  _$TeamDeviceResDmCopyWithImpl(this._self, this._then);

  final TeamDeviceResDm _self;
  final $Res Function(TeamDeviceResDm) _then;

/// Create a copy of TeamDeviceResDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? deviceName = null,Object? category = null,Object? assignedTo = null,Object? status = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,deviceName: null == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,assignedTo: null == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DeviceStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [TeamDeviceResDm].
extension TeamDeviceResDmPatterns on TeamDeviceResDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TeamDeviceResDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TeamDeviceResDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TeamDeviceResDm value)  $default,){
final _that = this;
switch (_that) {
case _TeamDeviceResDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TeamDeviceResDm value)?  $default,){
final _that = this;
switch (_that) {
case _TeamDeviceResDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String deviceName,  String category,  String assignedTo,  DeviceStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TeamDeviceResDm() when $default != null:
return $default(_that.id,_that.deviceName,_that.category,_that.assignedTo,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String deviceName,  String category,  String assignedTo,  DeviceStatus status)  $default,) {final _that = this;
switch (_that) {
case _TeamDeviceResDm():
return $default(_that.id,_that.deviceName,_that.category,_that.assignedTo,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String deviceName,  String category,  String assignedTo,  DeviceStatus status)?  $default,) {final _that = this;
switch (_that) {
case _TeamDeviceResDm() when $default != null:
return $default(_that.id,_that.deviceName,_that.category,_that.assignedTo,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TeamDeviceResDm implements TeamDeviceResDm {
  const _TeamDeviceResDm({this.id = '', this.deviceName = '', this.category = '', this.assignedTo = '', this.status = DeviceStatus.assigned});
  factory _TeamDeviceResDm.fromJson(Map<String, dynamic> json) => _$TeamDeviceResDmFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String deviceName;
@override@JsonKey() final  String category;
@override@JsonKey() final  String assignedTo;
@override@JsonKey() final  DeviceStatus status;

/// Create a copy of TeamDeviceResDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TeamDeviceResDmCopyWith<_TeamDeviceResDm> get copyWith => __$TeamDeviceResDmCopyWithImpl<_TeamDeviceResDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TeamDeviceResDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TeamDeviceResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&(identical(other.category, category) || other.category == category)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,deviceName,category,assignedTo,status);

@override
String toString() {
  return 'TeamDeviceResDm(id: $id, deviceName: $deviceName, category: $category, assignedTo: $assignedTo, status: $status)';
}


}

/// @nodoc
abstract mixin class _$TeamDeviceResDmCopyWith<$Res> implements $TeamDeviceResDmCopyWith<$Res> {
  factory _$TeamDeviceResDmCopyWith(_TeamDeviceResDm value, $Res Function(_TeamDeviceResDm) _then) = __$TeamDeviceResDmCopyWithImpl;
@override @useResult
$Res call({
 String id, String deviceName, String category, String assignedTo, DeviceStatus status
});




}
/// @nodoc
class __$TeamDeviceResDmCopyWithImpl<$Res>
    implements _$TeamDeviceResDmCopyWith<$Res> {
  __$TeamDeviceResDmCopyWithImpl(this._self, this._then);

  final _TeamDeviceResDm _self;
  final $Res Function(_TeamDeviceResDm) _then;

/// Create a copy of TeamDeviceResDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? deviceName = null,Object? category = null,Object? assignedTo = null,Object? status = null,}) {
  return _then(_TeamDeviceResDm(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,deviceName: null == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,assignedTo: null == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DeviceStatus,
  ));
}


}


/// @nodoc
mixin _$TeamMemberResDm {

 String get id; String get name; List<TeamDeviceResDm> get devices;
/// Create a copy of TeamMemberResDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TeamMemberResDmCopyWith<TeamMemberResDm> get copyWith => _$TeamMemberResDmCopyWithImpl<TeamMemberResDm>(this as TeamMemberResDm, _$identity);

  /// Serializes this TeamMemberResDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TeamMemberResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.devices, devices));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(devices));

@override
String toString() {
  return 'TeamMemberResDm(id: $id, name: $name, devices: $devices)';
}


}

/// @nodoc
abstract mixin class $TeamMemberResDmCopyWith<$Res>  {
  factory $TeamMemberResDmCopyWith(TeamMemberResDm value, $Res Function(TeamMemberResDm) _then) = _$TeamMemberResDmCopyWithImpl;
@useResult
$Res call({
 String id, String name, List<TeamDeviceResDm> devices
});




}
/// @nodoc
class _$TeamMemberResDmCopyWithImpl<$Res>
    implements $TeamMemberResDmCopyWith<$Res> {
  _$TeamMemberResDmCopyWithImpl(this._self, this._then);

  final TeamMemberResDm _self;
  final $Res Function(TeamMemberResDm) _then;

/// Create a copy of TeamMemberResDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? devices = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,devices: null == devices ? _self.devices : devices // ignore: cast_nullable_to_non_nullable
as List<TeamDeviceResDm>,
  ));
}

}


/// Adds pattern-matching-related methods to [TeamMemberResDm].
extension TeamMemberResDmPatterns on TeamMemberResDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TeamMemberResDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TeamMemberResDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TeamMemberResDm value)  $default,){
final _that = this;
switch (_that) {
case _TeamMemberResDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TeamMemberResDm value)?  $default,){
final _that = this;
switch (_that) {
case _TeamMemberResDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  List<TeamDeviceResDm> devices)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TeamMemberResDm() when $default != null:
return $default(_that.id,_that.name,_that.devices);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  List<TeamDeviceResDm> devices)  $default,) {final _that = this;
switch (_that) {
case _TeamMemberResDm():
return $default(_that.id,_that.name,_that.devices);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  List<TeamDeviceResDm> devices)?  $default,) {final _that = this;
switch (_that) {
case _TeamMemberResDm() when $default != null:
return $default(_that.id,_that.name,_that.devices);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TeamMemberResDm implements TeamMemberResDm {
  const _TeamMemberResDm({this.id = '', this.name = '', final  List<TeamDeviceResDm> devices = const <TeamDeviceResDm>[]}): _devices = devices;
  factory _TeamMemberResDm.fromJson(Map<String, dynamic> json) => _$TeamMemberResDmFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String name;
 final  List<TeamDeviceResDm> _devices;
@override@JsonKey() List<TeamDeviceResDm> get devices {
  if (_devices is EqualUnmodifiableListView) return _devices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_devices);
}


/// Create a copy of TeamMemberResDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TeamMemberResDmCopyWith<_TeamMemberResDm> get copyWith => __$TeamMemberResDmCopyWithImpl<_TeamMemberResDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TeamMemberResDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TeamMemberResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._devices, _devices));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(_devices));

@override
String toString() {
  return 'TeamMemberResDm(id: $id, name: $name, devices: $devices)';
}


}

/// @nodoc
abstract mixin class _$TeamMemberResDmCopyWith<$Res> implements $TeamMemberResDmCopyWith<$Res> {
  factory _$TeamMemberResDmCopyWith(_TeamMemberResDm value, $Res Function(_TeamMemberResDm) _then) = __$TeamMemberResDmCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, List<TeamDeviceResDm> devices
});




}
/// @nodoc
class __$TeamMemberResDmCopyWithImpl<$Res>
    implements _$TeamMemberResDmCopyWith<$Res> {
  __$TeamMemberResDmCopyWithImpl(this._self, this._then);

  final _TeamMemberResDm _self;
  final $Res Function(_TeamMemberResDm) _then;

/// Create a copy of TeamMemberResDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? devices = null,}) {
  return _then(_TeamMemberResDm(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,devices: null == devices ? _self._devices : devices // ignore: cast_nullable_to_non_nullable
as List<TeamDeviceResDm>,
  ));
}


}

// dart format on
