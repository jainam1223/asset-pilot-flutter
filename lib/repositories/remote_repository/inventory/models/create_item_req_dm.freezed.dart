// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_item_req_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateItemReqDm {

 String get name;@JsonKey(name: 'serial_no') String get serialNo;@JsonKey(name: 'category_id') String get categoryId;@JsonKey(name: 'owner_type') OwnerType get ownerType;@JsonKey(name: 'client_name') String? get clientName;@JsonKey(name: 'purchase_date') DateTime? get purchaseDate;
/// Create a copy of CreateItemReqDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateItemReqDmCopyWith<CreateItemReqDm> get copyWith => _$CreateItemReqDmCopyWithImpl<CreateItemReqDm>(this as CreateItemReqDm, _$identity);

  /// Serializes this CreateItemReqDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateItemReqDm&&(identical(other.name, name) || other.name == name)&&(identical(other.serialNo, serialNo) || other.serialNo == serialNo)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.ownerType, ownerType) || other.ownerType == ownerType)&&(identical(other.clientName, clientName) || other.clientName == clientName)&&(identical(other.purchaseDate, purchaseDate) || other.purchaseDate == purchaseDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,serialNo,categoryId,ownerType,clientName,purchaseDate);

@override
String toString() {
  return 'CreateItemReqDm(name: $name, serialNo: $serialNo, categoryId: $categoryId, ownerType: $ownerType, clientName: $clientName, purchaseDate: $purchaseDate)';
}


}

