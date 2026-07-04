// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_res_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ItemResDm {

 String get id; String get name; String get serialNo; String get status; String? get qrCodeToken;
/// Create a copy of ItemResDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemResDmCopyWith<ItemResDm> get copyWith => _$ItemResDmCopyWithImpl<ItemResDm>(this as ItemResDm, _$identity);

  /// Serializes this ItemResDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.serialNo, serialNo) || other.serialNo == serialNo)&&(identical(other.status, status) || other.status == status)&&(identical(other.qrCodeToken, qrCodeToken) || other.qrCodeToken == qrCodeToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,serialNo,status,qrCodeToken);

@override
String toString() {
  return 'ItemResDm(id: $id, name: $name, serialNo: $serialNo, status: $status, qrCodeToken: $qrCodeToken)';
}


}

/// @nodoc
abstract mixin class $ItemResDmCopyWith<$Res>  {
  factory $ItemResDmCopyWith(ItemResDm value, $Res Function(ItemResDm) _then) = _$ItemResDmCopyWithImpl;
@useResult
$Res call({
 String id, String name, String serialNo, String status, String? qrCodeToken
});




}
/// @nodoc
class _$ItemResDmCopyWithImpl<$Res>
    implements $ItemResDmCopyWith<$Res> {
  _$ItemResDmCopyWithImpl(this._self, this._then);

  final ItemResDm _self;
  final $Res Function(ItemResDm) _then;

/// Create a copy of ItemResDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? serialNo = null,Object? status = null,Object? qrCodeToken = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,serialNo: null == serialNo ? _self.serialNo : serialNo // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,qrCodeToken: freezed == qrCodeToken ? _self.qrCodeToken : qrCodeToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ItemResDm].
extension ItemResDmPatterns on ItemResDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemResDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemResDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemResDm value)  $default,){
final _that = this;
switch (_that) {
case _ItemResDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemResDm value)?  $default,){
final _that = this;
switch (_that) {
case _ItemResDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String serialNo,  String status,  String? qrCodeToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemResDm() when $default != null:
return $default(_that.id,_that.name,_that.serialNo,_that.status,_that.qrCodeToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String serialNo,  String status,  String? qrCodeToken)  $default,) {final _that = this;
switch (_that) {
case _ItemResDm():
return $default(_that.id,_that.name,_that.serialNo,_that.status,_that.qrCodeToken);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String serialNo,  String status,  String? qrCodeToken)?  $default,) {final _that = this;
switch (_that) {
case _ItemResDm() when $default != null:
return $default(_that.id,_that.name,_that.serialNo,_that.status,_that.qrCodeToken);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ItemResDm implements ItemResDm {
  const _ItemResDm({this.id = '', this.name = '', this.serialNo = '', this.status = 'available', this.qrCodeToken});
  factory _ItemResDm.fromJson(Map<String, dynamic> json) => _$ItemResDmFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String name;
@override@JsonKey() final  String serialNo;
@override@JsonKey() final  String status;
@override final  String? qrCodeToken;

/// Create a copy of ItemResDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemResDmCopyWith<_ItemResDm> get copyWith => __$ItemResDmCopyWithImpl<_ItemResDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemResDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.serialNo, serialNo) || other.serialNo == serialNo)&&(identical(other.status, status) || other.status == status)&&(identical(other.qrCodeToken, qrCodeToken) || other.qrCodeToken == qrCodeToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,serialNo,status,qrCodeToken);

@override
String toString() {
  return 'ItemResDm(id: $id, name: $name, serialNo: $serialNo, status: $status, qrCodeToken: $qrCodeToken)';
}


}

/// @nodoc
abstract mixin class _$ItemResDmCopyWith<$Res> implements $ItemResDmCopyWith<$Res> {
  factory _$ItemResDmCopyWith(_ItemResDm value, $Res Function(_ItemResDm) _then) = __$ItemResDmCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String serialNo, String status, String? qrCodeToken
});




}
/// @nodoc
class __$ItemResDmCopyWithImpl<$Res>
    implements _$ItemResDmCopyWith<$Res> {
  __$ItemResDmCopyWithImpl(this._self, this._then);

  final _ItemResDm _self;
  final $Res Function(_ItemResDm) _then;

/// Create a copy of ItemResDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? serialNo = null,Object? status = null,Object? qrCodeToken = freezed,}) {
  return _then(_ItemResDm(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,serialNo: null == serialNo ? _self.serialNo : serialNo // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,qrCodeToken: freezed == qrCodeToken ? _self.qrCodeToken : qrCodeToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
