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

 String get id;@JsonKey(name: 'requester_id') String get requesterId;@JsonKey(name: 'category_id') String get categoryId;@JsonKey(name: 'assigned_item_id') String? get assignedItemId;@JsonKey(name: 'requested_from') DateTime? get requestedFrom;@JsonKey(name: 'requested_to') DateTime? get requestedTo;@JsonKey(name: 'assigned_from') DateTime? get assignedFrom;@JsonKey(name: 'assigned_to') DateTime? get assignedTo; RequestStatus get status; RequestPriority get priority; String? get note;@JsonKey(name: 'requires_mgr_approval') bool get requiresMgrApproval;@JsonKey(name: 'mgr_approval_status') MgrApprovalStatus get mgrApprovalStatus;@JsonKey(name: 'manager_id') String? get managerId;@JsonKey(name: 'is_wfh') bool get isWfh;@JsonKey(name: 'ship_tracking_url') String? get shipTrackingUrl;@JsonKey(name: 'return_tracking_url') String? get returnTrackingUrl;@JsonKey(name: 'is_client_direct') bool get isClientDirect;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'category_name') String get categoryName;@JsonKey(name: 'requester_name') String get requesterName;
/// Create a copy of RequestSummaryResDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestSummaryResDmCopyWith<RequestSummaryResDm> get copyWith => _$RequestSummaryResDmCopyWithImpl<RequestSummaryResDm>(this as RequestSummaryResDm, _$identity);

  /// Serializes this RequestSummaryResDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestSummaryResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.requesterId, requesterId) || other.requesterId == requesterId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.assignedItemId, assignedItemId) || other.assignedItemId == assignedItemId)&&(identical(other.requestedFrom, requestedFrom) || other.requestedFrom == requestedFrom)&&(identical(other.requestedTo, requestedTo) || other.requestedTo == requestedTo)&&(identical(other.assignedFrom, assignedFrom) || other.assignedFrom == assignedFrom)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo)&&(identical(other.status, status) || other.status == status)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.note, note) || other.note == note)&&(identical(other.requiresMgrApproval, requiresMgrApproval) || other.requiresMgrApproval == requiresMgrApproval)&&(identical(other.mgrApprovalStatus, mgrApprovalStatus) || other.mgrApprovalStatus == mgrApprovalStatus)&&(identical(other.managerId, managerId) || other.managerId == managerId)&&(identical(other.isWfh, isWfh) || other.isWfh == isWfh)&&(identical(other.shipTrackingUrl, shipTrackingUrl) || other.shipTrackingUrl == shipTrackingUrl)&&(identical(other.returnTrackingUrl, returnTrackingUrl) || other.returnTrackingUrl == returnTrackingUrl)&&(identical(other.isClientDirect, isClientDirect) || other.isClientDirect == isClientDirect)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.requesterName, requesterName) || other.requesterName == requesterName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,requesterId,categoryId,assignedItemId,requestedFrom,requestedTo,assignedFrom,assignedTo,status,priority,note,requiresMgrApproval,mgrApprovalStatus,managerId,isWfh,shipTrackingUrl,returnTrackingUrl,isClientDirect,createdAt,categoryName,requesterName]);

@override
String toString() {
  return 'RequestSummaryResDm(id: $id, requesterId: $requesterId, categoryId: $categoryId, assignedItemId: $assignedItemId, requestedFrom: $requestedFrom, requestedTo: $requestedTo, assignedFrom: $assignedFrom, assignedTo: $assignedTo, status: $status, priority: $priority, note: $note, requiresMgrApproval: $requiresMgrApproval, mgrApprovalStatus: $mgrApprovalStatus, managerId: $managerId, isWfh: $isWfh, shipTrackingUrl: $shipTrackingUrl, returnTrackingUrl: $returnTrackingUrl, isClientDirect: $isClientDirect, createdAt: $createdAt, categoryName: $categoryName, requesterName: $requesterName)';
}


}

