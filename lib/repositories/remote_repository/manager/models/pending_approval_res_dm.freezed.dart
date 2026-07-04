// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pending_approval_res_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PendingApprovalResDm {

 String get id; String get employeeName; String get category; RequestPriority get priority; String get requestedFrom; String get requestedTo; String get note; MgrApprovalStatus get mgrApprovalStatus; String? get decisionNote;
/// Create a copy of PendingApprovalResDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PendingApprovalResDmCopyWith<PendingApprovalResDm> get copyWith => _$PendingApprovalResDmCopyWithImpl<PendingApprovalResDm>(this as PendingApprovalResDm, _$identity);

  /// Serializes this PendingApprovalResDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PendingApprovalResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeName, employeeName) || other.employeeName == employeeName)&&(identical(other.category, category) || other.category == category)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.requestedFrom, requestedFrom) || other.requestedFrom == requestedFrom)&&(identical(other.requestedTo, requestedTo) || other.requestedTo == requestedTo)&&(identical(other.note, note) || other.note == note)&&(identical(other.mgrApprovalStatus, mgrApprovalStatus) || other.mgrApprovalStatus == mgrApprovalStatus)&&(identical(other.decisionNote, decisionNote) || other.decisionNote == decisionNote));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,employeeName,category,priority,requestedFrom,requestedTo,note,mgrApprovalStatus,decisionNote);

@override
String toString() {
  return 'PendingApprovalResDm(id: $id, employeeName: $employeeName, category: $category, priority: $priority, requestedFrom: $requestedFrom, requestedTo: $requestedTo, note: $note, mgrApprovalStatus: $mgrApprovalStatus, decisionNote: $decisionNote)';
}


}

