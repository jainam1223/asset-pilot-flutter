// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_summary_res_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RequestSummaryResDm {

 String get id; String get employeeName; String get category; RequestPriority get priority; RequestStatus get status; String get requestedFrom; String get requestedTo; bool get managerApproved;
/// Create a copy of RequestSummaryResDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestSummaryResDmCopyWith<RequestSummaryResDm> get copyWith => _$RequestSummaryResDmCopyWithImpl<RequestSummaryResDm>(this as RequestSummaryResDm, _$identity);

  /// Serializes this RequestSummaryResDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestSummaryResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeName, employeeName) || other.employeeName == employeeName)&&(identical(other.category, category) || other.category == category)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.status, status) || other.status == status)&&(identical(other.requestedFrom, requestedFrom) || other.requestedFrom == requestedFrom)&&(identical(other.requestedTo, requestedTo) || other.requestedTo == requestedTo)&&(identical(other.managerApproved, managerApproved) || other.managerApproved == managerApproved));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,employeeName,category,priority,status,requestedFrom,requestedTo,managerApproved);

@override
String toString() {
  return 'RequestSummaryResDm(id: $id, employeeName: $employeeName, category: $category, priority: $priority, status: $status, requestedFrom: $requestedFrom, requestedTo: $requestedTo, managerApproved: $managerApproved)';
}


}

/// @nodoc
abstract mixin class $RequestSummaryResDmCopyWith<$Res>  {
  factory $RequestSummaryResDmCopyWith(RequestSummaryResDm value, $Res Function(RequestSummaryResDm) _then) = _$RequestSummaryResDmCopyWithImpl;
@useResult
$Res call({
 String id, String employeeName, String category, RequestPriority priority, RequestStatus status, String requestedFrom, String requestedTo, bool managerApproved
});




}
/// @nodoc
class _$RequestSummaryResDmCopyWithImpl<$Res>
    implements $RequestSummaryResDmCopyWith<$Res> {
  _$RequestSummaryResDmCopyWithImpl(this._self, this._then);

  final RequestSummaryResDm _self;
  final $Res Function(RequestSummaryResDm) _then;

/// Create a copy of RequestSummaryResDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? employeeName = null,Object? category = null,Object? priority = null,Object? status = null,Object? requestedFrom = null,Object? requestedTo = null,Object? managerApproved = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeName: null == employeeName ? _self.employeeName : employeeName // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as RequestPriority,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RequestStatus,requestedFrom: null == requestedFrom ? _self.requestedFrom : requestedFrom // ignore: cast_nullable_to_non_nullable
as String,requestedTo: null == requestedTo ? _self.requestedTo : requestedTo // ignore: cast_nullable_to_non_nullable
as String,managerApproved: null == managerApproved ? _self.managerApproved : managerApproved // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestSummaryResDm].
extension RequestSummaryResDmPatterns on RequestSummaryResDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestSummaryResDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestSummaryResDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestSummaryResDm value)  $default,){
final _that = this;
switch (_that) {
case _RequestSummaryResDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestSummaryResDm value)?  $default,){
final _that = this;
switch (_that) {
case _RequestSummaryResDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String employeeName,  String category,  RequestPriority priority,  RequestStatus status,  String requestedFrom,  String requestedTo,  bool managerApproved)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestSummaryResDm() when $default != null:
return $default(_that.id,_that.employeeName,_that.category,_that.priority,_that.status,_that.requestedFrom,_that.requestedTo,_that.managerApproved);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String employeeName,  String category,  RequestPriority priority,  RequestStatus status,  String requestedFrom,  String requestedTo,  bool managerApproved)  $default,) {final _that = this;
switch (_that) {
case _RequestSummaryResDm():
return $default(_that.id,_that.employeeName,_that.category,_that.priority,_that.status,_that.requestedFrom,_that.requestedTo,_that.managerApproved);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String employeeName,  String category,  RequestPriority priority,  RequestStatus status,  String requestedFrom,  String requestedTo,  bool managerApproved)?  $default,) {final _that = this;
switch (_that) {
case _RequestSummaryResDm() when $default != null:
return $default(_that.id,_that.employeeName,_that.category,_that.priority,_that.status,_that.requestedFrom,_that.requestedTo,_that.managerApproved);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestSummaryResDm implements RequestSummaryResDm {
  const _RequestSummaryResDm({this.id = '', this.employeeName = '', this.category = '', this.priority = RequestPriority.medium, this.status = RequestStatus.pendingItApproval, this.requestedFrom = '', this.requestedTo = '', this.managerApproved = false});
  factory _RequestSummaryResDm.fromJson(Map<String, dynamic> json) => _$RequestSummaryResDmFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String employeeName;
@override@JsonKey() final  String category;
@override@JsonKey() final  RequestPriority priority;
@override@JsonKey() final  RequestStatus status;
@override@JsonKey() final  String requestedFrom;
@override@JsonKey() final  String requestedTo;
@override@JsonKey() final  bool managerApproved;

/// Create a copy of RequestSummaryResDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestSummaryResDmCopyWith<_RequestSummaryResDm> get copyWith => __$RequestSummaryResDmCopyWithImpl<_RequestSummaryResDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestSummaryResDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestSummaryResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeName, employeeName) || other.employeeName == employeeName)&&(identical(other.category, category) || other.category == category)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.status, status) || other.status == status)&&(identical(other.requestedFrom, requestedFrom) || other.requestedFrom == requestedFrom)&&(identical(other.requestedTo, requestedTo) || other.requestedTo == requestedTo)&&(identical(other.managerApproved, managerApproved) || other.managerApproved == managerApproved));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,employeeName,category,priority,status,requestedFrom,requestedTo,managerApproved);

@override
String toString() {
  return 'RequestSummaryResDm(id: $id, employeeName: $employeeName, category: $category, priority: $priority, status: $status, requestedFrom: $requestedFrom, requestedTo: $requestedTo, managerApproved: $managerApproved)';
}


}

/// @nodoc
abstract mixin class _$RequestSummaryResDmCopyWith<$Res> implements $RequestSummaryResDmCopyWith<$Res> {
  factory _$RequestSummaryResDmCopyWith(_RequestSummaryResDm value, $Res Function(_RequestSummaryResDm) _then) = __$RequestSummaryResDmCopyWithImpl;
@override @useResult
$Res call({
 String id, String employeeName, String category, RequestPriority priority, RequestStatus status, String requestedFrom, String requestedTo, bool managerApproved
});




}
/// @nodoc
class __$RequestSummaryResDmCopyWithImpl<$Res>
    implements _$RequestSummaryResDmCopyWith<$Res> {
  __$RequestSummaryResDmCopyWithImpl(this._self, this._then);

  final _RequestSummaryResDm _self;
  final $Res Function(_RequestSummaryResDm) _then;

/// Create a copy of RequestSummaryResDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? employeeName = null,Object? category = null,Object? priority = null,Object? status = null,Object? requestedFrom = null,Object? requestedTo = null,Object? managerApproved = null,}) {
  return _then(_RequestSummaryResDm(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeName: null == employeeName ? _self.employeeName : employeeName // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as RequestPriority,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RequestStatus,requestedFrom: null == requestedFrom ? _self.requestedFrom : requestedFrom // ignore: cast_nullable_to_non_nullable
as String,requestedTo: null == requestedTo ? _self.requestedTo : requestedTo // ignore: cast_nullable_to_non_nullable
as String,managerApproved: null == managerApproved ? _self.managerApproved : managerApproved // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
