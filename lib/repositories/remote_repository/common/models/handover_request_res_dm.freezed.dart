// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'handover_request_res_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HandoverRequestResDm {

 String get id; HandoverStatus get status; int? get requestedDurationHours; DateTime? get requestedAt; DateTime? get decidedAt; DateTime? get completedAt; String? get note; DateTime? get createdAt; DateTime? get updatedAt; ItemResDm? get item; UserResDm? get owner; UserResDm? get borrower;
/// Create a copy of HandoverRequestResDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HandoverRequestResDmCopyWith<HandoverRequestResDm> get copyWith => _$HandoverRequestResDmCopyWithImpl<HandoverRequestResDm>(this as HandoverRequestResDm, _$identity);

  /// Serializes this HandoverRequestResDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HandoverRequestResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.requestedDurationHours, requestedDurationHours) || other.requestedDurationHours == requestedDurationHours)&&(identical(other.requestedAt, requestedAt) || other.requestedAt == requestedAt)&&(identical(other.decidedAt, decidedAt) || other.decidedAt == decidedAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.note, note) || other.note == note)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.item, item) || other.item == item)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.borrower, borrower) || other.borrower == borrower));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,requestedDurationHours,requestedAt,decidedAt,completedAt,note,createdAt,updatedAt,item,owner,borrower);

@override
String toString() {
  return 'HandoverRequestResDm(id: $id, status: $status, requestedDurationHours: $requestedDurationHours, requestedAt: $requestedAt, decidedAt: $decidedAt, completedAt: $completedAt, note: $note, createdAt: $createdAt, updatedAt: $updatedAt, item: $item, owner: $owner, borrower: $borrower)';
}


}

/// @nodoc
abstract mixin class $HandoverRequestResDmCopyWith<$Res>  {
  factory $HandoverRequestResDmCopyWith(HandoverRequestResDm value, $Res Function(HandoverRequestResDm) _then) = _$HandoverRequestResDmCopyWithImpl;
@useResult
$Res call({
 String id, HandoverStatus status, int? requestedDurationHours, DateTime? requestedAt, DateTime? decidedAt, DateTime? completedAt, String? note, DateTime? createdAt, DateTime? updatedAt, ItemResDm? item, UserResDm? owner, UserResDm? borrower
});


$ItemResDmCopyWith<$Res>? get item;$UserResDmCopyWith<$Res>? get owner;$UserResDmCopyWith<$Res>? get borrower;

}
/// @nodoc
class _$HandoverRequestResDmCopyWithImpl<$Res>
    implements $HandoverRequestResDmCopyWith<$Res> {
  _$HandoverRequestResDmCopyWithImpl(this._self, this._then);

  final HandoverRequestResDm _self;
  final $Res Function(HandoverRequestResDm) _then;

/// Create a copy of HandoverRequestResDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? status = null,Object? requestedDurationHours = freezed,Object? requestedAt = freezed,Object? decidedAt = freezed,Object? completedAt = freezed,Object? note = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? item = freezed,Object? owner = freezed,Object? borrower = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as HandoverStatus,requestedDurationHours: freezed == requestedDurationHours ? _self.requestedDurationHours : requestedDurationHours // ignore: cast_nullable_to_non_nullable
as int?,requestedAt: freezed == requestedAt ? _self.requestedAt : requestedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,decidedAt: freezed == decidedAt ? _self.decidedAt : decidedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,item: freezed == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as ItemResDm?,owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as UserResDm?,borrower: freezed == borrower ? _self.borrower : borrower // ignore: cast_nullable_to_non_nullable
as UserResDm?,
  ));
}
/// Create a copy of HandoverRequestResDm
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemResDmCopyWith<$Res>? get item {
    if (_self.item == null) {
    return null;
  }

  return $ItemResDmCopyWith<$Res>(_self.item!, (value) {
    return _then(_self.copyWith(item: value));
  });
}/// Create a copy of HandoverRequestResDm
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserResDmCopyWith<$Res>? get owner {
    if (_self.owner == null) {
    return null;
  }

  return $UserResDmCopyWith<$Res>(_self.owner!, (value) {
    return _then(_self.copyWith(owner: value));
  });
}/// Create a copy of HandoverRequestResDm
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserResDmCopyWith<$Res>? get borrower {
    if (_self.borrower == null) {
    return null;
  }

  return $UserResDmCopyWith<$Res>(_self.borrower!, (value) {
    return _then(_self.copyWith(borrower: value));
  });
}
}