/// @nodoc
abstract mixin class $PendingApprovalResDmCopyWith<$Res>  {
  factory $PendingApprovalResDmCopyWith(PendingApprovalResDm value, $Res Function(PendingApprovalResDm) _then) = _$PendingApprovalResDmCopyWithImpl;
@useResult
$Res call({
 String id, String employeeName, String category, RequestPriority priority, String requestedFrom, String requestedTo, String note, MgrApprovalStatus mgrApprovalStatus, String? decisionNote
});




}
/// @nodoc
class _$PendingApprovalResDmCopyWithImpl<$Res>
    implements $PendingApprovalResDmCopyWith<$Res> {
  _$PendingApprovalResDmCopyWithImpl(this._self, this._then);

  final PendingApprovalResDm _self;
  final $Res Function(PendingApprovalResDm) _then;

/// Create a copy of PendingApprovalResDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? employeeName = null,Object? category = null,Object? priority = null,Object? requestedFrom = null,Object? requestedTo = null,Object? note = null,Object? mgrApprovalStatus = null,Object? decisionNote = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeName: null == employeeName ? _self.employeeName : employeeName // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as RequestPriority,requestedFrom: null == requestedFrom ? _self.requestedFrom : requestedFrom // ignore: cast_nullable_to_non_nullable
as String,requestedTo: null == requestedTo ? _self.requestedTo : requestedTo // ignore: cast_nullable_to_non_nullable
as String,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,mgrApprovalStatus: null == mgrApprovalStatus ? _self.mgrApprovalStatus : mgrApprovalStatus // ignore: cast_nullable_to_non_nullable
as MgrApprovalStatus,decisionNote: freezed == decisionNote ? _self.decisionNote : decisionNote // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PendingApprovalResDm].
extension PendingApprovalResDmPatterns on PendingApprovalResDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PendingApprovalResDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PendingApprovalResDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PendingApprovalResDm value)  $default,){
final _that = this;
switch (_that) {
case _PendingApprovalResDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PendingApprovalResDm value)?  $default,){
final _that = this;
switch (_that) {
case _PendingApprovalResDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String employeeName,  String category,  RequestPriority priority,  String requestedFrom,  String requestedTo,  String note,  MgrApprovalStatus mgrApprovalStatus,  String? decisionNote)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PendingApprovalResDm() when $default != null:
return $default(_that.id,_that.employeeName,_that.category,_that.priority,_that.requestedFrom,_that.requestedTo,_that.note,_that.mgrApprovalStatus,_that.decisionNote);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String employeeName,  String category,  RequestPriority priority,  String requestedFrom,  String requestedTo,  String note,  MgrApprovalStatus mgrApprovalStatus,  String? decisionNote)  $default,) {final _that = this;
switch (_that) {
case _PendingApprovalResDm():
return $default(_that.id,_that.employeeName,_that.category,_that.priority,_that.requestedFrom,_that.requestedTo,_that.note,_that.mgrApprovalStatus,_that.decisionNote);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String employeeName,  String category,  RequestPriority priority,  String requestedFrom,  String requestedTo,  String note,  MgrApprovalStatus mgrApprovalStatus,  String? decisionNote)?  $default,) {final _that = this;
switch (_that) {
case _PendingApprovalResDm() when $default != null:
return $default(_that.id,_that.employeeName,_that.category,_that.priority,_that.requestedFrom,_that.requestedTo,_that.note,_that.mgrApprovalStatus,_that.decisionNote);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PendingApprovalResDm implements PendingApprovalResDm {
  const _PendingApprovalResDm({this.id = '', this.employeeName = '', this.category = '', this.priority = RequestPriority.medium, this.requestedFrom = '', this.requestedTo = '', this.note = '', this.mgrApprovalStatus = MgrApprovalStatus.pending, this.decisionNote});
  factory _PendingApprovalResDm.fromJson(Map<String, dynamic> json) => _$PendingApprovalResDmFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String employeeName;
@override@JsonKey() final  String category;
@override@JsonKey() final  RequestPriority priority;
@override@JsonKey() final  String requestedFrom;
@override@JsonKey() final  String requestedTo;
@override@JsonKey() final  String note;
@override@JsonKey() final  MgrApprovalStatus mgrApprovalStatus;
@override final  String? decisionNote;

/// Create a copy of PendingApprovalResDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PendingApprovalResDmCopyWith<_PendingApprovalResDm> get copyWith => __$PendingApprovalResDmCopyWithImpl<_PendingApprovalResDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PendingApprovalResDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PendingApprovalResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeName, employeeName) || other.employeeName == employeeName)&&(identical(other.category, category) || other.category == category)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.requestedFrom, requestedFrom) || other.requestedFrom == requestedFrom)&&(identical(other.requestedTo, requestedTo) || other.requestedTo == requestedTo)&&(identical(other.note, note) || other.note == note)&&(identical(other.mgrApprovalStatus, mgrApprovalStatus) || other.mgrApprovalStatus == mgrApprovalStatus)&&(identical(other.decisionNote, decisionNote) || other.decisionNote == decisionNote));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,employeeName,category,priority,requestedFrom,requestedTo,note,mgrApprovalStatus,decisionNote);

@override
String toString() {
  return 'PendingApprovalResDm(id: $id, employeeName: $employeeName, category: $category, priority: $priority, requestedFrom: $requestedFrom, requestedTo: $requestedTo, note: $note, mgrApprovalStatus: $mgrApprovalStatus, decisionNote: $decisionNote)';
}


}

/// @nodoc
abstract mixin class _$PendingApprovalResDmCopyWith<$Res> implements $PendingApprovalResDmCopyWith<$Res> {
  factory _$PendingApprovalResDmCopyWith(_PendingApprovalResDm value, $Res Function(_PendingApprovalResDm) _then) = __$PendingApprovalResDmCopyWithImpl;
@override @useResult
$Res call({
 String id, String employeeName, String category, RequestPriority priority, String requestedFrom, String requestedTo, String note, MgrApprovalStatus mgrApprovalStatus, String? decisionNote
});




}
/// @nodoc
class __$PendingApprovalResDmCopyWithImpl<$Res>
    implements _$PendingApprovalResDmCopyWith<$Res> {
  __$PendingApprovalResDmCopyWithImpl(this._self, this._then);

  final _PendingApprovalResDm _self;
  final $Res Function(_PendingApprovalResDm) _then;

/// Create a copy of PendingApprovalResDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? employeeName = null,Object? category = null,Object? priority = null,Object? requestedFrom = null,Object? requestedTo = null,Object? note = null,Object? mgrApprovalStatus = null,Object? decisionNote = freezed,}) {
  return _then(_PendingApprovalResDm(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeName: null == employeeName ? _self.employeeName : employeeName // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as RequestPriority,requestedFrom: null == requestedFrom ? _self.requestedFrom : requestedFrom // ignore: cast_nullable_to_non_nullable
as String,requestedTo: null == requestedTo ? _self.requestedTo : requestedTo // ignore: cast_nullable_to_non_nullable
as String,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,mgrApprovalStatus: null == mgrApprovalStatus ? _self.mgrApprovalStatus : mgrApprovalStatus // ignore: cast_nullable_to_non_nullable
as MgrApprovalStatus,decisionNote: freezed == decisionNote ? _self.decisionNote : decisionNote // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