/// @nodoc
abstract mixin class $RequestSummaryResDmCopyWith<$Res>  {
  factory $RequestSummaryResDmCopyWith(RequestSummaryResDm value, $Res Function(RequestSummaryResDm) _then) = _$RequestSummaryResDmCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'requester_id') String requesterId,@JsonKey(name: 'category_id') String categoryId,@JsonKey(name: 'assigned_item_id') String? assignedItemId,@JsonKey(name: 'requested_from') DateTime? requestedFrom,@JsonKey(name: 'requested_to') DateTime? requestedTo,@JsonKey(name: 'assigned_from') DateTime? assignedFrom,@JsonKey(name: 'assigned_to') DateTime? assignedTo, RequestStatus status, RequestPriority priority, String? note,@JsonKey(name: 'requires_mgr_approval') bool requiresMgrApproval,@JsonKey(name: 'mgr_approval_status') MgrApprovalStatus mgrApprovalStatus,@JsonKey(name: 'manager_id') String? managerId,@JsonKey(name: 'is_wfh') bool isWfh,@JsonKey(name: 'ship_tracking_url') String? shipTrackingUrl,@JsonKey(name: 'return_tracking_url') String? returnTrackingUrl,@JsonKey(name: 'is_client_direct') bool isClientDirect,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'category_name') String categoryName,@JsonKey(name: 'requester_name') String requesterName
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? requesterId = null,Object? categoryId = null,Object? assignedItemId = freezed,Object? requestedFrom = freezed,Object? requestedTo = freezed,Object? assignedFrom = freezed,Object? assignedTo = freezed,Object? status = null,Object? priority = null,Object? note = freezed,Object? requiresMgrApproval = null,Object? mgrApprovalStatus = null,Object? managerId = freezed,Object? isWfh = null,Object? shipTrackingUrl = freezed,Object? returnTrackingUrl = freezed,Object? isClientDirect = null,Object? createdAt = freezed,Object? categoryName = null,Object? requesterName = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,requesterId: null == requesterId ? _self.requesterId : requesterId // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,assignedItemId: freezed == assignedItemId ? _self.assignedItemId : assignedItemId // ignore: cast_nullable_to_non_nullable
as String?,requestedFrom: freezed == requestedFrom ? _self.requestedFrom : requestedFrom // ignore: cast_nullable_to_non_nullable
as DateTime?,requestedTo: freezed == requestedTo ? _self.requestedTo : requestedTo // ignore: cast_nullable_to_non_nullable
as DateTime?,assignedFrom: freezed == assignedFrom ? _self.assignedFrom : assignedFrom // ignore: cast_nullable_to_non_nullable
as DateTime?,assignedTo: freezed == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RequestStatus,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as RequestPriority,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,requiresMgrApproval: null == requiresMgrApproval ? _self.requiresMgrApproval : requiresMgrApproval // ignore: cast_nullable_to_non_nullable
as bool,mgrApprovalStatus: null == mgrApprovalStatus ? _self.mgrApprovalStatus : mgrApprovalStatus // ignore: cast_nullable_to_non_nullable
as MgrApprovalStatus,managerId: freezed == managerId ? _self.managerId : managerId // ignore: cast_nullable_to_non_nullable
as String?,isWfh: null == isWfh ? _self.isWfh : isWfh // ignore: cast_nullable_to_non_nullable
as bool,shipTrackingUrl: freezed == shipTrackingUrl ? _self.shipTrackingUrl : shipTrackingUrl // ignore: cast_nullable_to_non_nullable
as String?,returnTrackingUrl: freezed == returnTrackingUrl ? _self.returnTrackingUrl : returnTrackingUrl // ignore: cast_nullable_to_non_nullable
as String?,isClientDirect: null == isClientDirect ? _self.isClientDirect : isClientDirect // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,requesterName: null == requesterName ? _self.requesterName : requesterName // ignore: cast_nullable_to_non_nullable
as String,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'requester_id')  String requesterId, @JsonKey(name: 'category_id')  String categoryId, @JsonKey(name: 'assigned_item_id')  String? assignedItemId, @JsonKey(name: 'requested_from')  DateTime? requestedFrom, @JsonKey(name: 'requested_to')  DateTime? requestedTo, @JsonKey(name: 'assigned_from')  DateTime? assignedFrom, @JsonKey(name: 'assigned_to')  DateTime? assignedTo,  RequestStatus status,  RequestPriority priority,  String? note, @JsonKey(name: 'requires_mgr_approval')  bool requiresMgrApproval, @JsonKey(name: 'mgr_approval_status')  MgrApprovalStatus mgrApprovalStatus, @JsonKey(name: 'manager_id')  String? managerId, @JsonKey(name: 'is_wfh')  bool isWfh, @JsonKey(name: 'ship_tracking_url')  String? shipTrackingUrl, @JsonKey(name: 'return_tracking_url')  String? returnTrackingUrl, @JsonKey(name: 'is_client_direct')  bool isClientDirect, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'category_name')  String categoryName, @JsonKey(name: 'requester_name')  String requesterName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestSummaryResDm() when $default != null:
return $default(_that.id,_that.requesterId,_that.categoryId,_that.assignedItemId,_that.requestedFrom,_that.requestedTo,_that.assignedFrom,_that.assignedTo,_that.status,_that.priority,_that.note,_that.requiresMgrApproval,_that.mgrApprovalStatus,_that.managerId,_that.isWfh,_that.shipTrackingUrl,_that.returnTrackingUrl,_that.isClientDirect,_that.createdAt,_that.categoryName,_that.requesterName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'requester_id')  String requesterId, @JsonKey(name: 'category_id')  String categoryId, @JsonKey(name: 'assigned_item_id')  String? assignedItemId, @JsonKey(name: 'requested_from')  DateTime? requestedFrom, @JsonKey(name: 'requested_to')  DateTime? requestedTo, @JsonKey(name: 'assigned_from')  DateTime? assignedFrom, @JsonKey(name: 'assigned_to')  DateTime? assignedTo,  RequestStatus status,  RequestPriority priority,  String? note, @JsonKey(name: 'requires_mgr_approval')  bool requiresMgrApproval, @JsonKey(name: 'mgr_approval_status')  MgrApprovalStatus mgrApprovalStatus, @JsonKey(name: 'manager_id')  String? managerId, @JsonKey(name: 'is_wfh')  bool isWfh, @JsonKey(name: 'ship_tracking_url')  String? shipTrackingUrl, @JsonKey(name: 'return_tracking_url')  String? returnTrackingUrl, @JsonKey(name: 'is_client_direct')  bool isClientDirect, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'category_name')  String categoryName, @JsonKey(name: 'requester_name')  String requesterName)  $default,) {final _that = this;
switch (_that) {
case _RequestSummaryResDm():
return $default(_that.id,_that.requesterId,_that.categoryId,_that.assignedItemId,_that.requestedFrom,_that.requestedTo,_that.assignedFrom,_that.assignedTo,_that.status,_that.priority,_that.note,_that.requiresMgrApproval,_that.mgrApprovalStatus,_that.managerId,_that.isWfh,_that.shipTrackingUrl,_that.returnTrackingUrl,_that.isClientDirect,_that.createdAt,_that.categoryName,_that.requesterName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'requester_id')  String requesterId, @JsonKey(name: 'category_id')  String categoryId, @JsonKey(name: 'assigned_item_id')  String? assignedItemId, @JsonKey(name: 'requested_from')  DateTime? requestedFrom, @JsonKey(name: 'requested_to')  DateTime? requestedTo, @JsonKey(name: 'assigned_from')  DateTime? assignedFrom, @JsonKey(name: 'assigned_to')  DateTime? assignedTo,  RequestStatus status,  RequestPriority priority,  String? note, @JsonKey(name: 'requires_mgr_approval')  bool requiresMgrApproval, @JsonKey(name: 'mgr_approval_status')  MgrApprovalStatus mgrApprovalStatus, @JsonKey(name: 'manager_id')  String? managerId, @JsonKey(name: 'is_wfh')  bool isWfh, @JsonKey(name: 'ship_tracking_url')  String? shipTrackingUrl, @JsonKey(name: 'return_tracking_url')  String? returnTrackingUrl, @JsonKey(name: 'is_client_direct')  bool isClientDirect, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'category_name')  String categoryName, @JsonKey(name: 'requester_name')  String requesterName)?  $default,) {final _that = this;
switch (_that) {
case _RequestSummaryResDm() when $default != null:
return $default(_that.id,_that.requesterId,_that.categoryId,_that.assignedItemId,_that.requestedFrom,_that.requestedTo,_that.assignedFrom,_that.assignedTo,_that.status,_that.priority,_that.note,_that.requiresMgrApproval,_that.mgrApprovalStatus,_that.managerId,_that.isWfh,_that.shipTrackingUrl,_that.returnTrackingUrl,_that.isClientDirect,_that.createdAt,_that.categoryName,_that.requesterName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestSummaryResDm implements RequestSummaryResDm {
  const _RequestSummaryResDm({this.id = '', @JsonKey(name: 'requester_id') this.requesterId = '', @JsonKey(name: 'category_id') this.categoryId = '', @JsonKey(name: 'assigned_item_id') this.assignedItemId, @JsonKey(name: 'requested_from') this.requestedFrom, @JsonKey(name: 'requested_to') this.requestedTo, @JsonKey(name: 'assigned_from') this.assignedFrom, @JsonKey(name: 'assigned_to') this.assignedTo, this.status = RequestStatus.pendingItApproval, this.priority = RequestPriority.medium, this.note, @JsonKey(name: 'requires_mgr_approval') this.requiresMgrApproval = false, @JsonKey(name: 'mgr_approval_status') this.mgrApprovalStatus = MgrApprovalStatus.notRequired, @JsonKey(name: 'manager_id') this.managerId, @JsonKey(name: 'is_wfh') this.isWfh = false, @JsonKey(name: 'ship_tracking_url') this.shipTrackingUrl, @JsonKey(name: 'return_tracking_url') this.returnTrackingUrl, @JsonKey(name: 'is_client_direct') this.isClientDirect = false, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'category_name') this.categoryName = '', @JsonKey(name: 'requester_name') this.requesterName = ''});
  factory _RequestSummaryResDm.fromJson(Map<String, dynamic> json) => _$RequestSummaryResDmFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey(name: 'requester_id') final  String requesterId;
@override@JsonKey(name: 'category_id') final  String categoryId;
@override@JsonKey(name: 'assigned_item_id') final  String? assignedItemId;
@override@JsonKey(name: 'requested_from') final  DateTime? requestedFrom;
@override@JsonKey(name: 'requested_to') final  DateTime? requestedTo;
@override@JsonKey(name: 'assigned_from') final  DateTime? assignedFrom;
@override@JsonKey(name: 'assigned_to') final  DateTime? assignedTo;
@override@JsonKey() final  RequestStatus status;
@override@JsonKey() final  RequestPriority priority;
@override final  String? note;
@override@JsonKey(name: 'requires_mgr_approval') final  bool requiresMgrApproval;
@override@JsonKey(name: 'mgr_approval_status') final  MgrApprovalStatus mgrApprovalStatus;
@override@JsonKey(name: 'manager_id') final  String? managerId;
@override@JsonKey(name: 'is_wfh') final  bool isWfh;
@override@JsonKey(name: 'ship_tracking_url') final  String? shipTrackingUrl;
@override@JsonKey(name: 'return_tracking_url') final  String? returnTrackingUrl;
@override@JsonKey(name: 'is_client_direct') final  bool isClientDirect;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'category_name') final  String categoryName;
@override@JsonKey(name: 'requester_name') final  String requesterName;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestSummaryResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.requesterId, requesterId) || other.requesterId == requesterId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.assignedItemId, assignedItemId) || other.assignedItemId == assignedItemId)&&(identical(other.requestedFrom, requestedFrom) || other.requestedFrom == requestedFrom)&&(identical(other.requestedTo, requestedTo) || other.requestedTo == requestedTo)&&(identical(other.assignedFrom, assignedFrom) || other.assignedFrom == assignedFrom)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo)&&(identical(other.status, status) || other.status == status)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.note, note) || other.note == note)&&(identical(other.requiresMgrApproval, requiresMgrApproval) || other.requiresMgrApproval == requiresMgrApproval)&&(identical(other.mgrApprovalStatus, mgrApprovalStatus) || other.mgrApprovalStatus == mgrApprovalStatus)&&(identical(other.managerId, managerId) || other.managerId == managerId)&&(identical(other.isWfh, isWfh) || other.isWfh == isWfh)&&(identical(other.shipTrackingUrl, shipTrackingUrl) || other.shipTrackingUrl == shipTrackingUrl)&&(identical(other.returnTrackingUrl, returnTrackingUrl) || other.returnTrackingUrl == returnTrackingUrl)&&(identical(other.isClientDirect, isClientDirect) || other.isClientDirect == isClientDirect)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.requesterName, requesterName) || other.requesterName == requesterName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,requesterId,categoryId,assignedItemId,requestedFrom,requestedTo,assignedFrom,assignedTo,status,priority,note,requiresMgrApproval,mgrApprovalStatus,managerId,isWfh,shipTrackingUrl,returnTrackingUrl,isClientDirect,createdAt,categoryName,requesterName]);

