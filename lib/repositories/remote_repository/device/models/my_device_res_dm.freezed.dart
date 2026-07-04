// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_device_res_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MyDeviceResDm {

 String get id; DateTime? get assignedFrom; DateTime? get assignedTo; bool get isWfh; String? get shipTrackingUrl; String? get returnTrackingUrl; String get status; ItemCategoryResDm? get category; ItemResDm? get assignedItem;
/// Create a copy of MyDeviceResDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyDeviceResDmCopyWith<MyDeviceResDm> get copyWith => _$MyDeviceResDmCopyWithImpl<MyDeviceResDm>(this as MyDeviceResDm, _$identity);

  /// Serializes this MyDeviceResDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyDeviceResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.assignedFrom, assignedFrom) || other.assignedFrom == assignedFrom)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo)&&(identical(other.isWfh, isWfh) || other.isWfh == isWfh)&&(identical(other.shipTrackingUrl, shipTrackingUrl) || other.shipTrackingUrl == shipTrackingUrl)&&(identical(other.returnTrackingUrl, returnTrackingUrl) || other.returnTrackingUrl == returnTrackingUrl)&&(identical(other.status, status) || other.status == status)&&(identical(other.category, category) || other.category == category)&&(identical(other.assignedItem, assignedItem) || other.assignedItem == assignedItem));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,assignedFrom,assignedTo,isWfh,shipTrackingUrl,returnTrackingUrl,status,category,assignedItem);

@override
String toString() {
  return 'MyDeviceResDm(id: $id, assignedFrom: $assignedFrom, assignedTo: $assignedTo, isWfh: $isWfh, shipTrackingUrl: $shipTrackingUrl, returnTrackingUrl: $returnTrackingUrl, status: $status, category: $category, assignedItem: $assignedItem)';
}


}

/// @nodoc
abstract mixin class $MyDeviceResDmCopyWith<$Res>  {
  factory $MyDeviceResDmCopyWith(MyDeviceResDm value, $Res Function(MyDeviceResDm) _then) = _$MyDeviceResDmCopyWithImpl;
@useResult
$Res call({
 String id, DateTime? assignedFrom, DateTime? assignedTo, bool isWfh, String? shipTrackingUrl, String? returnTrackingUrl, String status, ItemCategoryResDm? category, ItemResDm? assignedItem
});


$ItemCategoryResDmCopyWith<$Res>? get category;$ItemResDmCopyWith<$Res>? get assignedItem;

}
/// @nodoc
class _$MyDeviceResDmCopyWithImpl<$Res>
    implements $MyDeviceResDmCopyWith<$Res> {
  _$MyDeviceResDmCopyWithImpl(this._self, this._then);

  final MyDeviceResDm _self;
  final $Res Function(MyDeviceResDm) _then;

/// Create a copy of MyDeviceResDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? assignedFrom = freezed,Object? assignedTo = freezed,Object? isWfh = null,Object? shipTrackingUrl = freezed,Object? returnTrackingUrl = freezed,Object? status = null,Object? category = freezed,Object? assignedItem = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,assignedFrom: freezed == assignedFrom ? _self.assignedFrom : assignedFrom // ignore: cast_nullable_to_non_nullable
as DateTime?,assignedTo: freezed == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as DateTime?,isWfh: null == isWfh ? _self.isWfh : isWfh // ignore: cast_nullable_to_non_nullable
as bool,shipTrackingUrl: freezed == shipTrackingUrl ? _self.shipTrackingUrl : shipTrackingUrl // ignore: cast_nullable_to_non_nullable
as String?,returnTrackingUrl: freezed == returnTrackingUrl ? _self.returnTrackingUrl : returnTrackingUrl // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as ItemCategoryResDm?,assignedItem: freezed == assignedItem ? _self.assignedItem : assignedItem // ignore: cast_nullable_to_non_nullable
as ItemResDm?,
  ));
}
/// Create a copy of MyDeviceResDm
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemCategoryResDmCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $ItemCategoryResDmCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of MyDeviceResDm
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemResDmCopyWith<$Res>? get assignedItem {
    if (_self.assignedItem == null) {
    return null;
  }

  return $ItemResDmCopyWith<$Res>(_self.assignedItem!, (value) {
    return _then(_self.copyWith(assignedItem: value));
  });
}
}


