// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_item_res_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InventoryItemResDm {

 String get id; String get name;@JsonKey(name: 'serial_no') String get serialNo;@JsonKey(name: 'category_id') String get categoryId;@JsonKey(name: 'owner_type') OwnerType get ownerType;@JsonKey(name: 'client_name') String? get clientName; DeviceStatus get status;@JsonKey(name: 'current_owner_id') String? get currentOwnerId;@JsonKey(name: 'purchase_date') DateTime? get purchaseDate;@JsonKey(name: 'qr_code_token') String get qrCodeToken;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt;@JsonKey(name: 'category_name') String get categoryName;@JsonKey(name: 'current_owner_name') String? get currentOwnerName;
/// Create a copy of InventoryItemResDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventoryItemResDmCopyWith<InventoryItemResDm> get copyWith => _$InventoryItemResDmCopyWithImpl<InventoryItemResDm>(this as InventoryItemResDm, _$identity);

  /// Serializes this InventoryItemResDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryItemResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.serialNo, serialNo) || other.serialNo == serialNo)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.ownerType, ownerType) || other.ownerType == ownerType)&&(identical(other.clientName, clientName) || other.clientName == clientName)&&(identical(other.status, status) || other.status == status)&&(identical(other.currentOwnerId, currentOwnerId) || other.currentOwnerId == currentOwnerId)&&(identical(other.purchaseDate, purchaseDate) || other.purchaseDate == purchaseDate)&&(identical(other.qrCodeToken, qrCodeToken) || other.qrCodeToken == qrCodeToken)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.currentOwnerName, currentOwnerName) || other.currentOwnerName == currentOwnerName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,serialNo,categoryId,ownerType,clientName,status,currentOwnerId,purchaseDate,qrCodeToken,createdAt,updatedAt,categoryName,currentOwnerName);

@override
String toString() {
  return 'InventoryItemResDm(id: $id, name: $name, serialNo: $serialNo, categoryId: $categoryId, ownerType: $ownerType, clientName: $clientName, status: $status, currentOwnerId: $currentOwnerId, purchaseDate: $purchaseDate, qrCodeToken: $qrCodeToken, createdAt: $createdAt, updatedAt: $updatedAt, categoryName: $categoryName, currentOwnerName: $currentOwnerName)';
}


}

