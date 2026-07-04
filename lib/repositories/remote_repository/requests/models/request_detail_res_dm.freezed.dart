// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_detail_res_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RequestDetailResDm {

 String get id; String get employeeName; String get employeeDepartment; String get category; RequestPriority get priority; RequestStatus get status; String get requestedFrom; String get requestedTo; bool get managerApproved; bool get workFromHome; String get note;
/// Create a copy of RequestDetailResDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestDetailResDmCopyWith<RequestDetailResDm> get copyWith => _$RequestDetailResDmCopyWithImpl<RequestDetailResDm>(this as RequestDetailResDm, _$identity);

  /// Serializes this RequestDetailResDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestDetailResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeName, employeeName) || other.employeeName == employeeName)&&(identical(other.employeeDepartment, employeeDepartment) || other.employeeDepartment == employeeDepartment)&&(identical(other.category, category) || other.category == category)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.status, status) || other.status == status)&&(identical(other.requestedFrom, requestedFrom) || other.requestedFrom == requestedFrom)&&(identical(other.requestedTo, requestedTo) || other.requestedTo == requestedTo)&&(identical(other.managerApproved, managerApproved) || other.managerApproved == managerApproved)&&(identical(other.workFromHome, workFromHome) || other.workFromHome == workFromHome)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,employeeName,employeeDepartment,category,priority,status,requestedFrom,requestedTo,managerApproved,workFromHome,note);

@override
String toString() {
  return 'RequestDetailResDm(id: $id, employeeName: $employeeName, employeeDepartment: $employeeDepartment, category: $category, priority: $priority, status: $status, requestedFrom: $requestedFrom, requestedTo: $requestedTo, managerApproved: $managerApproved, workFromHome: $workFromHome, note: $note)';
}


}

