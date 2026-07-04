// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recent_request_res_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecentRequestResDm {

 String get id;@JsonKey(name: 'requester_name') String get requesterName;@JsonKey(name: 'category_name') String get categoryName; RequestStatus get status;@JsonKey(name: 'created_at') DateTime? get createdAt;
/// Create a copy of RecentRequestResDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecentRequestResDmCopyWith<RecentRequestResDm> get copyWith => _$RecentRequestResDmCopyWithImpl<RecentRequestResDm>(this as RecentRequestResDm, _$identity);

  /// Serializes this RecentRequestResDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecentRequestResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.requesterName, requesterName) || other.requesterName == requesterName)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,requesterName,categoryName,status,createdAt);

@override
String toString() {
  return 'RecentRequestResDm(id: $id, requesterName: $requesterName, categoryName: $categoryName, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $RecentRequestResDmCopyWith<$Res>  {
  factory $RecentRequestResDmCopyWith(RecentRequestResDm value, $Res Function(RecentRequestResDm) _then) = _$RecentRequestResDmCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'requester_name') String requesterName,@JsonKey(name: 'category_name') String categoryName, RequestStatus status,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class _$RecentRequestResDmCopyWithImpl<$Res>
    implements $RecentRequestResDmCopyWith<$Res> {
  _$RecentRequestResDmCopyWithImpl(this._self, this._then);

  final RecentRequestResDm _self;
  final $Res Function(RecentRequestResDm) _then;

/// Create a copy of RecentRequestResDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? requesterName = null,Object? categoryName = null,Object? status = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,requesterName: null == requesterName ? _self.requesterName : requesterName // ignore: cast_nullable_to_non_nullable
as String,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RequestStatus,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [RecentRequestResDm].
extension RecentRequestResDmPatterns on RecentRequestResDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecentRequestResDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecentRequestResDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecentRequestResDm value)  $default,){
final _that = this;
switch (_that) {
case _RecentRequestResDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecentRequestResDm value)?  $default,){
final _that = this;
switch (_that) {
case _RecentRequestResDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'requester_name')  String requesterName, @JsonKey(name: 'category_name')  String categoryName,  RequestStatus status, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecentRequestResDm() when $default != null:
return $default(_that.id,_that.requesterName,_that.categoryName,_that.status,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'requester_name')  String requesterName, @JsonKey(name: 'category_name')  String categoryName,  RequestStatus status, @JsonKey(name: 'created_at')  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _RecentRequestResDm():
return $default(_that.id,_that.requesterName,_that.categoryName,_that.status,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'requester_name')  String requesterName, @JsonKey(name: 'category_name')  String categoryName,  RequestStatus status, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _RecentRequestResDm() when $default != null:
return $default(_that.id,_that.requesterName,_that.categoryName,_that.status,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecentRequestResDm implements RecentRequestResDm {
  const _RecentRequestResDm({this.id = '', @JsonKey(name: 'requester_name') this.requesterName = '', @JsonKey(name: 'category_name') this.categoryName = '', this.status = RequestStatus.pendingItApproval, @JsonKey(name: 'created_at') this.createdAt});
  factory _RecentRequestResDm.fromJson(Map<String, dynamic> json) => _$RecentRequestResDmFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey(name: 'requester_name') final  String requesterName;
@override@JsonKey(name: 'category_name') final  String categoryName;
@override@JsonKey() final  RequestStatus status;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;

/// Create a copy of RecentRequestResDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecentRequestResDmCopyWith<_RecentRequestResDm> get copyWith => __$RecentRequestResDmCopyWithImpl<_RecentRequestResDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecentRequestResDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecentRequestResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.requesterName, requesterName) || other.requesterName == requesterName)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,requesterName,categoryName,status,createdAt);

@override
String toString() {
  return 'RecentRequestResDm(id: $id, requesterName: $requesterName, categoryName: $categoryName, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$RecentRequestResDmCopyWith<$Res> implements $RecentRequestResDmCopyWith<$Res> {
  factory _$RecentRequestResDmCopyWith(_RecentRequestResDm value, $Res Function(_RecentRequestResDm) _then) = __$RecentRequestResDmCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'requester_name') String requesterName,@JsonKey(name: 'category_name') String categoryName, RequestStatus status,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class __$RecentRequestResDmCopyWithImpl<$Res>
    implements _$RecentRequestResDmCopyWith<$Res> {
  __$RecentRequestResDmCopyWithImpl(this._self, this._then);

  final _RecentRequestResDm _self;
  final $Res Function(_RecentRequestResDm) _then;

/// Create a copy of RecentRequestResDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? requesterName = null,Object? categoryName = null,Object? status = null,Object? createdAt = freezed,}) {
  return _then(_RecentRequestResDm(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,requesterName: null == requesterName ? _self.requesterName : requesterName // ignore: cast_nullable_to_non_nullable
as String,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RequestStatus,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