/// @nodoc
abstract mixin class $InventoryItemResDmCopyWith<$Res>  {
  factory $InventoryItemResDmCopyWith(InventoryItemResDm value, $Res Function(InventoryItemResDm) _then) = _$InventoryItemResDmCopyWithImpl;
@useResult
$Res call({
 String id, String name,@JsonKey(name: 'serial_no') String serialNo,@JsonKey(name: 'category_id') String categoryId,@JsonKey(name: 'owner_type') OwnerType ownerType,@JsonKey(name: 'client_name') String? clientName, DeviceStatus status,@JsonKey(name: 'current_owner_id') String? currentOwnerId,@JsonKey(name: 'purchase_date') DateTime? purchaseDate,@JsonKey(name: 'qr_code_token') String qrCodeToken,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt,@JsonKey(name: 'category_name') String categoryName,@JsonKey(name: 'current_owner_name') String? currentOwnerName
});




}
/// @nodoc
class _$InventoryItemResDmCopyWithImpl<$Res>
    implements $InventoryItemResDmCopyWith<$Res> {
  _$InventoryItemResDmCopyWithImpl(this._self, this._then);

  final InventoryItemResDm _self;
  final $Res Function(InventoryItemResDm) _then;

/// Create a copy of InventoryItemResDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? serialNo = null,Object? categoryId = null,Object? ownerType = null,Object? clientName = freezed,Object? status = null,Object? currentOwnerId = freezed,Object? purchaseDate = freezed,Object? qrCodeToken = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? categoryName = null,Object? currentOwnerName = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,serialNo: null == serialNo ? _self.serialNo : serialNo // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,ownerType: null == ownerType ? _self.ownerType : ownerType // ignore: cast_nullable_to_non_nullable
as OwnerType,clientName: freezed == clientName ? _self.clientName : clientName // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DeviceStatus,currentOwnerId: freezed == currentOwnerId ? _self.currentOwnerId : currentOwnerId // ignore: cast_nullable_to_non_nullable
as String?,purchaseDate: freezed == purchaseDate ? _self.purchaseDate : purchaseDate // ignore: cast_nullable_to_non_nullable
as DateTime?,qrCodeToken: null == qrCodeToken ? _self.qrCodeToken : qrCodeToken // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,currentOwnerName: freezed == currentOwnerName ? _self.currentOwnerName : currentOwnerName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [InventoryItemResDm].
extension InventoryItemResDmPatterns on InventoryItemResDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InventoryItemResDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InventoryItemResDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InventoryItemResDm value)  $default,){
final _that = this;
switch (_that) {
case _InventoryItemResDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InventoryItemResDm value)?  $default,){
final _that = this;
switch (_that) {
case _InventoryItemResDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(name: 'serial_no')  String serialNo, @JsonKey(name: 'category_id')  String categoryId, @JsonKey(name: 'owner_type')  OwnerType ownerType, @JsonKey(name: 'client_name')  String? clientName,  DeviceStatus status, @JsonKey(name: 'current_owner_id')  String? currentOwnerId, @JsonKey(name: 'purchase_date')  DateTime? purchaseDate, @JsonKey(name: 'qr_code_token')  String qrCodeToken, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt, @JsonKey(name: 'category_name')  String categoryName, @JsonKey(name: 'current_owner_name')  String? currentOwnerName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InventoryItemResDm() when $default != null:
return $default(_that.id,_that.name,_that.serialNo,_that.categoryId,_that.ownerType,_that.clientName,_that.status,_that.currentOwnerId,_that.purchaseDate,_that.qrCodeToken,_that.createdAt,_that.updatedAt,_that.categoryName,_that.currentOwnerName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(name: 'serial_no')  String serialNo, @JsonKey(name: 'category_id')  String categoryId, @JsonKey(name: 'owner_type')  OwnerType ownerType, @JsonKey(name: 'client_name')  String? clientName,  DeviceStatus status, @JsonKey(name: 'current_owner_id')  String? currentOwnerId, @JsonKey(name: 'purchase_date')  DateTime? purchaseDate, @JsonKey(name: 'qr_code_token')  String qrCodeToken, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt, @JsonKey(name: 'category_name')  String categoryName, @JsonKey(name: 'current_owner_name')  String? currentOwnerName)  $default,) {final _that = this;
switch (_that) {
case _InventoryItemResDm():
return $default(_that.id,_that.name,_that.serialNo,_that.categoryId,_that.ownerType,_that.clientName,_that.status,_that.currentOwnerId,_that.purchaseDate,_that.qrCodeToken,_that.createdAt,_that.updatedAt,_that.categoryName,_that.currentOwnerName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name, @JsonKey(name: 'serial_no')  String serialNo, @JsonKey(name: 'category_id')  String categoryId, @JsonKey(name: 'owner_type')  OwnerType ownerType, @JsonKey(name: 'client_name')  String? clientName,  DeviceStatus status, @JsonKey(name: 'current_owner_id')  String? currentOwnerId, @JsonKey(name: 'purchase_date')  DateTime? purchaseDate, @JsonKey(name: 'qr_code_token')  String qrCodeToken, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt, @JsonKey(name: 'category_name')  String categoryName, @JsonKey(name: 'current_owner_name')  String? currentOwnerName)?  $default,) {final _that = this;
switch (_that) {
case _InventoryItemResDm() when $default != null:
return $default(_that.id,_that.name,_that.serialNo,_that.categoryId,_that.ownerType,_that.clientName,_that.status,_that.currentOwnerId,_that.purchaseDate,_that.qrCodeToken,_that.createdAt,_that.updatedAt,_that.categoryName,_that.currentOwnerName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InventoryItemResDm implements InventoryItemResDm {
  const _InventoryItemResDm({this.id = '', this.name = '', @JsonKey(name: 'serial_no') this.serialNo = '', @JsonKey(name: 'category_id') this.categoryId = '', @JsonKey(name: 'owner_type') this.ownerType = OwnerType.company, @JsonKey(name: 'client_name') this.clientName, this.status = DeviceStatus.available, @JsonKey(name: 'current_owner_id') this.currentOwnerId, @JsonKey(name: 'purchase_date') this.purchaseDate, @JsonKey(name: 'qr_code_token') this.qrCodeToken = '', @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'category_name') this.categoryName = '', @JsonKey(name: 'current_owner_name') this.currentOwnerName});
  factory _InventoryItemResDm.fromJson(Map<String, dynamic> json) => _$InventoryItemResDmFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String name;
@override@JsonKey(name: 'serial_no') final  String serialNo;
@override@JsonKey(name: 'category_id') final  String categoryId;
@override@JsonKey(name: 'owner_type') final  OwnerType ownerType;
@override@JsonKey(name: 'client_name') final  String? clientName;
@override@JsonKey() final  DeviceStatus status;
@override@JsonKey(name: 'current_owner_id') final  String? currentOwnerId;
@override@JsonKey(name: 'purchase_date') final  DateTime? purchaseDate;
@override@JsonKey(name: 'qr_code_token') final  String qrCodeToken;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;
@override@JsonKey(name: 'category_name') final  String categoryName;
@override@JsonKey(name: 'current_owner_name') final  String? currentOwnerName;

/// Create a copy of InventoryItemResDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InventoryItemResDmCopyWith<_InventoryItemResDm> get copyWith => __$InventoryItemResDmCopyWithImpl<_InventoryItemResDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InventoryItemResDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InventoryItemResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.serialNo, serialNo) || other.serialNo == serialNo)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.ownerType, ownerType) || other.ownerType == ownerType)&&(identical(other.clientName, clientName) || other.clientName == clientName)&&(identical(other.status, status) || other.status == status)&&(identical(other.currentOwnerId, currentOwnerId) || other.currentOwnerId == currentOwnerId)&&(identical(other.purchaseDate, purchaseDate) || other.purchaseDate == purchaseDate)&&(identical(other.qrCodeToken, qrCodeToken) || other.qrCodeToken == qrCodeToken)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.currentOwnerName, currentOwnerName) || other.currentOwnerName == currentOwnerName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,serialNo,categoryId,ownerType,clientName,status,currentOwnerId,purchaseDate,qrCodeToken,createdAt,updatedAt,categoryName,currentOwnerName);

@override
String toString() {
  return 'InventoryItemResDm(id: $id, name: $name, serialNo: $serialNo, categoryId: $categoryId, ownerType: $ownerType, clientName: $clientName, status: $status, currentOwnerId: $currentOwnerId, purchaseDate: $purchaseDate, qrCodeToken: $qrCodeToken, createdAt: $createdAt, updatedAt: $updatedAt, categoryName: $categoryName, currentOwnerName: $currentOwnerName)';
}


}

/// @nodoc
abstract mixin class _$InventoryItemResDmCopyWith<$Res> implements $InventoryItemResDmCopyWith<$Res> {
  factory _$InventoryItemResDmCopyWith(_InventoryItemResDm value, $Res Function(_InventoryItemResDm) _then) = __$InventoryItemResDmCopyWithImpl;
@override @useResult
$Res call({
 String id, String name,@JsonKey(name: 'serial_no') String serialNo,@JsonKey(name: 'category_id') String categoryId,@JsonKey(name: 'owner_type') OwnerType ownerType,@JsonKey(name: 'client_name') String? clientName, DeviceStatus status,@JsonKey(name: 'current_owner_id') String? currentOwnerId,@JsonKey(name: 'purchase_date') DateTime? purchaseDate,@JsonKey(name: 'qr_code_token') String qrCodeToken,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt,@JsonKey(name: 'category_name') String categoryName,@JsonKey(name: 'current_owner_name') String? currentOwnerName
});




}
/// @nodoc
class __$InventoryItemResDmCopyWithImpl<$Res>
    implements _$InventoryItemResDmCopyWith<$Res> {
  __$InventoryItemResDmCopyWithImpl(this._self, this._then);

  final _InventoryItemResDm _self;
  final $Res Function(_InventoryItemResDm) _then;

/// Create a copy of InventoryItemResDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? serialNo = null,Object? categoryId = null,Object? ownerType = null,Object? clientName = freezed,Object? status = null,Object? currentOwnerId = freezed,Object? purchaseDate = freezed,Object? qrCodeToken = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? categoryName = null,Object? currentOwnerName = freezed,}) {
  return _then(_InventoryItemResDm(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,serialNo: null == serialNo ? _self.serialNo : serialNo // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,ownerType: null == ownerType ? _self.ownerType : ownerType // ignore: cast_nullable_to_non_nullable
as OwnerType,clientName: freezed == clientName ? _self.clientName : clientName // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DeviceStatus,currentOwnerId: freezed == currentOwnerId ? _self.currentOwnerId : currentOwnerId // ignore: cast_nullable_to_non_nullable
as String?,purchaseDate: freezed == purchaseDate ? _self.purchaseDate : purchaseDate // ignore: cast_nullable_to_non_nullable
as DateTime?,qrCodeToken: null == qrCodeToken ? _self.qrCodeToken : qrCodeToken // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,currentOwnerName: freezed == currentOwnerName ? _self.currentOwnerName : currentOwnerName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