/// @nodoc
abstract mixin class $RequestDetailResDmCopyWith<$Res>  {
  factory $RequestDetailResDmCopyWith(RequestDetailResDm value, $Res Function(RequestDetailResDm) _then) = _$RequestDetailResDmCopyWithImpl;
@useResult
$Res call({
 String id, String employeeName, String employeeDepartment, String category, RequestPriority priority, RequestStatus status, String requestedFrom, String requestedTo, bool managerApproved, bool workFromHome, String note
});




}
/// @nodoc
class _$RequestDetailResDmCopyWithImpl<$Res>
    implements $RequestDetailResDmCopyWith<$Res> {
  _$RequestDetailResDmCopyWithImpl(this._self, this._then);

  final RequestDetailResDm _self;
  final $Res Function(RequestDetailResDm) _then;

/// Create a copy of RequestDetailResDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? employeeName = null,Object? employeeDepartment = null,Object? category = null,Object? priority = null,Object? status = null,Object? requestedFrom = null,Object? requestedTo = null,Object? managerApproved = null,Object? workFromHome = null,Object? note = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeName: null == employeeName ? _self.employeeName : employeeName // ignore: cast_nullable_to_non_nullable
as String,employeeDepartment: null == employeeDepartment ? _self.employeeDepartment : employeeDepartment // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as RequestPriority,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RequestStatus,requestedFrom: null == requestedFrom ? _self.requestedFrom : requestedFrom // ignore: cast_nullable_to_non_nullable
as String,requestedTo: null == requestedTo ? _self.requestedTo : requestedTo // ignore: cast_nullable_to_non_nullable
as String,managerApproved: null == managerApproved ? _self.managerApproved : managerApproved // ignore: cast_nullable_to_non_nullable
as bool,workFromHome: null == workFromHome ? _self.workFromHome : workFromHome // ignore: cast_nullable_to_non_nullable
as bool,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestDetailResDm].
extension RequestDetailResDmPatterns on RequestDetailResDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestDetailResDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestDetailResDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestDetailResDm value)  $default,){
final _that = this;
switch (_that) {
case _RequestDetailResDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestDetailResDm value)?  $default,){
final _that = this;
switch (_that) {
case _RequestDetailResDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String employeeName,  String employeeDepartment,  String category,  RequestPriority priority,  RequestStatus status,  String requestedFrom,  String requestedTo,  bool managerApproved,  bool workFromHome,  String note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestDetailResDm() when $default != null:
return $default(_that.id,_that.employeeName,_that.employeeDepartment,_that.category,_that.priority,_that.status,_that.requestedFrom,_that.requestedTo,_that.managerApproved,_that.workFromHome,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String employeeName,  String employeeDepartment,  String category,  RequestPriority priority,  RequestStatus status,  String requestedFrom,  String requestedTo,  bool managerApproved,  bool workFromHome,  String note)  $default,) {final _that = this;
switch (_that) {
case _RequestDetailResDm():
return $default(_that.id,_that.employeeName,_that.employeeDepartment,_that.category,_that.priority,_that.status,_that.requestedFrom,_that.requestedTo,_that.managerApproved,_that.workFromHome,_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String employeeName,  String employeeDepartment,  String category,  RequestPriority priority,  RequestStatus status,  String requestedFrom,  String requestedTo,  bool managerApproved,  bool workFromHome,  String note)?  $default,) {final _that = this;
switch (_that) {
case _RequestDetailResDm() when $default != null:
return $default(_that.id,_that.employeeName,_that.employeeDepartment,_that.category,_that.priority,_that.status,_that.requestedFrom,_that.requestedTo,_that.managerApproved,_that.workFromHome,_that.note);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestDetailResDm implements RequestDetailResDm {
  const _RequestDetailResDm({this.id = '', this.employeeName = '', this.employeeDepartment = '', this.category = '', this.priority = RequestPriority.medium, this.status = RequestStatus.pendingItApproval, this.requestedFrom = '', this.requestedTo = '', this.managerApproved = false, this.workFromHome = false, this.note = ''});
  factory _RequestDetailResDm.fromJson(Map<String, dynamic> json) => _$RequestDetailResDmFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String employeeName;
@override@JsonKey() final  String employeeDepartment;
@override@JsonKey() final  String category;
@override@JsonKey() final  RequestPriority priority;
@override@JsonKey() final  RequestStatus status;
@override@JsonKey() final  String requestedFrom;
@override@JsonKey() final  String requestedTo;
@override@JsonKey() final  bool managerApproved;
@override@JsonKey() final  bool workFromHome;
@override@JsonKey() final  String note;

/// Create a copy of RequestDetailResDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestDetailResDmCopyWith<_RequestDetailResDm> get copyWith => __$RequestDetailResDmCopyWithImpl<_RequestDetailResDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestDetailResDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestDetailResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeName, employeeName) || other.employeeName == employeeName)&&(identical(other.employeeDepartment, employeeDepartment) || other.employeeDepartment == employeeDepartment)&&(identical(other.category, category) || other.category == category)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.status, status) || other.status == status)&&(identical(other.requestedFrom, requestedFrom) || other.requestedFrom == requestedFrom)&&(identical(other.requestedTo, requestedTo) || other.requestedTo == requestedTo)&&(identical(other.managerApproved, managerApproved) || other.managerApproved == managerApproved)&&(identical(other.workFromHome, workFromHome) || other.workFromHome == workFromHome)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,employeeName,employeeDepartment,category,priority,status,requestedFrom,requestedTo,managerApproved,workFromHome,note);

@override
String toString() {
  return 'RequestDetailResDm(id: $id, employeeName: $employeeName, employeeDepartment: $employeeDepartment, category: $category, priority: $priority, status: $status, requestedFrom: $requestedFrom, requestedTo: $requestedTo, managerApproved: $managerApproved, workFromHome: $workFromHome, note: $note)';
}


}

/// @nodoc
abstract mixin class _$RequestDetailResDmCopyWith<$Res> implements $RequestDetailResDmCopyWith<$Res> {
  factory _$RequestDetailResDmCopyWith(_RequestDetailResDm value, $Res Function(_RequestDetailResDm) _then) = __$RequestDetailResDmCopyWithImpl;
@override @useResult
$Res call({
 String id, String employeeName, String employeeDepartment, String category, RequestPriority priority, RequestStatus status, String requestedFrom, String requestedTo, bool managerApproved, bool workFromHome, String note
});




}
/// @nodoc
class __$RequestDetailResDmCopyWithImpl<$Res>
    implements _$RequestDetailResDmCopyWith<$Res> {
  __$RequestDetailResDmCopyWithImpl(this._self, this._then);

  final _RequestDetailResDm _self;
  final $Res Function(_RequestDetailResDm) _then;

/// Create a copy of RequestDetailResDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? employeeName = null,Object? employeeDepartment = null,Object? category = null,Object? priority = null,Object? status = null,Object? requestedFrom = null,Object? requestedTo = null,Object? managerApproved = null,Object? workFromHome = null,Object? note = null,}) {
  return _then(_RequestDetailResDm(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeName: null == employeeName ? _self.employeeName : employeeName // ignore: cast_nullable_to_non_nullable
as String,employeeDepartment: null == employeeDepartment ? _self.employeeDepartment : employeeDepartment // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as RequestPriority,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RequestStatus,requestedFrom: null == requestedFrom ? _self.requestedFrom : requestedFrom // ignore: cast_nullable_to_non_nullable
as String,requestedTo: null == requestedTo ? _self.requestedTo : requestedTo // ignore: cast_nullable_to_non_nullable
as String,managerApproved: null == managerApproved ? _self.managerApproved : managerApproved // ignore: cast_nullable_to_non_nullable
as bool,workFromHome: null == workFromHome ? _self.workFromHome : workFromHome // ignore: cast_nullable_to_non_nullable
as bool,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
