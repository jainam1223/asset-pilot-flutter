// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'handover_lookup_item_res_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HandoverLookupItemResDm {

 String get id; String get name; String get serialNo; String get status; String? get currentOwnerId; HandoverLookupCategoryResDm? get category;
/// Create a copy of HandoverLookupItemResDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HandoverLookupItemResDmCopyWith<HandoverLookupItemResDm> get copyWith => _$HandoverLookupItemResDmCopyWithImpl<HandoverLookupItemResDm>(this as HandoverLookupItemResDm, _$identity);

  /// Serializes this HandoverLookupItemResDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HandoverLookupItemResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.serialNo, serialNo) || other.serialNo == serialNo)&&(identical(other.status, status) || other.status == status)&&(identical(other.currentOwnerId, currentOwnerId) || other.currentOwnerId == currentOwnerId)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,serialNo,status,currentOwnerId,category);

@override
String toString() {
  return 'HandoverLookupItemResDm(id: $id, name: $name, serialNo: $serialNo, status: $status, currentOwnerId: $currentOwnerId, category: $category)';
}


}

/// @nodoc
abstract mixin class $HandoverLookupItemResDmCopyWith<$Res>  {
  factory $HandoverLookupItemResDmCopyWith(HandoverLookupItemResDm value, $Res Function(HandoverLookupItemResDm) _then) = _$HandoverLookupItemResDmCopyWithImpl;
@useResult
$Res call({
 String id, String name, String serialNo, String status, String? currentOwnerId, HandoverLookupCategoryResDm? category
});


$HandoverLookupCategoryResDmCopyWith<$Res>? get category;

}
/// @nodoc
class _$HandoverLookupItemResDmCopyWithImpl<$Res>
    implements $HandoverLookupItemResDmCopyWith<$Res> {
  _$HandoverLookupItemResDmCopyWithImpl(this._self, this._then);

  final HandoverLookupItemResDm _self;
  final $Res Function(HandoverLookupItemResDm) _then;

/// Create a copy of HandoverLookupItemResDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? serialNo = null,Object? status = null,Object? currentOwnerId = freezed,Object? category = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,serialNo: null == serialNo ? _self.serialNo : serialNo // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,currentOwnerId: freezed == currentOwnerId ? _self.currentOwnerId : currentOwnerId // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as HandoverLookupCategoryResDm?,
  ));
}
/// Create a copy of HandoverLookupItemResDm
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HandoverLookupCategoryResDmCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $HandoverLookupCategoryResDmCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// Adds pattern-matching-related methods to [HandoverLookupItemResDm].
extension HandoverLookupItemResDmPatterns on HandoverLookupItemResDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HandoverLookupItemResDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HandoverLookupItemResDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HandoverLookupItemResDm value)  $default,){
final _that = this;
switch (_that) {
case _HandoverLookupItemResDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HandoverLookupItemResDm value)?  $default,){
final _that = this;
switch (_that) {
case _HandoverLookupItemResDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String serialNo,  String status,  String? currentOwnerId,  HandoverLookupCategoryResDm? category)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HandoverLookupItemResDm() when $default != null:
return $default(_that.id,_that.name,_that.serialNo,_that.status,_that.currentOwnerId,_that.category);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String serialNo,  String status,  String? currentOwnerId,  HandoverLookupCategoryResDm? category)  $default,) {final _that = this;
switch (_that) {
case _HandoverLookupItemResDm():
return $default(_that.id,_that.name,_that.serialNo,_that.status,_that.currentOwnerId,_that.category);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String serialNo,  String status,  String? currentOwnerId,  HandoverLookupCategoryResDm? category)?  $default,) {final _that = this;
switch (_that) {
case _HandoverLookupItemResDm() when $default != null:
return $default(_that.id,_that.name,_that.serialNo,_that.status,_that.currentOwnerId,_that.category);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HandoverLookupItemResDm implements HandoverLookupItemResDm {
  const _HandoverLookupItemResDm({this.id = '', this.name = '', this.serialNo = '', this.status = 'available', this.currentOwnerId, this.category});
  factory _HandoverLookupItemResDm.fromJson(Map<String, dynamic> json) => _$HandoverLookupItemResDmFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String name;
@override@JsonKey() final  String serialNo;
@override@JsonKey() final  String status;
@override final  String? currentOwnerId;
@override final  HandoverLookupCategoryResDm? category;

/// Create a copy of HandoverLookupItemResDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HandoverLookupItemResDmCopyWith<_HandoverLookupItemResDm> get copyWith => __$HandoverLookupItemResDmCopyWithImpl<_HandoverLookupItemResDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HandoverLookupItemResDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HandoverLookupItemResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.serialNo, serialNo) || other.serialNo == serialNo)&&(identical(other.status, status) || other.status == status)&&(identical(other.currentOwnerId, currentOwnerId) || other.currentOwnerId == currentOwnerId)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,serialNo,status,currentOwnerId,category);

@override
String toString() {
  return 'HandoverLookupItemResDm(id: $id, name: $name, serialNo: $serialNo, status: $status, currentOwnerId: $currentOwnerId, category: $category)';
}


}

/// @nodoc
abstract mixin class _$HandoverLookupItemResDmCopyWith<$Res> implements $HandoverLookupItemResDmCopyWith<$Res> {
  factory _$HandoverLookupItemResDmCopyWith(_HandoverLookupItemResDm value, $Res Function(_HandoverLookupItemResDm) _then) = __$HandoverLookupItemResDmCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String serialNo, String status, String? currentOwnerId, HandoverLookupCategoryResDm? category
});


@override $HandoverLookupCategoryResDmCopyWith<$Res>? get category;

}
/// @nodoc
class __$HandoverLookupItemResDmCopyWithImpl<$Res>
    implements _$HandoverLookupItemResDmCopyWith<$Res> {
  __$HandoverLookupItemResDmCopyWithImpl(this._self, this._then);

  final _HandoverLookupItemResDm _self;
  final $Res Function(_HandoverLookupItemResDm) _then;

/// Create a copy of HandoverLookupItemResDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? serialNo = null,Object? status = null,Object? currentOwnerId = freezed,Object? category = freezed,}) {
  return _then(_HandoverLookupItemResDm(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,serialNo: null == serialNo ? _self.serialNo : serialNo // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,currentOwnerId: freezed == currentOwnerId ? _self.currentOwnerId : currentOwnerId // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as HandoverLookupCategoryResDm?,
  ));
}

/// Create a copy of HandoverLookupItemResDm
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HandoverLookupCategoryResDmCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $HandoverLookupCategoryResDmCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}

// dart format on
