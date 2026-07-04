// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_item_req_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateItemReqDm {

 String? get name;@JsonKey(name: 'category_id') String? get categoryId;@JsonKey(name: 'client_name') String? get clientName;@JsonKey(name: 'purchase_date') DateTime? get purchaseDate;
/// Create a copy of UpdateItemReqDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateItemReqDmCopyWith<UpdateItemReqDm> get copyWith => _$UpdateItemReqDmCopyWithImpl<UpdateItemReqDm>(this as UpdateItemReqDm, _$identity);

  /// Serializes this UpdateItemReqDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateItemReqDm&&(identical(other.name, name) || other.name == name)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.clientName, clientName) || other.clientName == clientName)&&(identical(other.purchaseDate, purchaseDate) || other.purchaseDate == purchaseDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,categoryId,clientName,purchaseDate);

@override
String toString() {
  return 'UpdateItemReqDm(name: $name, categoryId: $categoryId, clientName: $clientName, purchaseDate: $purchaseDate)';
}


}

/// @nodoc
abstract mixin class $UpdateItemReqDmCopyWith<$Res>  {
  factory $UpdateItemReqDmCopyWith(UpdateItemReqDm value, $Res Function(UpdateItemReqDm) _then) = _$UpdateItemReqDmCopyWithImpl;
@useResult
$Res call({
 String? name,@JsonKey(name: 'category_id') String? categoryId,@JsonKey(name: 'client_name') String? clientName,@JsonKey(name: 'purchase_date') DateTime? purchaseDate
});




}
/// @nodoc
class _$UpdateItemReqDmCopyWithImpl<$Res>
    implements $UpdateItemReqDmCopyWith<$Res> {
  _$UpdateItemReqDmCopyWithImpl(this._self, this._then);

  final UpdateItemReqDm _self;
  final $Res Function(UpdateItemReqDm) _then;

/// Create a copy of UpdateItemReqDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? categoryId = freezed,Object? clientName = freezed,Object? purchaseDate = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,clientName: freezed == clientName ? _self.clientName : clientName // ignore: cast_nullable_to_non_nullable
as String?,purchaseDate: freezed == purchaseDate ? _self.purchaseDate : purchaseDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateItemReqDm].
extension UpdateItemReqDmPatterns on UpdateItemReqDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateItemReqDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateItemReqDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateItemReqDm value)  $default,){
final _that = this;
switch (_that) {
case _UpdateItemReqDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateItemReqDm value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateItemReqDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name, @JsonKey(name: 'category_id')  String? categoryId, @JsonKey(name: 'client_name')  String? clientName, @JsonKey(name: 'purchase_date')  DateTime? purchaseDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateItemReqDm() when $default != null:
return $default(_that.name,_that.categoryId,_that.clientName,_that.purchaseDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name, @JsonKey(name: 'category_id')  String? categoryId, @JsonKey(name: 'client_name')  String? clientName, @JsonKey(name: 'purchase_date')  DateTime? purchaseDate)  $default,) {final _that = this;
switch (_that) {
case _UpdateItemReqDm():
return $default(_that.name,_that.categoryId,_that.clientName,_that.purchaseDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name, @JsonKey(name: 'category_id')  String? categoryId, @JsonKey(name: 'client_name')  String? clientName, @JsonKey(name: 'purchase_date')  DateTime? purchaseDate)?  $default,) {final _that = this;
switch (_that) {
case _UpdateItemReqDm() when $default != null:
return $default(_that.name,_that.categoryId,_that.clientName,_that.purchaseDate);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _UpdateItemReqDm implements UpdateItemReqDm {
  const _UpdateItemReqDm({this.name, @JsonKey(name: 'category_id') this.categoryId, @JsonKey(name: 'client_name') this.clientName, @JsonKey(name: 'purchase_date') this.purchaseDate});
  factory _UpdateItemReqDm.fromJson(Map<String, dynamic> json) => _$UpdateItemReqDmFromJson(json);

@override final  String? name;
@override@JsonKey(name: 'category_id') final  String? categoryId;
@override@JsonKey(name: 'client_name') final  String? clientName;
@override@JsonKey(name: 'purchase_date') final  DateTime? purchaseDate;

/// Create a copy of UpdateItemReqDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateItemReqDmCopyWith<_UpdateItemReqDm> get copyWith => __$UpdateItemReqDmCopyWithImpl<_UpdateItemReqDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateItemReqDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateItemReqDm&&(identical(other.name, name) || other.name == name)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.clientName, clientName) || other.clientName == clientName)&&(identical(other.purchaseDate, purchaseDate) || other.purchaseDate == purchaseDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,categoryId,clientName,purchaseDate);

@override
String toString() {
  return 'UpdateItemReqDm(name: $name, categoryId: $categoryId, clientName: $clientName, purchaseDate: $purchaseDate)';
}


}

/// @nodoc
abstract mixin class _$UpdateItemReqDmCopyWith<$Res> implements $UpdateItemReqDmCopyWith<$Res> {
  factory _$UpdateItemReqDmCopyWith(_UpdateItemReqDm value, $Res Function(_UpdateItemReqDm) _then) = __$UpdateItemReqDmCopyWithImpl;
@override @useResult
$Res call({
 String? name,@JsonKey(name: 'category_id') String? categoryId,@JsonKey(name: 'client_name') String? clientName,@JsonKey(name: 'purchase_date') DateTime? purchaseDate
});




}
/// @nodoc
class __$UpdateItemReqDmCopyWithImpl<$Res>
    implements _$UpdateItemReqDmCopyWith<$Res> {
  __$UpdateItemReqDmCopyWithImpl(this._self, this._then);

  final _UpdateItemReqDm _self;
  final $Res Function(_UpdateItemReqDm) _then;

/// Create a copy of UpdateItemReqDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? categoryId = freezed,Object? clientName = freezed,Object? purchaseDate = freezed,}) {
  return _then(_UpdateItemReqDm(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,clientName: freezed == clientName ? _self.clientName : clientName // ignore: cast_nullable_to_non_nullable
as String?,purchaseDate: freezed == purchaseDate ? _self.purchaseDate : purchaseDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