/// @nodoc
abstract mixin class $CreateItemReqDmCopyWith<$Res>  {
  factory $CreateItemReqDmCopyWith(CreateItemReqDm value, $Res Function(CreateItemReqDm) _then) = _$CreateItemReqDmCopyWithImpl;
@useResult
$Res call({
 String name,@JsonKey(name: 'serial_no') String serialNo,@JsonKey(name: 'category_id') String categoryId,@JsonKey(name: 'owner_type') OwnerType ownerType,@JsonKey(name: 'client_name') String? clientName,@JsonKey(name: 'purchase_date') DateTime? purchaseDate
});




}
/// @nodoc
class _$CreateItemReqDmCopyWithImpl<$Res>
    implements $CreateItemReqDmCopyWith<$Res> {
  _$CreateItemReqDmCopyWithImpl(this._self, this._then);

  final CreateItemReqDm _self;
  final $Res Function(CreateItemReqDm) _then;

/// Create a copy of CreateItemReqDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? serialNo = null,Object? categoryId = null,Object? ownerType = null,Object? clientName = freezed,Object? purchaseDate = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,serialNo: null == serialNo ? _self.serialNo : serialNo // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,ownerType: null == ownerType ? _self.ownerType : ownerType // ignore: cast_nullable_to_non_nullable
as OwnerType,clientName: freezed == clientName ? _self.clientName : clientName // ignore: cast_nullable_to_non_nullable
as String?,purchaseDate: freezed == purchaseDate ? _self.purchaseDate : purchaseDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateItemReqDm].
extension CreateItemReqDmPatterns on CreateItemReqDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateItemReqDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateItemReqDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateItemReqDm value)  $default,){
final _that = this;
switch (_that) {
case _CreateItemReqDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateItemReqDm value)?  $default,){
final _that = this;
switch (_that) {
case _CreateItemReqDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name, @JsonKey(name: 'serial_no')  String serialNo, @JsonKey(name: 'category_id')  String categoryId, @JsonKey(name: 'owner_type')  OwnerType ownerType, @JsonKey(name: 'client_name')  String? clientName, @JsonKey(name: 'purchase_date')  DateTime? purchaseDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateItemReqDm() when $default != null:
return $default(_that.name,_that.serialNo,_that.categoryId,_that.ownerType,_that.clientName,_that.purchaseDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name, @JsonKey(name: 'serial_no')  String serialNo, @JsonKey(name: 'category_id')  String categoryId, @JsonKey(name: 'owner_type')  OwnerType ownerType, @JsonKey(name: 'client_name')  String? clientName, @JsonKey(name: 'purchase_date')  DateTime? purchaseDate)  $default,) {final _that = this;
switch (_that) {
case _CreateItemReqDm():
return $default(_that.name,_that.serialNo,_that.categoryId,_that.ownerType,_that.clientName,_that.purchaseDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name, @JsonKey(name: 'serial_no')  String serialNo, @JsonKey(name: 'category_id')  String categoryId, @JsonKey(name: 'owner_type')  OwnerType ownerType, @JsonKey(name: 'client_name')  String? clientName, @JsonKey(name: 'purchase_date')  DateTime? purchaseDate)?  $default,) {final _that = this;
switch (_that) {
case _CreateItemReqDm() when $default != null:
return $default(_that.name,_that.serialNo,_that.categoryId,_that.ownerType,_that.clientName,_that.purchaseDate);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _CreateItemReqDm implements CreateItemReqDm {
  const _CreateItemReqDm({required this.name, @JsonKey(name: 'serial_no') required this.serialNo, @JsonKey(name: 'category_id') required this.categoryId, @JsonKey(name: 'owner_type') required this.ownerType, @JsonKey(name: 'client_name') this.clientName, @JsonKey(name: 'purchase_date') this.purchaseDate});
  factory _CreateItemReqDm.fromJson(Map<String, dynamic> json) => _$CreateItemReqDmFromJson(json);

@override final  String name;
@override@JsonKey(name: 'serial_no') final  String serialNo;
@override@JsonKey(name: 'category_id') final  String categoryId;
@override@JsonKey(name: 'owner_type') final  OwnerType ownerType;
@override@JsonKey(name: 'client_name') final  String? clientName;
@override@JsonKey(name: 'purchase_date') final  DateTime? purchaseDate;

/// Create a copy of CreateItemReqDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateItemReqDmCopyWith<_CreateItemReqDm> get copyWith => __$CreateItemReqDmCopyWithImpl<_CreateItemReqDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateItemReqDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateItemReqDm&&(identical(other.name, name) || other.name == name)&&(identical(other.serialNo, serialNo) || other.serialNo == serialNo)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.ownerType, ownerType) || other.ownerType == ownerType)&&(identical(other.clientName, clientName) || other.clientName == clientName)&&(identical(other.purchaseDate, purchaseDate) || other.purchaseDate == purchaseDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,serialNo,categoryId,ownerType,clientName,purchaseDate);

@override
String toString() {
  return 'CreateItemReqDm(name: $name, serialNo: $serialNo, categoryId: $categoryId, ownerType: $ownerType, clientName: $clientName, purchaseDate: $purchaseDate)';
}


}

/// @nodoc
abstract mixin class _$CreateItemReqDmCopyWith<$Res> implements $CreateItemReqDmCopyWith<$Res> {
  factory _$CreateItemReqDmCopyWith(_CreateItemReqDm value, $Res Function(_CreateItemReqDm) _then) = __$CreateItemReqDmCopyWithImpl;
@override @useResult
$Res call({
 String name,@JsonKey(name: 'serial_no') String serialNo,@JsonKey(name: 'category_id') String categoryId,@JsonKey(name: 'owner_type') OwnerType ownerType,@JsonKey(name: 'client_name') String? clientName,@JsonKey(name: 'purchase_date') DateTime? purchaseDate
});




}
/// @nodoc
class __$CreateItemReqDmCopyWithImpl<$Res>
    implements _$CreateItemReqDmCopyWith<$Res> {
  __$CreateItemReqDmCopyWithImpl(this._self, this._then);

  final _CreateItemReqDm _self;
  final $Res Function(_CreateItemReqDm) _then;

/// Create a copy of CreateItemReqDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? serialNo = null,Object? categoryId = null,Object? ownerType = null,Object? clientName = freezed,Object? purchaseDate = freezed,}) {
  return _then(_CreateItemReqDm(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,serialNo: null == serialNo ? _self.serialNo : serialNo // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,ownerType: null == ownerType ? _self.ownerType : ownerType // ignore: cast_nullable_to_non_nullable
as OwnerType,clientName: freezed == clientName ? _self.clientName : clientName // ignore: cast_nullable_to_non_nullable
as String?,purchaseDate: freezed == purchaseDate ? _self.purchaseDate : purchaseDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
