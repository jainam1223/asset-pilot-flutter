// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_category_res_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ItemCategoryResDm {

 String get id; String get name; String? get description; bool get requiresMgrApproval; bool get isActive; String? get createdAt; String? get updatedAt;
/// Create a copy of ItemCategoryResDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemCategoryResDmCopyWith<ItemCategoryResDm> get copyWith => _$ItemCategoryResDmCopyWithImpl<ItemCategoryResDm>(this as ItemCategoryResDm, _$identity);

  /// Serializes this ItemCategoryResDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemCategoryResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.requiresMgrApproval, requiresMgrApproval) || other.requiresMgrApproval == requiresMgrApproval)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,requiresMgrApproval,isActive,createdAt,updatedAt);

@override
String toString() {
  return 'ItemCategoryResDm(id: $id, name: $name, description: $description, requiresMgrApproval: $requiresMgrApproval, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ItemCategoryResDmCopyWith<$Res>  {
  factory $ItemCategoryResDmCopyWith(ItemCategoryResDm value, $Res Function(ItemCategoryResDm) _then) = _$ItemCategoryResDmCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? description, bool requiresMgrApproval, bool isActive, String? createdAt, String? updatedAt
});




}
/// @nodoc
class _$ItemCategoryResDmCopyWithImpl<$Res>
    implements $ItemCategoryResDmCopyWith<$Res> {
  _$ItemCategoryResDmCopyWithImpl(this._self, this._then);

  final ItemCategoryResDm _self;
  final $Res Function(ItemCategoryResDm) _then;

/// Create a copy of ItemCategoryResDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? requiresMgrApproval = null,Object? isActive = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,requiresMgrApproval: null == requiresMgrApproval ? _self.requiresMgrApproval : requiresMgrApproval // ignore: cast_nullable_to_non_nullable
as bool,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ItemCategoryResDm].
extension ItemCategoryResDmPatterns on ItemCategoryResDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemCategoryResDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemCategoryResDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemCategoryResDm value)  $default,){
final _that = this;
switch (_that) {
case _ItemCategoryResDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemCategoryResDm value)?  $default,){
final _that = this;
switch (_that) {
case _ItemCategoryResDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? description,  bool requiresMgrApproval,  bool isActive,  String? createdAt,  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemCategoryResDm() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.requiresMgrApproval,_that.isActive,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? description,  bool requiresMgrApproval,  bool isActive,  String? createdAt,  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _ItemCategoryResDm():
return $default(_that.id,_that.name,_that.description,_that.requiresMgrApproval,_that.isActive,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? description,  bool requiresMgrApproval,  bool isActive,  String? createdAt,  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ItemCategoryResDm() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.requiresMgrApproval,_that.isActive,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ItemCategoryResDm implements ItemCategoryResDm {
  const _ItemCategoryResDm({this.id = '', this.name = '', this.description, this.requiresMgrApproval = false, this.isActive = true, this.createdAt, this.updatedAt});
  factory _ItemCategoryResDm.fromJson(Map<String, dynamic> json) => _$ItemCategoryResDmFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String name;
@override final  String? description;
@override@JsonKey() final  bool requiresMgrApproval;
@override@JsonKey() final  bool isActive;
@override final  String? createdAt;
@override final  String? updatedAt;

/// Create a copy of ItemCategoryResDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemCategoryResDmCopyWith<_ItemCategoryResDm> get copyWith => __$ItemCategoryResDmCopyWithImpl<_ItemCategoryResDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemCategoryResDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemCategoryResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.requiresMgrApproval, requiresMgrApproval) || other.requiresMgrApproval == requiresMgrApproval)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,requiresMgrApproval,isActive,createdAt,updatedAt);

@override
String toString() {
  return 'ItemCategoryResDm(id: $id, name: $name, description: $description, requiresMgrApproval: $requiresMgrApproval, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ItemCategoryResDmCopyWith<$Res> implements $ItemCategoryResDmCopyWith<$Res> {
  factory _$ItemCategoryResDmCopyWith(_ItemCategoryResDm value, $Res Function(_ItemCategoryResDm) _then) = __$ItemCategoryResDmCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? description, bool requiresMgrApproval, bool isActive, String? createdAt, String? updatedAt
});




}
/// @nodoc
class __$ItemCategoryResDmCopyWithImpl<$Res>
    implements _$ItemCategoryResDmCopyWith<$Res> {
  __$ItemCategoryResDmCopyWithImpl(this._self, this._then);

  final _ItemCategoryResDm _self;
  final $Res Function(_ItemCategoryResDm) _then;

/// Create a copy of ItemCategoryResDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? requiresMgrApproval = null,Object? isActive = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_ItemCategoryResDm(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,requiresMgrApproval: null == requiresMgrApproval ? _self.requiresMgrApproval : requiresMgrApproval // ignore: cast_nullable_to_non_nullable
as bool,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