@override
String toString() {
  return 'RequestSummaryResDm(id: $id, requesterId: $requesterId, categoryId: $categoryId, assignedItemId: $assignedItemId, requestedFrom: $requestedFrom, requestedTo: $requestedTo, assignedFrom: $assignedFrom, assignedTo: $assignedTo, status: $status, priority: $priority, note: $note, requiresMgrApproval: $requiresMgrApproval, mgrApprovalStatus: $mgrApprovalStatus, managerId: $managerId, isWfh: $isWfh, shipTrackingUrl: $shipTrackingUrl, returnTrackingUrl: $returnTrackingUrl, isClientDirect: $isClientDirect, createdAt: $createdAt, categoryName: $categoryName, requesterName: $requesterName)';
}


}

/// @nodoc
abstract mixin class _$RequestSummaryResDmCopyWith<$Res> implements $RequestSummaryResDmCopyWith<$Res> {
  factory _$RequestSummaryResDmCopyWith(_RequestSummaryResDm value, $Res Function(_RequestSummaryResDm) _then) = __$RequestSummaryResDmCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'requester_id') String requesterId,@JsonKey(name: 'category_id') String categoryId,@JsonKey(name: 'assigned_item_id') String? assignedItemId,@JsonKey(name: 'requested_from') DateTime? requestedFrom,@JsonKey(name: 'requested_to') DateTime? requestedTo,@JsonKey(name: 'assigned_from') DateTime? assignedFrom,@JsonKey(name: 'assigned_to') DateTime? assignedTo, RequestStatus status, RequestPriority priority, String? note,@JsonKey(name: 'requires_mgr_approval') bool requiresMgrApproval,@JsonKey(name: 'mgr_approval_status') MgrApprovalStatus mgrApprovalStatus,@JsonKey(name: 'manager_id') String? managerId,@JsonKey(name: 'is_wfh') bool isWfh,@JsonKey(name: 'ship_tracking_url') String? shipTrackingUrl,@JsonKey(name: 'return_tracking_url') String? returnTrackingUrl,@JsonKey(name: 'is_client_direct') bool isClientDirect,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'category_name') String categoryName,@JsonKey(name: 'requester_name') String requesterName
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? requesterId = null,Object? categoryId = null,Object? assignedItemId = freezed,Object? requestedFrom = freezed,Object? requestedTo = freezed,Object? assignedFrom = freezed,Object? assignedTo = freezed,Object? status = null,Object? priority = null,Object? note = freezed,Object? requiresMgrApproval = null,Object? mgrApprovalStatus = null,Object? managerId = freezed,Object? isWfh = null,Object? shipTrackingUrl = freezed,Object? returnTrackingUrl = freezed,Object? isClientDirect = null,Object? createdAt = freezed,Object? categoryName = null,Object? requesterName = null,}) {
  return _then(_RequestSummaryResDm(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,requesterId: null == requesterId ? _self.requesterId : requesterId // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,assignedItemId: freezed == assignedItemId ? _self.assignedItemId : assignedItemId // ignore: cast_nullable_to_non_nullable
as String?,requestedFrom: freezed == requestedFrom ? _self.requestedFrom : requestedFrom // ignore: cast_nullable_to_non_nullable
as DateTime?,requestedTo: freezed == requestedTo ? _self.requestedTo : requestedTo // ignore: cast_nullable_to_non_nullable
as DateTime?,assignedFrom: freezed == assignedFrom ? _self.assignedFrom : assignedFrom // ignore: cast_nullable_to_non_nullable
as DateTime?,assignedTo: freezed == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RequestStatus,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as RequestPriority,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,requiresMgrApproval: null == requiresMgrApproval ? _self.requiresMgrApproval : requiresMgrApproval // ignore: cast_nullable_to_non_nullable
as bool,mgrApprovalStatus: null == mgrApprovalStatus ? _self.mgrApprovalStatus : mgrApprovalStatus // ignore: cast_nullable_to_non_nullable
as MgrApprovalStatus,managerId: freezed == managerId ? _self.managerId : managerId // ignore: cast_nullable_to_non_nullable
as String?,isWfh: null == isWfh ? _self.isWfh : isWfh // ignore: cast_nullable_to_non_nullable
as bool,shipTrackingUrl: freezed == shipTrackingUrl ? _self.shipTrackingUrl : shipTrackingUrl // ignore: cast_nullable_to_non_nullable
as String?,returnTrackingUrl: freezed == returnTrackingUrl ? _self.returnTrackingUrl : returnTrackingUrl // ignore: cast_nullable_to_non_nullable
as String?,isClientDirect: null == isClientDirect ? _self.isClientDirect : isClientDirect // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,requesterName: null == requesterName ? _self.requesterName : requesterName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