/// Adds pattern-matching-related methods to [MyDeviceResDm].
extension MyDeviceResDmPatterns on MyDeviceResDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyDeviceResDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyDeviceResDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyDeviceResDm value)  $default,){
final _that = this;
switch (_that) {
case _MyDeviceResDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyDeviceResDm value)?  $default,){
final _that = this;
switch (_that) {
case _MyDeviceResDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime? assignedFrom,  DateTime? assignedTo,  bool isWfh,  String? shipTrackingUrl,  String? returnTrackingUrl,  String status,  ItemCategoryResDm? category,  ItemResDm? assignedItem)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyDeviceResDm() when $default != null:
return $default(_that.id,_that.assignedFrom,_that.assignedTo,_that.isWfh,_that.shipTrackingUrl,_that.returnTrackingUrl,_that.status,_that.category,_that.assignedItem);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime? assignedFrom,  DateTime? assignedTo,  bool isWfh,  String? shipTrackingUrl,  String? returnTrackingUrl,  String status,  ItemCategoryResDm? category,  ItemResDm? assignedItem)  $default,) {final _that = this;
switch (_that) {
case _MyDeviceResDm():
return $default(_that.id,_that.assignedFrom,_that.assignedTo,_that.isWfh,_that.shipTrackingUrl,_that.returnTrackingUrl,_that.status,_that.category,_that.assignedItem);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime? assignedFrom,  DateTime? assignedTo,  bool isWfh,  String? shipTrackingUrl,  String? returnTrackingUrl,  String status,  ItemCategoryResDm? category,  ItemResDm? assignedItem)?  $default,) {final _that = this;
switch (_that) {
case _MyDeviceResDm() when $default != null:
return $default(_that.id,_that.assignedFrom,_that.assignedTo,_that.isWfh,_that.shipTrackingUrl,_that.returnTrackingUrl,_that.status,_that.category,_that.assignedItem);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MyDeviceResDm implements MyDeviceResDm {
  const _MyDeviceResDm({this.id = '', this.assignedFrom, this.assignedTo, this.isWfh = false, this.shipTrackingUrl, this.returnTrackingUrl, this.status = '', this.category, this.assignedItem});
  factory _MyDeviceResDm.fromJson(Map<String, dynamic> json) => _$MyDeviceResDmFromJson(json);

@override@JsonKey() final  String id;
@override final  DateTime? assignedFrom;
@override final  DateTime? assignedTo;
@override@JsonKey() final  bool isWfh;
@override final  String? shipTrackingUrl;
@override final  String? returnTrackingUrl;
@override@JsonKey() final  String status;
@override final  ItemCategoryResDm? category;
@override final  ItemResDm? assignedItem;

/// Create a copy of MyDeviceResDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyDeviceResDmCopyWith<_MyDeviceResDm> get copyWith => __$MyDeviceResDmCopyWithImpl<_MyDeviceResDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MyDeviceResDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyDeviceResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.assignedFrom, assignedFrom) || other.assignedFrom == assignedFrom)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo)&&(identical(other.isWfh, isWfh) || other.isWfh == isWfh)&&(identical(other.shipTrackingUrl, shipTrackingUrl) || other.shipTrackingUrl == shipTrackingUrl)&&(identical(other.returnTrackingUrl, returnTrackingUrl) || other.returnTrackingUrl == returnTrackingUrl)&&(identical(other.status, status) || other.status == status)&&(identical(other.category, category) || other.category == category)&&(identical(other.assignedItem, assignedItem) || other.assignedItem == assignedItem));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,assignedFrom,assignedTo,isWfh,shipTrackingUrl,returnTrackingUrl,status,category,assignedItem);

@override
String toString() {
  return 'MyDeviceResDm(id: $id, assignedFrom: $assignedFrom, assignedTo: $assignedTo, isWfh: $isWfh, shipTrackingUrl: $shipTrackingUrl, returnTrackingUrl: $returnTrackingUrl, status: $status, category: $category, assignedItem: $assignedItem)';
}


}

/// @nodoc
abstract mixin class _$MyDeviceResDmCopyWith<$Res> implements $MyDeviceResDmCopyWith<$Res> {
  factory _$MyDeviceResDmCopyWith(_MyDeviceResDm value, $Res Function(_MyDeviceResDm) _then) = __$MyDeviceResDmCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime? assignedFrom, DateTime? assignedTo, bool isWfh, String? shipTrackingUrl, String? returnTrackingUrl, String status, ItemCategoryResDm? category, ItemResDm? assignedItem
});


@override $ItemCategoryResDmCopyWith<$Res>? get category;@override $ItemResDmCopyWith<$Res>? get assignedItem;

}
/// @nodoc
class __$MyDeviceResDmCopyWithImpl<$Res>
    implements _$MyDeviceResDmCopyWith<$Res> {
  __$MyDeviceResDmCopyWithImpl(this._self, this._then);

  final _MyDeviceResDm _self;
  final $Res Function(_MyDeviceResDm) _then;

/// Create a copy of MyDeviceResDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? assignedFrom = freezed,Object? assignedTo = freezed,Object? isWfh = null,Object? shipTrackingUrl = freezed,Object? returnTrackingUrl = freezed,Object? status = null,Object? category = freezed,Object? assignedItem = freezed,}) {
  return _then(_MyDeviceResDm(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,assignedFrom: freezed == assignedFrom ? _self.assignedFrom : assignedFrom // ignore: cast_nullable_to_non_nullable
as DateTime?,assignedTo: freezed == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as DateTime?,isWfh: null == isWfh ? _self.isWfh : isWfh // ignore: cast_nullable_to_non_nullable
as bool,shipTrackingUrl: freezed == shipTrackingUrl ? _self.shipTrackingUrl : shipTrackingUrl // ignore: cast_nullable_to_non_nullable
as String?,returnTrackingUrl: freezed == returnTrackingUrl ? _self.returnTrackingUrl : returnTrackingUrl // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as ItemCategoryResDm?,assignedItem: freezed == assignedItem ? _self.assignedItem : assignedItem // ignore: cast_nullable_to_non_nullable
as ItemResDm?,
  ));
}

/// Create a copy of MyDeviceResDm
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemCategoryResDmCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $ItemCategoryResDmCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of MyDeviceResDm
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemResDmCopyWith<$Res>? get assignedItem {
    if (_self.assignedItem == null) {
    return null;
  }

  return $ItemResDmCopyWith<$Res>(_self.assignedItem!, (value) {
    return _then(_self.copyWith(assignedItem: value));
  });
}
}

// dart format on
