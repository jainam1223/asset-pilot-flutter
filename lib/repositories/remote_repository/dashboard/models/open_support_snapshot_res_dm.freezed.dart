// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_support_snapshot_res_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OpenSupportSnapshotResDm {

 String get id;@JsonKey(name: 'item_name') String get itemName; SupportType get type; SupportStatus get status;@JsonKey(name: 'filed_at') DateTime? get filedAt;
/// Create a copy of OpenSupportSnapshotResDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OpenSupportSnapshotResDmCopyWith<OpenSupportSnapshotResDm> get copyWith => _$OpenSupportSnapshotResDmCopyWithImpl<OpenSupportSnapshotResDm>(this as OpenSupportSnapshotResDm, _$identity);

  /// Serializes this OpenSupportSnapshotResDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OpenSupportSnapshotResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.filedAt, filedAt) || other.filedAt == filedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,itemName,type,status,filedAt);

@override
String toString() {
  return 'OpenSupportSnapshotResDm(id: $id, itemName: $itemName, type: $type, status: $status, filedAt: $filedAt)';
}


}

/// @nodoc
abstract mixin class $OpenSupportSnapshotResDmCopyWith<$Res>  {
  factory $OpenSupportSnapshotResDmCopyWith(OpenSupportSnapshotResDm value, $Res Function(OpenSupportSnapshotResDm) _then) = _$OpenSupportSnapshotResDmCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'item_name') String itemName, SupportType type, SupportStatus status,@JsonKey(name: 'filed_at') DateTime? filedAt
});




}
/// @nodoc
class _$OpenSupportSnapshotResDmCopyWithImpl<$Res>
    implements $OpenSupportSnapshotResDmCopyWith<$Res> {
  _$OpenSupportSnapshotResDmCopyWithImpl(this._self, this._then);

  final OpenSupportSnapshotResDm _self;
  final $Res Function(OpenSupportSnapshotResDm) _then;

/// Create a copy of OpenSupportSnapshotResDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? itemName = null,Object? type = null,Object? status = null,Object? filedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,itemName: null == itemName ? _self.itemName : itemName // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SupportType,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SupportStatus,filedAt: freezed == filedAt ? _self.filedAt : filedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [OpenSupportSnapshotResDm].
extension OpenSupportSnapshotResDmPatterns on OpenSupportSnapshotResDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OpenSupportSnapshotResDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OpenSupportSnapshotResDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OpenSupportSnapshotResDm value)  $default,){
final _that = this;
switch (_that) {
case _OpenSupportSnapshotResDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OpenSupportSnapshotResDm value)?  $default,){
final _that = this;
switch (_that) {
case _OpenSupportSnapshotResDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'item_name')  String itemName,  SupportType type,  SupportStatus status, @JsonKey(name: 'filed_at')  DateTime? filedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OpenSupportSnapshotResDm() when $default != null:
return $default(_that.id,_that.itemName,_that.type,_that.status,_that.filedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'item_name')  String itemName,  SupportType type,  SupportStatus status, @JsonKey(name: 'filed_at')  DateTime? filedAt)  $default,) {final _that = this;
switch (_that) {
case _OpenSupportSnapshotResDm():
return $default(_that.id,_that.itemName,_that.type,_that.status,_that.filedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'item_name')  String itemName,  SupportType type,  SupportStatus status, @JsonKey(name: 'filed_at')  DateTime? filedAt)?  $default,) {final _that = this;
switch (_that) {
case _OpenSupportSnapshotResDm() when $default != null:
return $default(_that.id,_that.itemName,_that.type,_that.status,_that.filedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OpenSupportSnapshotResDm implements OpenSupportSnapshotResDm {
  const _OpenSupportSnapshotResDm({this.id = '', @JsonKey(name: 'item_name') this.itemName = '', this.type = SupportType.update, this.status = SupportStatus.open, @JsonKey(name: 'filed_at') this.filedAt});
  factory _OpenSupportSnapshotResDm.fromJson(Map<String, dynamic> json) => _$OpenSupportSnapshotResDmFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey(name: 'item_name') final  String itemName;
@override@JsonKey() final  SupportType type;
@override@JsonKey() final  SupportStatus status;
@override@JsonKey(name: 'filed_at') final  DateTime? filedAt;

/// Create a copy of OpenSupportSnapshotResDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OpenSupportSnapshotResDmCopyWith<_OpenSupportSnapshotResDm> get copyWith => __$OpenSupportSnapshotResDmCopyWithImpl<_OpenSupportSnapshotResDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OpenSupportSnapshotResDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OpenSupportSnapshotResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.filedAt, filedAt) || other.filedAt == filedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,itemName,type,status,filedAt);

@override
String toString() {
  return 'OpenSupportSnapshotResDm(id: $id, itemName: $itemName, type: $type, status: $status, filedAt: $filedAt)';
}


}

/// @nodoc
abstract mixin class _$OpenSupportSnapshotResDmCopyWith<$Res> implements $OpenSupportSnapshotResDmCopyWith<$Res> {
  factory _$OpenSupportSnapshotResDmCopyWith(_OpenSupportSnapshotResDm value, $Res Function(_OpenSupportSnapshotResDm) _then) = __$OpenSupportSnapshotResDmCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'item_name') String itemName, SupportType type, SupportStatus status,@JsonKey(name: 'filed_at') DateTime? filedAt
});




}
/// @nodoc
class __$OpenSupportSnapshotResDmCopyWithImpl<$Res>
    implements _$OpenSupportSnapshotResDmCopyWith<$Res> {
  __$OpenSupportSnapshotResDmCopyWithImpl(this._self, this._then);

  final _OpenSupportSnapshotResDm _self;
  final $Res Function(_OpenSupportSnapshotResDm) _then;

/// Create a copy of OpenSupportSnapshotResDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? itemName = null,Object? type = null,Object? status = null,Object? filedAt = freezed,}) {
  return _then(_OpenSupportSnapshotResDm(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,itemName: null == itemName ? _self.itemName : itemName // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SupportType,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SupportStatus,filedAt: freezed == filedAt ? _self.filedAt : filedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