/// Adds pattern-matching-related methods to [HandoverRequestResDm].
extension HandoverRequestResDmPatterns on HandoverRequestResDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HandoverRequestResDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HandoverRequestResDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HandoverRequestResDm value)  $default,){
final _that = this;
switch (_that) {
case _HandoverRequestResDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HandoverRequestResDm value)?  $default,){
final _that = this;
switch (_that) {
case _HandoverRequestResDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  HandoverStatus status,  int? requestedDurationHours,  DateTime? requestedAt,  DateTime? decidedAt,  DateTime? completedAt,  String? note,  DateTime? createdAt,  DateTime? updatedAt,  ItemResDm? item,  UserResDm? owner,  UserResDm? borrower)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HandoverRequestResDm() when $default != null:
return $default(_that.id,_that.status,_that.requestedDurationHours,_that.requestedAt,_that.decidedAt,_that.completedAt,_that.note,_that.createdAt,_that.updatedAt,_that.item,_that.owner,_that.borrower);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  HandoverStatus status,  int? requestedDurationHours,  DateTime? requestedAt,  DateTime? decidedAt,  DateTime? completedAt,  String? note,  DateTime? createdAt,  DateTime? updatedAt,  ItemResDm? item,  UserResDm? owner,  UserResDm? borrower)  $default,) {final _that = this;
switch (_that) {
case _HandoverRequestResDm():
return $default(_that.id,_that.status,_that.requestedDurationHours,_that.requestedAt,_that.decidedAt,_that.completedAt,_that.note,_that.createdAt,_that.updatedAt,_that.item,_that.owner,_that.borrower);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  HandoverStatus status,  int? requestedDurationHours,  DateTime? requestedAt,  DateTime? decidedAt,  DateTime? completedAt,  String? note,  DateTime? createdAt,  DateTime? updatedAt,  ItemResDm? item,  UserResDm? owner,  UserResDm? borrower)?  $default,) {final _that = this;
switch (_that) {
case _HandoverRequestResDm() when $default != null:
return $default(_that.id,_that.status,_that.requestedDurationHours,_that.requestedAt,_that.decidedAt,_that.completedAt,_that.note,_that.createdAt,_that.updatedAt,_that.item,_that.owner,_that.borrower);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HandoverRequestResDm implements HandoverRequestResDm {
  const _HandoverRequestResDm({this.id = '', this.status = HandoverStatus.requested, this.requestedDurationHours, this.requestedAt, this.decidedAt, this.completedAt, this.note, this.createdAt, this.updatedAt, this.item, this.owner, this.borrower});
  factory _HandoverRequestResDm.fromJson(Map<String, dynamic> json) => _$HandoverRequestResDmFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  HandoverStatus status;
@override final  int? requestedDurationHours;
@override final  DateTime? requestedAt;
@override final  DateTime? decidedAt;
@override final  DateTime? completedAt;
@override final  String? note;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override final  ItemResDm? item;
@override final  UserResDm? owner;
@override final  UserResDm? borrower;

/// Create a copy of HandoverRequestResDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HandoverRequestResDmCopyWith<_HandoverRequestResDm> get copyWith => __$HandoverRequestResDmCopyWithImpl<_HandoverRequestResDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HandoverRequestResDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HandoverRequestResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.requestedDurationHours, requestedDurationHours) || other.requestedDurationHours == requestedDurationHours)&&(identical(other.requestedAt, requestedAt) || other.requestedAt == requestedAt)&&(identical(other.decidedAt, decidedAt) || other.decidedAt == decidedAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.note, note) || other.note == note)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.item, item) || other.item == item)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.borrower, borrower) || other.borrower == borrower));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,requestedDurationHours,requestedAt,decidedAt,completedAt,note,createdAt,updatedAt,item,owner,borrower);

@override
String toString() {
  return 'HandoverRequestResDm(id: $id, status: $status, requestedDurationHours: $requestedDurationHours, requestedAt: $requestedAt, decidedAt: $decidedAt, completedAt: $completedAt, note: $note, createdAt: $createdAt, updatedAt: $updatedAt, item: $item, owner: $owner, borrower: $borrower)';
}


}

/// @nodoc
abstract mixin class _$HandoverRequestResDmCopyWith<$Res> implements $HandoverRequestResDmCopyWith<$Res> {
  factory _$HandoverRequestResDmCopyWith(_HandoverRequestResDm value, $Res Function(_HandoverRequestResDm) _then) = __$HandoverRequestResDmCopyWithImpl;
@override @useResult
$Res call({
 String id, HandoverStatus status, int? requestedDurationHours, DateTime? requestedAt, DateTime? decidedAt, DateTime? completedAt, String? note, DateTime? createdAt, DateTime? updatedAt, ItemResDm? item, UserResDm? owner, UserResDm? borrower
});


@override $ItemResDmCopyWith<$Res>? get item;@override $UserResDmCopyWith<$Res>? get owner;@override $UserResDmCopyWith<$Res>? get borrower;

}
/// @nodoc
class __$HandoverRequestResDmCopyWithImpl<$Res>
    implements _$HandoverRequestResDmCopyWith<$Res> {
  __$HandoverRequestResDmCopyWithImpl(this._self, this._then);

  final _HandoverRequestResDm _self;
  final $Res Function(_HandoverRequestResDm) _then;

/// Create a copy of HandoverRequestResDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? status = null,Object? requestedDurationHours = freezed,Object? requestedAt = freezed,Object? decidedAt = freezed,Object? completedAt = freezed,Object? note = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? item = freezed,Object? owner = freezed,Object? borrower = freezed,}) {
  return _then(_HandoverRequestResDm(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as HandoverStatus,requestedDurationHours: freezed == requestedDurationHours ? _self.requestedDurationHours : requestedDurationHours // ignore: cast_nullable_to_non_nullable
as int?,requestedAt: freezed == requestedAt ? _self.requestedAt : requestedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,decidedAt: freezed == decidedAt ? _self.decidedAt : decidedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,item: freezed == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as ItemResDm?,owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as UserResDm?,borrower: freezed == borrower ? _self.borrower : borrower // ignore: cast_nullable_to_non_nullable
as UserResDm?,
  ));
}

/// Create a copy of HandoverRequestResDm
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemResDmCopyWith<$Res>? get item {
    if (_self.item == null) {
    return null;
  }

  return $ItemResDmCopyWith<$Res>(_self.item!, (value) {
    return _then(_self.copyWith(item: value));
  });
}/// Create a copy of HandoverRequestResDm
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserResDmCopyWith<$Res>? get owner {
    if (_self.owner == null) {
    return null;
  }

  return $UserResDmCopyWith<$Res>(_self.owner!, (value) {
    return _then(_self.copyWith(owner: value));
  });
}/// Create a copy of HandoverRequestResDm
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserResDmCopyWith<$Res>? get borrower {
    if (_self.borrower == null) {
    return null;
  }

  return $UserResDmCopyWith<$Res>(_self.borrower!, (value) {
    return _then(_self.copyWith(borrower: value));
  });
}
}

// dart format on
