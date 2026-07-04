// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_summary_res_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SupportSummaryResDm {

 String get id; String get deviceName; SupportType get type; SupportStatus get status; String get description; String get filedAt;
/// Create a copy of SupportSummaryResDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SupportSummaryResDmCopyWith<SupportSummaryResDm> get copyWith => _$SupportSummaryResDmCopyWithImpl<SupportSummaryResDm>(this as SupportSummaryResDm, _$identity);

  /// Serializes this SupportSummaryResDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SupportSummaryResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.description, description) || other.description == description)&&(identical(other.filedAt, filedAt) || other.filedAt == filedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,deviceName,type,status,description,filedAt);

@override
String toString() {
  return 'SupportSummaryResDm(id: $id, deviceName: $deviceName, type: $type, status: $status, description: $description, filedAt: $filedAt)';
}


}

/// @nodoc
abstract mixin class $SupportSummaryResDmCopyWith<$Res>  {
  factory $SupportSummaryResDmCopyWith(SupportSummaryResDm value, $Res Function(SupportSummaryResDm) _then) = _$SupportSummaryResDmCopyWithImpl;
@useResult
$Res call({
 String id, String deviceName, SupportType type, SupportStatus status, String description, String filedAt
});




}
/// @nodoc
class _$SupportSummaryResDmCopyWithImpl<$Res>
    implements $SupportSummaryResDmCopyWith<$Res> {
  _$SupportSummaryResDmCopyWithImpl(this._self, this._then);

  final SupportSummaryResDm _self;
  final $Res Function(SupportSummaryResDm) _then;

/// Create a copy of SupportSummaryResDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? deviceName = null,Object? type = null,Object? status = null,Object? description = null,Object? filedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,deviceName: null == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SupportType,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SupportStatus,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,filedAt: null == filedAt ? _self.filedAt : filedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SupportSummaryResDm].
extension SupportSummaryResDmPatterns on SupportSummaryResDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SupportSummaryResDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SupportSummaryResDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SupportSummaryResDm value)  $default,){
final _that = this;
switch (_that) {
case _SupportSummaryResDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SupportSummaryResDm value)?  $default,){
final _that = this;
switch (_that) {
case _SupportSummaryResDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String deviceName,  SupportType type,  SupportStatus status,  String description,  String filedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SupportSummaryResDm() when $default != null:
return $default(_that.id,_that.deviceName,_that.type,_that.status,_that.description,_that.filedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String deviceName,  SupportType type,  SupportStatus status,  String description,  String filedAt)  $default,) {final _that = this;
switch (_that) {
case _SupportSummaryResDm():
return $default(_that.id,_that.deviceName,_that.type,_that.status,_that.description,_that.filedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String deviceName,  SupportType type,  SupportStatus status,  String description,  String filedAt)?  $default,) {final _that = this;
switch (_that) {
case _SupportSummaryResDm() when $default != null:
return $default(_that.id,_that.deviceName,_that.type,_that.status,_that.description,_that.filedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SupportSummaryResDm implements SupportSummaryResDm {
  const _SupportSummaryResDm({this.id = '', this.deviceName = '', this.type = SupportType.update, this.status = SupportStatus.open, this.description = '', this.filedAt = ''});
  factory _SupportSummaryResDm.fromJson(Map<String, dynamic> json) => _$SupportSummaryResDmFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String deviceName;
@override@JsonKey() final  SupportType type;
@override@JsonKey() final  SupportStatus status;
@override@JsonKey() final  String description;
@override@JsonKey() final  String filedAt;

/// Create a copy of SupportSummaryResDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SupportSummaryResDmCopyWith<_SupportSummaryResDm> get copyWith => __$SupportSummaryResDmCopyWithImpl<_SupportSummaryResDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SupportSummaryResDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SupportSummaryResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.description, description) || other.description == description)&&(identical(other.filedAt, filedAt) || other.filedAt == filedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,deviceName,type,status,description,filedAt);

@override
String toString() {
  return 'SupportSummaryResDm(id: $id, deviceName: $deviceName, type: $type, status: $status, description: $description, filedAt: $filedAt)';
}


}

/// @nodoc
abstract mixin class _$SupportSummaryResDmCopyWith<$Res> implements $SupportSummaryResDmCopyWith<$Res> {
  factory _$SupportSummaryResDmCopyWith(_SupportSummaryResDm value, $Res Function(_SupportSummaryResDm) _then) = __$SupportSummaryResDmCopyWithImpl;
@override @useResult
$Res call({
 String id, String deviceName, SupportType type, SupportStatus status, String description, String filedAt
});




}
/// @nodoc
class __$SupportSummaryResDmCopyWithImpl<$Res>
    implements _$SupportSummaryResDmCopyWith<$Res> {
  __$SupportSummaryResDmCopyWithImpl(this._self, this._then);

  final _SupportSummaryResDm _self;
  final $Res Function(_SupportSummaryResDm) _then;

/// Create a copy of SupportSummaryResDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? deviceName = null,Object? type = null,Object? status = null,Object? description = null,Object? filedAt = null,}) {
  return _then(_SupportSummaryResDm(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,deviceName: null == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SupportType,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SupportStatus,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,filedAt: null == filedAt ? _self.filedAt : filedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
