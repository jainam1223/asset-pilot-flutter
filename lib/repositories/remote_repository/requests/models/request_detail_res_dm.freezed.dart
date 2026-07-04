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

 String get id;@JsonKey(name: 'requester_id') String get requesterId;@JsonKey(name: 'category_id') String get categoryId;@JsonKey(name: 'assigned_item_id') String? get assignedItemId;@JsonKey(name: 'requested_from') DateTime? get requestedFrom;@JsonKey(name: 'requested_to') DateTime? get requestedTo;@JsonKey(name: 'assigned_from') DateTime? get assignedFrom;@JsonKey(name: 'assigned_to') DateTime? get assignedTo; RequestStatus get status; RequestPriority get priority; String? get note;@JsonKey(name: 'requires_mgr_approval') bool get requiresMgrApproval;@JsonKey(name: 'mgr_approval_status') MgrApprovalStatus get mgrApprovalStatus;@JsonKey(name: 'manager_id') String? get managerId;@JsonKey(name: 'manager_decision_note') String? get managerDecisionNote;@JsonKey(name: 'manager_decided_at') DateTime? get managerDecidedAt;@JsonKey(name: 'it_decided_by') String? get itDecidedBy;@JsonKey(name: 'it_decision_note') String? get itDecisionNote;@JsonKey(name: 'it_decided_at') DateTime? get itDecidedAt;@JsonKey(name: 'rejected_by') String? get rejectedBy;@JsonKey(name: 'rejected_reason') String? get rejectedReason;@JsonKey(name: 'cancelled_by') String? get cancelledBy;@JsonKey(name: 'cancelled_at') DateTime? get cancelledAt;@JsonKey(name: 'is_wfh') bool get isWfh;@JsonKey(name: 'ship_tracking_url') String? get shipTrackingUrl;@JsonKey(name: 'ship_initiated_at') DateTime? get shipInitiatedAt;@JsonKey(name: 'ship_completed_at') DateTime? get shipCompletedAt;@JsonKey(name: 'return_tracking_url') String? get returnTrackingUrl;@JsonKey(name: 'return_initiated_at') DateTime? get returnInitiatedAt;@JsonKey(name: 'completed_at') DateTime? get completedAt;@JsonKey(name: 'completed_by') String? get completedBy;@JsonKey(name: 'completed_next_status') DeviceStatus? get completedNextStatus;@JsonKey(name: 'is_client_direct') bool get isClientDirect;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt;@JsonKey(name: 'category_name') String get categoryName;@JsonKey(name: 'requester_name') String get requesterName;@JsonKey(name: 'manager_name') String? get managerName;@JsonKey(name: 'it_decided_by_name') String? get itDecidedByName;@JsonKey(name: 'cancelled_by_name') String? get cancelledByName;@JsonKey(name: 'completed_by_name') String? get completedByName; InventoryItemResDm? get item;
/// Create a copy of RequestDetailResDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestDetailResDmCopyWith<RequestDetailResDm> get copyWith => _$RequestDetailResDmCopyWithImpl<RequestDetailResDm>(this as RequestDetailResDm, _$identity);

  /// Serializes this RequestDetailResDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestDetailResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.requesterId, requesterId) || other.requesterId == requesterId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.assignedItemId, assignedItemId) || other.assignedItemId == assignedItemId)&&(identical(other.requestedFrom, requestedFrom) || other.requestedFrom == requestedFrom)&&(identical(other.requestedTo, requestedTo) || other.requestedTo == requestedTo)&&(identical(other.assignedFrom, assignedFrom) || other.assignedFrom == assignedFrom)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo)&&(identical(other.status, status) || other.status == status)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.note, note) || other.note == note)&&(identical(other.requiresMgrApproval, requiresMgrApproval) || other.requiresMgrApproval == requiresMgrApproval)&&(identical(other.mgrApprovalStatus, mgrApprovalStatus) || other.mgrApprovalStatus == mgrApprovalStatus)&&(identical(other.managerId, managerId) || other.managerId == managerId)&&(identical(other.managerDecisionNote, managerDecisionNote) || other.managerDecisionNote == managerDecisionNote)&&(identical(other.managerDecidedAt, managerDecidedAt) || other.managerDecidedAt == managerDecidedAt)&&(identical(other.itDecidedBy, itDecidedBy) || other.itDecidedBy == itDecidedBy)&&(identical(other.itDecisionNote, itDecisionNote) || other.itDecisionNote == itDecisionNote)&&(identical(other.itDecidedAt, itDecidedAt) || other.itDecidedAt == itDecidedAt)&&(identical(other.rejectedBy, rejectedBy) || other.rejectedBy == rejectedBy)&&(identical(other.rejectedReason, rejectedReason) || other.rejectedReason == rejectedReason)&&(identical(other.cancelledBy, cancelledBy) || other.cancelledBy == cancelledBy)&&(identical(other.cancelledAt, cancelledAt) || other.cancelledAt == cancelledAt)&&(identical(other.isWfh, isWfh) || other.isWfh == isWfh)&&(identical(other.shipTrackingUrl, shipTrackingUrl) || other.shipTrackingUrl == shipTrackingUrl)&&(identical(other.shipInitiatedAt, shipInitiatedAt) || other.shipInitiatedAt == shipInitiatedAt)&&(identical(other.shipCompletedAt, shipCompletedAt) || other.shipCompletedAt == shipCompletedAt)&&(identical(other.returnTrackingUrl, returnTrackingUrl) || other.returnTrackingUrl == returnTrackingUrl)&&(identical(other.returnInitiatedAt, returnInitiatedAt) || other.returnInitiatedAt == returnInitiatedAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.completedBy, completedBy) || other.completedBy == completedBy)&&(identical(other.completedNextStatus, completedNextStatus) || other.completedNextStatus == completedNextStatus)&&(identical(other.isClientDirect, isClientDirect) || other.isClientDirect == isClientDirect)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.requesterName, requesterName) || other.requesterName == requesterName)&&(identical(other.managerName, managerName) || other.managerName == managerName)&&(identical(other.itDecidedByName, itDecidedByName) || other.itDecidedByName == itDecidedByName)&&(identical(other.cancelledByName, cancelledByName) || other.cancelledByName == cancelledByName)&&(identical(other.completedByName, completedByName) || other.completedByName == completedByName)&&(identical(other.item, item) || other.item == item));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,requesterId,categoryId,assignedItemId,requestedFrom,requestedTo,assignedFrom,assignedTo,status,priority,note,requiresMgrApproval,mgrApprovalStatus,managerId,managerDecisionNote,managerDecidedAt,itDecidedBy,itDecisionNote,itDecidedAt,rejectedBy,rejectedReason,cancelledBy,cancelledAt,isWfh,shipTrackingUrl,shipInitiatedAt,shipCompletedAt,returnTrackingUrl,returnInitiatedAt,completedAt,completedBy,completedNextStatus,isClientDirect,createdAt,updatedAt,categoryName,requesterName,managerName,itDecidedByName,cancelledByName,completedByName,item]);

@override
String toString() {
  return 'RequestDetailResDm(id: $id, requesterId: $requesterId, categoryId: $categoryId, assignedItemId: $assignedItemId, requestedFrom: $requestedFrom, requestedTo: $requestedTo, assignedFrom: $assignedFrom, assignedTo: $assignedTo, status: $status, priority: $priority, note: $note, requiresMgrApproval: $requiresMgrApproval, mgrApprovalStatus: $mgrApprovalStatus, managerId: $managerId, managerDecisionNote: $managerDecisionNote, managerDecidedAt: $managerDecidedAt, itDecidedBy: $itDecidedBy, itDecisionNote: $itDecisionNote, itDecidedAt: $itDecidedAt, rejectedBy: $rejectedBy, rejectedReason: $rejectedReason, cancelledBy: $cancelledBy, cancelledAt: $cancelledAt, isWfh: $isWfh, shipTrackingUrl: $shipTrackingUrl, shipInitiatedAt: $shipInitiatedAt, shipCompletedAt: $shipCompletedAt, returnTrackingUrl: $returnTrackingUrl, returnInitiatedAt: $returnInitiatedAt, completedAt: $completedAt, completedBy: $completedBy, completedNextStatus: $completedNextStatus, isClientDirect: $isClientDirect, createdAt: $createdAt, updatedAt: $updatedAt, categoryName: $categoryName, requesterName: $requesterName, managerName: $managerName, itDecidedByName: $itDecidedByName, cancelledByName: $cancelledByName, completedByName: $completedByName, item: $item)';
}


}

/// @nodoc
abstract mixin class $RequestDetailResDmCopyWith<$Res>  {
  factory $RequestDetailResDmCopyWith(RequestDetailResDm value, $Res Function(RequestDetailResDm) _then) = _$RequestDetailResDmCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'requester_id') String requesterId,@JsonKey(name: 'category_id') String categoryId,@JsonKey(name: 'assigned_item_id') String? assignedItemId,@JsonKey(name: 'requested_from') DateTime? requestedFrom,@JsonKey(name: 'requested_to') DateTime? requestedTo,@JsonKey(name: 'assigned_from') DateTime? assignedFrom,@JsonKey(name: 'assigned_to') DateTime? assignedTo, RequestStatus status, RequestPriority priority, String? note,@JsonKey(name: 'requires_mgr_approval') bool requiresMgrApproval,@JsonKey(name: 'mgr_approval_status') MgrApprovalStatus mgrApprovalStatus,@JsonKey(name: 'manager_id') String? managerId,@JsonKey(name: 'manager_decision_note') String? managerDecisionNote,@JsonKey(name: 'manager_decided_at') DateTime? managerDecidedAt,@JsonKey(name: 'it_decided_by') String? itDecidedBy,@JsonKey(name: 'it_decision_note') String? itDecisionNote,@JsonKey(name: 'it_decided_at') DateTime? itDecidedAt,@JsonKey(name: 'rejected_by') String? rejectedBy,@JsonKey(name: 'rejected_reason') String? rejectedReason,@JsonKey(name: 'cancelled_by') String? cancelledBy,@JsonKey(name: 'cancelled_at') DateTime? cancelledAt,@JsonKey(name: 'is_wfh') bool isWfh,@JsonKey(name: 'ship_tracking_url') String? shipTrackingUrl,@JsonKey(name: 'ship_initiated_at') DateTime? shipInitiatedAt,@JsonKey(name: 'ship_completed_at') DateTime? shipCompletedAt,@JsonKey(name: 'return_tracking_url') String? returnTrackingUrl,@JsonKey(name: 'return_initiated_at') DateTime? returnInitiatedAt,@JsonKey(name: 'completed_at') DateTime? completedAt,@JsonKey(name: 'completed_by') String? completedBy,@JsonKey(name: 'completed_next_status') DeviceStatus? completedNextStatus,@JsonKey(name: 'is_client_direct') bool isClientDirect,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt,@JsonKey(name: 'category_name') String categoryName,@JsonKey(name: 'requester_name') String requesterName,@JsonKey(name: 'manager_name') String? managerName,@JsonKey(name: 'it_decided_by_name') String? itDecidedByName,@JsonKey(name: 'cancelled_by_name') String? cancelledByName,@JsonKey(name: 'completed_by_name') String? completedByName, InventoryItemResDm? item
});


$InventoryItemResDmCopyWith<$Res>? get item;

}
/// @nodoc
class _$RequestDetailResDmCopyWithImpl<$Res>
    implements $RequestDetailResDmCopyWith<$Res> {
  _$RequestDetailResDmCopyWithImpl(this._self, this._then);

  final RequestDetailResDm _self;
  final $Res Function(RequestDetailResDm) _then;

/// Create a copy of RequestDetailResDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? requesterId = null,Object? categoryId = null,Object? assignedItemId = freezed,Object? requestedFrom = freezed,Object? requestedTo = freezed,Object? assignedFrom = freezed,Object? assignedTo = freezed,Object? status = null,Object? priority = null,Object? note = freezed,Object? requiresMgrApproval = null,Object? mgrApprovalStatus = null,Object? managerId = freezed,Object? managerDecisionNote = freezed,Object? managerDecidedAt = freezed,Object? itDecidedBy = freezed,Object? itDecisionNote = freezed,Object? itDecidedAt = freezed,Object? rejectedBy = freezed,Object? rejectedReason = freezed,Object? cancelledBy = freezed,Object? cancelledAt = freezed,Object? isWfh = null,Object? shipTrackingUrl = freezed,Object? shipInitiatedAt = freezed,Object? shipCompletedAt = freezed,Object? returnTrackingUrl = freezed,Object? returnInitiatedAt = freezed,Object? completedAt = freezed,Object? completedBy = freezed,Object? completedNextStatus = freezed,Object? isClientDirect = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? categoryName = null,Object? requesterName = null,Object? managerName = freezed,Object? itDecidedByName = freezed,Object? cancelledByName = freezed,Object? completedByName = freezed,Object? item = freezed,}) {
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
as String?,managerDecisionNote: freezed == managerDecisionNote ? _self.managerDecisionNote : managerDecisionNote // ignore: cast_nullable_to_non_nullable
as String?,managerDecidedAt: freezed == managerDecidedAt ? _self.managerDecidedAt : managerDecidedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,itDecidedBy: freezed == itDecidedBy ? _self.itDecidedBy : itDecidedBy // ignore: cast_nullable_to_non_nullable
as String?,itDecisionNote: freezed == itDecisionNote ? _self.itDecisionNote : itDecisionNote // ignore: cast_nullable_to_non_nullable
as String?,itDecidedAt: freezed == itDecidedAt ? _self.itDecidedAt : itDecidedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,rejectedBy: freezed == rejectedBy ? _self.rejectedBy : rejectedBy // ignore: cast_nullable_to_non_nullable
as String?,rejectedReason: freezed == rejectedReason ? _self.rejectedReason : rejectedReason // ignore: cast_nullable_to_non_nullable
as String?,cancelledBy: freezed == cancelledBy ? _self.cancelledBy : cancelledBy // ignore: cast_nullable_to_non_nullable
as String?,cancelledAt: freezed == cancelledAt ? _self.cancelledAt : cancelledAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isWfh: null == isWfh ? _self.isWfh : isWfh // ignore: cast_nullable_to_non_nullable
as bool,shipTrackingUrl: freezed == shipTrackingUrl ? _self.shipTrackingUrl : shipTrackingUrl // ignore: cast_nullable_to_non_nullable
as String?,shipInitiatedAt: freezed == shipInitiatedAt ? _self.shipInitiatedAt : shipInitiatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,shipCompletedAt: freezed == shipCompletedAt ? _self.shipCompletedAt : shipCompletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,returnTrackingUrl: freezed == returnTrackingUrl ? _self.returnTrackingUrl : returnTrackingUrl // ignore: cast_nullable_to_non_nullable
as String?,returnInitiatedAt: freezed == returnInitiatedAt ? _self.returnInitiatedAt : returnInitiatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,completedBy: freezed == completedBy ? _self.completedBy : completedBy // ignore: cast_nullable_to_non_nullable
as String?,completedNextStatus: freezed == completedNextStatus ? _self.completedNextStatus : completedNextStatus // ignore: cast_nullable_to_non_nullable
as DeviceStatus?,isClientDirect: null == isClientDirect ? _self.isClientDirect : isClientDirect // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,requesterName: null == requesterName ? _self.requesterName : requesterName // ignore: cast_nullable_to_non_nullable
as String,managerName: freezed == managerName ? _self.managerName : managerName // ignore: cast_nullable_to_non_nullable
as String?,itDecidedByName: freezed == itDecidedByName ? _self.itDecidedByName : itDecidedByName // ignore: cast_nullable_to_non_nullable
as String?,cancelledByName: freezed == cancelledByName ? _self.cancelledByName : cancelledByName // ignore: cast_nullable_to_non_nullable
as String?,completedByName: freezed == completedByName ? _self.completedByName : completedByName // ignore: cast_nullable_to_non_nullable
as String?,item: freezed == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as InventoryItemResDm?,
  ));
}
/// Create a copy of RequestDetailResDm
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InventoryItemResDmCopyWith<$Res>? get item {
    if (_self.item == null) {
    return null;
  }

  return $InventoryItemResDmCopyWith<$Res>(_self.item!, (value) {
    return _then(_self.copyWith(item: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'requester_id')  String requesterId, @JsonKey(name: 'category_id')  String categoryId, @JsonKey(name: 'assigned_item_id')  String? assignedItemId, @JsonKey(name: 'requested_from')  DateTime? requestedFrom, @JsonKey(name: 'requested_to')  DateTime? requestedTo, @JsonKey(name: 'assigned_from')  DateTime? assignedFrom, @JsonKey(name: 'assigned_to')  DateTime? assignedTo,  RequestStatus status,  RequestPriority priority,  String? note, @JsonKey(name: 'requires_mgr_approval')  bool requiresMgrApproval, @JsonKey(name: 'mgr_approval_status')  MgrApprovalStatus mgrApprovalStatus, @JsonKey(name: 'manager_id')  String? managerId, @JsonKey(name: 'manager_decision_note')  String? managerDecisionNote, @JsonKey(name: 'manager_decided_at')  DateTime? managerDecidedAt, @JsonKey(name: 'it_decided_by')  String? itDecidedBy, @JsonKey(name: 'it_decision_note')  String? itDecisionNote, @JsonKey(name: 'it_decided_at')  DateTime? itDecidedAt, @JsonKey(name: 'rejected_by')  String? rejectedBy, @JsonKey(name: 'rejected_reason')  String? rejectedReason, @JsonKey(name: 'cancelled_by')  String? cancelledBy, @JsonKey(name: 'cancelled_at')  DateTime? cancelledAt, @JsonKey(name: 'is_wfh')  bool isWfh, @JsonKey(name: 'ship_tracking_url')  String? shipTrackingUrl, @JsonKey(name: 'ship_initiated_at')  DateTime? shipInitiatedAt, @JsonKey(name: 'ship_completed_at')  DateTime? shipCompletedAt, @JsonKey(name: 'return_tracking_url')  String? returnTrackingUrl, @JsonKey(name: 'return_initiated_at')  DateTime? returnInitiatedAt, @JsonKey(name: 'completed_at')  DateTime? completedAt, @JsonKey(name: 'completed_by')  String? completedBy, @JsonKey(name: 'completed_next_status')  DeviceStatus? completedNextStatus, @JsonKey(name: 'is_client_direct')  bool isClientDirect, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt, @JsonKey(name: 'category_name')  String categoryName, @JsonKey(name: 'requester_name')  String requesterName, @JsonKey(name: 'manager_name')  String? managerName, @JsonKey(name: 'it_decided_by_name')  String? itDecidedByName, @JsonKey(name: 'cancelled_by_name')  String? cancelledByName, @JsonKey(name: 'completed_by_name')  String? completedByName,  InventoryItemResDm? item)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestDetailResDm() when $default != null:
return $default(_that.id,_that.requesterId,_that.categoryId,_that.assignedItemId,_that.requestedFrom,_that.requestedTo,_that.assignedFrom,_that.assignedTo,_that.status,_that.priority,_that.note,_that.requiresMgrApproval,_that.mgrApprovalStatus,_that.managerId,_that.managerDecisionNote,_that.managerDecidedAt,_that.itDecidedBy,_that.itDecisionNote,_that.itDecidedAt,_that.rejectedBy,_that.rejectedReason,_that.cancelledBy,_that.cancelledAt,_that.isWfh,_that.shipTrackingUrl,_that.shipInitiatedAt,_that.shipCompletedAt,_that.returnTrackingUrl,_that.returnInitiatedAt,_that.completedAt,_that.completedBy,_that.completedNextStatus,_that.isClientDirect,_that.createdAt,_that.updatedAt,_that.categoryName,_that.requesterName,_that.managerName,_that.itDecidedByName,_that.cancelledByName,_that.completedByName,_that.item);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'requester_id')  String requesterId, @JsonKey(name: 'category_id')  String categoryId, @JsonKey(name: 'assigned_item_id')  String? assignedItemId, @JsonKey(name: 'requested_from')  DateTime? requestedFrom, @JsonKey(name: 'requested_to')  DateTime? requestedTo, @JsonKey(name: 'assigned_from')  DateTime? assignedFrom, @JsonKey(name: 'assigned_to')  DateTime? assignedTo,  RequestStatus status,  RequestPriority priority,  String? note, @JsonKey(name: 'requires_mgr_approval')  bool requiresMgrApproval, @JsonKey(name: 'mgr_approval_status')  MgrApprovalStatus mgrApprovalStatus, @JsonKey(name: 'manager_id')  String? managerId, @JsonKey(name: 'manager_decision_note')  String? managerDecisionNote, @JsonKey(name: 'manager_decided_at')  DateTime? managerDecidedAt, @JsonKey(name: 'it_decided_by')  String? itDecidedBy, @JsonKey(name: 'it_decision_note')  String? itDecisionNote, @JsonKey(name: 'it_decided_at')  DateTime? itDecidedAt, @JsonKey(name: 'rejected_by')  String? rejectedBy, @JsonKey(name: 'rejected_reason')  String? rejectedReason, @JsonKey(name: 'cancelled_by')  String? cancelledBy, @JsonKey(name: 'cancelled_at')  DateTime? cancelledAt, @JsonKey(name: 'is_wfh')  bool isWfh, @JsonKey(name: 'ship_tracking_url')  String? shipTrackingUrl, @JsonKey(name: 'ship_initiated_at')  DateTime? shipInitiatedAt, @JsonKey(name: 'ship_completed_at')  DateTime? shipCompletedAt, @JsonKey(name: 'return_tracking_url')  String? returnTrackingUrl, @JsonKey(name: 'return_initiated_at')  DateTime? returnInitiatedAt, @JsonKey(name: 'completed_at')  DateTime? completedAt, @JsonKey(name: 'completed_by')  String? completedBy, @JsonKey(name: 'completed_next_status')  DeviceStatus? completedNextStatus, @JsonKey(name: 'is_client_direct')  bool isClientDirect, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt, @JsonKey(name: 'category_name')  String categoryName, @JsonKey(name: 'requester_name')  String requesterName, @JsonKey(name: 'manager_name')  String? managerName, @JsonKey(name: 'it_decided_by_name')  String? itDecidedByName, @JsonKey(name: 'cancelled_by_name')  String? cancelledByName, @JsonKey(name: 'completed_by_name')  String? completedByName,  InventoryItemResDm? item)  $default,) {final _that = this;
switch (_that) {
case _RequestDetailResDm():
return $default(_that.id,_that.requesterId,_that.categoryId,_that.assignedItemId,_that.requestedFrom,_that.requestedTo,_that.assignedFrom,_that.assignedTo,_that.status,_that.priority,_that.note,_that.requiresMgrApproval,_that.mgrApprovalStatus,_that.managerId,_that.managerDecisionNote,_that.managerDecidedAt,_that.itDecidedBy,_that.itDecisionNote,_that.itDecidedAt,_that.rejectedBy,_that.rejectedReason,_that.cancelledBy,_that.cancelledAt,_that.isWfh,_that.shipTrackingUrl,_that.shipInitiatedAt,_that.shipCompletedAt,_that.returnTrackingUrl,_that.returnInitiatedAt,_that.completedAt,_that.completedBy,_that.completedNextStatus,_that.isClientDirect,_that.createdAt,_that.updatedAt,_that.categoryName,_that.requesterName,_that.managerName,_that.itDecidedByName,_that.cancelledByName,_that.completedByName,_that.item);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'requester_id')  String requesterId, @JsonKey(name: 'category_id')  String categoryId, @JsonKey(name: 'assigned_item_id')  String? assignedItemId, @JsonKey(name: 'requested_from')  DateTime? requestedFrom, @JsonKey(name: 'requested_to')  DateTime? requestedTo, @JsonKey(name: 'assigned_from')  DateTime? assignedFrom, @JsonKey(name: 'assigned_to')  DateTime? assignedTo,  RequestStatus status,  RequestPriority priority,  String? note, @JsonKey(name: 'requires_mgr_approval')  bool requiresMgrApproval, @JsonKey(name: 'mgr_approval_status')  MgrApprovalStatus mgrApprovalStatus, @JsonKey(name: 'manager_id')  String? managerId, @JsonKey(name: 'manager_decision_note')  String? managerDecisionNote, @JsonKey(name: 'manager_decided_at')  DateTime? managerDecidedAt, @JsonKey(name: 'it_decided_by')  String? itDecidedBy, @JsonKey(name: 'it_decision_note')  String? itDecisionNote, @JsonKey(name: 'it_decided_at')  DateTime? itDecidedAt, @JsonKey(name: 'rejected_by')  String? rejectedBy, @JsonKey(name: 'rejected_reason')  String? rejectedReason, @JsonKey(name: 'cancelled_by')  String? cancelledBy, @JsonKey(name: 'cancelled_at')  DateTime? cancelledAt, @JsonKey(name: 'is_wfh')  bool isWfh, @JsonKey(name: 'ship_tracking_url')  String? shipTrackingUrl, @JsonKey(name: 'ship_initiated_at')  DateTime? shipInitiatedAt, @JsonKey(name: 'ship_completed_at')  DateTime? shipCompletedAt, @JsonKey(name: 'return_tracking_url')  String? returnTrackingUrl, @JsonKey(name: 'return_initiated_at')  DateTime? returnInitiatedAt, @JsonKey(name: 'completed_at')  DateTime? completedAt, @JsonKey(name: 'completed_by')  String? completedBy, @JsonKey(name: 'completed_next_status')  DeviceStatus? completedNextStatus, @JsonKey(name: 'is_client_direct')  bool isClientDirect, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt, @JsonKey(name: 'category_name')  String categoryName, @JsonKey(name: 'requester_name')  String requesterName, @JsonKey(name: 'manager_name')  String? managerName, @JsonKey(name: 'it_decided_by_name')  String? itDecidedByName, @JsonKey(name: 'cancelled_by_name')  String? cancelledByName, @JsonKey(name: 'completed_by_name')  String? completedByName,  InventoryItemResDm? item)?  $default,) {final _that = this;
switch (_that) {
case _RequestDetailResDm() when $default != null:
return $default(_that.id,_that.requesterId,_that.categoryId,_that.assignedItemId,_that.requestedFrom,_that.requestedTo,_that.assignedFrom,_that.assignedTo,_that.status,_that.priority,_that.note,_that.requiresMgrApproval,_that.mgrApprovalStatus,_that.managerId,_that.managerDecisionNote,_that.managerDecidedAt,_that.itDecidedBy,_that.itDecisionNote,_that.itDecidedAt,_that.rejectedBy,_that.rejectedReason,_that.cancelledBy,_that.cancelledAt,_that.isWfh,_that.shipTrackingUrl,_that.shipInitiatedAt,_that.shipCompletedAt,_that.returnTrackingUrl,_that.returnInitiatedAt,_that.completedAt,_that.completedBy,_that.completedNextStatus,_that.isClientDirect,_that.createdAt,_that.updatedAt,_that.categoryName,_that.requesterName,_that.managerName,_that.itDecidedByName,_that.cancelledByName,_that.completedByName,_that.item);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestDetailResDm implements RequestDetailResDm {
  const _RequestDetailResDm({this.id = '', @JsonKey(name: 'requester_id') this.requesterId = '', @JsonKey(name: 'category_id') this.categoryId = '', @JsonKey(name: 'assigned_item_id') this.assignedItemId, @JsonKey(name: 'requested_from') this.requestedFrom, @JsonKey(name: 'requested_to') this.requestedTo, @JsonKey(name: 'assigned_from') this.assignedFrom, @JsonKey(name: 'assigned_to') this.assignedTo, this.status = RequestStatus.pendingItApproval, this.priority = RequestPriority.medium, this.note, @JsonKey(name: 'requires_mgr_approval') this.requiresMgrApproval = false, @JsonKey(name: 'mgr_approval_status') this.mgrApprovalStatus = MgrApprovalStatus.notRequired, @JsonKey(name: 'manager_id') this.managerId, @JsonKey(name: 'manager_decision_note') this.managerDecisionNote, @JsonKey(name: 'manager_decided_at') this.managerDecidedAt, @JsonKey(name: 'it_decided_by') this.itDecidedBy, @JsonKey(name: 'it_decision_note') this.itDecisionNote, @JsonKey(name: 'it_decided_at') this.itDecidedAt, @JsonKey(name: 'rejected_by') this.rejectedBy, @JsonKey(name: 'rejected_reason') this.rejectedReason, @JsonKey(name: 'cancelled_by') this.cancelledBy, @JsonKey(name: 'cancelled_at') this.cancelledAt, @JsonKey(name: 'is_wfh') this.isWfh = false, @JsonKey(name: 'ship_tracking_url') this.shipTrackingUrl, @JsonKey(name: 'ship_initiated_at') this.shipInitiatedAt, @JsonKey(name: 'ship_completed_at') this.shipCompletedAt, @JsonKey(name: 'return_tracking_url') this.returnTrackingUrl, @JsonKey(name: 'return_initiated_at') this.returnInitiatedAt, @JsonKey(name: 'completed_at') this.completedAt, @JsonKey(name: 'completed_by') this.completedBy, @JsonKey(name: 'completed_next_status') this.completedNextStatus, @JsonKey(name: 'is_client_direct') this.isClientDirect = false, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'category_name') this.categoryName = '', @JsonKey(name: 'requester_name') this.requesterName = '', @JsonKey(name: 'manager_name') this.managerName, @JsonKey(name: 'it_decided_by_name') this.itDecidedByName, @JsonKey(name: 'cancelled_by_name') this.cancelledByName, @JsonKey(name: 'completed_by_name') this.completedByName, this.item});
  factory _RequestDetailResDm.fromJson(Map<String, dynamic> json) => _$RequestDetailResDmFromJson(json);

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
@override@JsonKey(name: 'manager_decision_note') final  String? managerDecisionNote;
@override@JsonKey(name: 'manager_decided_at') final  DateTime? managerDecidedAt;
@override@JsonKey(name: 'it_decided_by') final  String? itDecidedBy;
@override@JsonKey(name: 'it_decision_note') final  String? itDecisionNote;
@override@JsonKey(name: 'it_decided_at') final  DateTime? itDecidedAt;
@override@JsonKey(name: 'rejected_by') final  String? rejectedBy;
@override@JsonKey(name: 'rejected_reason') final  String? rejectedReason;
@override@JsonKey(name: 'cancelled_by') final  String? cancelledBy;
@override@JsonKey(name: 'cancelled_at') final  DateTime? cancelledAt;
@override@JsonKey(name: 'is_wfh') final  bool isWfh;
@override@JsonKey(name: 'ship_tracking_url') final  String? shipTrackingUrl;
@override@JsonKey(name: 'ship_initiated_at') final  DateTime? shipInitiatedAt;
@override@JsonKey(name: 'ship_completed_at') final  DateTime? shipCompletedAt;
@override@JsonKey(name: 'return_tracking_url') final  String? returnTrackingUrl;
@override@JsonKey(name: 'return_initiated_at') final  DateTime? returnInitiatedAt;
@override@JsonKey(name: 'completed_at') final  DateTime? completedAt;
@override@JsonKey(name: 'completed_by') final  String? completedBy;
@override@JsonKey(name: 'completed_next_status') final  DeviceStatus? completedNextStatus;
@override@JsonKey(name: 'is_client_direct') final  bool isClientDirect;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;
@override@JsonKey(name: 'category_name') final  String categoryName;
@override@JsonKey(name: 'requester_name') final  String requesterName;
@override@JsonKey(name: 'manager_name') final  String? managerName;
@override@JsonKey(name: 'it_decided_by_name') final  String? itDecidedByName;
@override@JsonKey(name: 'cancelled_by_name') final  String? cancelledByName;
@override@JsonKey(name: 'completed_by_name') final  String? completedByName;
@override final  InventoryItemResDm? item;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestDetailResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.requesterId, requesterId) || other.requesterId == requesterId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.assignedItemId, assignedItemId) || other.assignedItemId == assignedItemId)&&(identical(other.requestedFrom, requestedFrom) || other.requestedFrom == requestedFrom)&&(identical(other.requestedTo, requestedTo) || other.requestedTo == requestedTo)&&(identical(other.assignedFrom, assignedFrom) || other.assignedFrom == assignedFrom)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo)&&(identical(other.status, status) || other.status == status)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.note, note) || other.note == note)&&(identical(other.requiresMgrApproval, requiresMgrApproval) || other.requiresMgrApproval == requiresMgrApproval)&&(identical(other.mgrApprovalStatus, mgrApprovalStatus) || other.mgrApprovalStatus == mgrApprovalStatus)&&(identical(other.managerId, managerId) || other.managerId == managerId)&&(identical(other.managerDecisionNote, managerDecisionNote) || other.managerDecisionNote == managerDecisionNote)&&(identical(other.managerDecidedAt, managerDecidedAt) || other.managerDecidedAt == managerDecidedAt)&&(identical(other.itDecidedBy, itDecidedBy) || other.itDecidedBy == itDecidedBy)&&(identical(other.itDecisionNote, itDecisionNote) || other.itDecisionNote == itDecisionNote)&&(identical(other.itDecidedAt, itDecidedAt) || other.itDecidedAt == itDecidedAt)&&(identical(other.rejectedBy, rejectedBy) || other.rejectedBy == rejectedBy)&&(identical(other.rejectedReason, rejectedReason) || other.rejectedReason == rejectedReason)&&(identical(other.cancelledBy, cancelledBy) || other.cancelledBy == cancelledBy)&&(identical(other.cancelledAt, cancelledAt) || other.cancelledAt == cancelledAt)&&(identical(other.isWfh, isWfh) || other.isWfh == isWfh)&&(identical(other.shipTrackingUrl, shipTrackingUrl) || other.shipTrackingUrl == shipTrackingUrl)&&(identical(other.shipInitiatedAt, shipInitiatedAt) || other.shipInitiatedAt == shipInitiatedAt)&&(identical(other.shipCompletedAt, shipCompletedAt) || other.shipCompletedAt == shipCompletedAt)&&(identical(other.returnTrackingUrl, returnTrackingUrl) || other.returnTrackingUrl == returnTrackingUrl)&&(identical(other.returnInitiatedAt, returnInitiatedAt) || other.returnInitiatedAt == returnInitiatedAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.completedBy, completedBy) || other.completedBy == completedBy)&&(identical(other.completedNextStatus, completedNextStatus) || other.completedNextStatus == completedNextStatus)&&(identical(other.isClientDirect, isClientDirect) || other.isClientDirect == isClientDirect)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.requesterName, requesterName) || other.requesterName == requesterName)&&(identical(other.managerName, managerName) || other.managerName == managerName)&&(identical(other.itDecidedByName, itDecidedByName) || other.itDecidedByName == itDecidedByName)&&(identical(other.cancelledByName, cancelledByName) || other.cancelledByName == cancelledByName)&&(identical(other.completedByName, completedByName) || other.completedByName == completedByName)&&(identical(other.item, item) || other.item == item));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,requesterId,categoryId,assignedItemId,requestedFrom,requestedTo,assignedFrom,assignedTo,status,priority,note,requiresMgrApproval,mgrApprovalStatus,managerId,managerDecisionNote,managerDecidedAt,itDecidedBy,itDecisionNote,itDecidedAt,rejectedBy,rejectedReason,cancelledBy,cancelledAt,isWfh,shipTrackingUrl,shipInitiatedAt,shipCompletedAt,returnTrackingUrl,returnInitiatedAt,completedAt,completedBy,completedNextStatus,isClientDirect,createdAt,updatedAt,categoryName,requesterName,managerName,itDecidedByName,cancelledByName,completedByName,item]);

@override
String toString() {
  return 'RequestDetailResDm(id: $id, requesterId: $requesterId, categoryId: $categoryId, assignedItemId: $assignedItemId, requestedFrom: $requestedFrom, requestedTo: $requestedTo, assignedFrom: $assignedFrom, assignedTo: $assignedTo, status: $status, priority: $priority, note: $note, requiresMgrApproval: $requiresMgrApproval, mgrApprovalStatus: $mgrApprovalStatus, managerId: $managerId, managerDecisionNote: $managerDecisionNote, managerDecidedAt: $managerDecidedAt, itDecidedBy: $itDecidedBy, itDecisionNote: $itDecisionNote, itDecidedAt: $itDecidedAt, rejectedBy: $rejectedBy, rejectedReason: $rejectedReason, cancelledBy: $cancelledBy, cancelledAt: $cancelledAt, isWfh: $isWfh, shipTrackingUrl: $shipTrackingUrl, shipInitiatedAt: $shipInitiatedAt, shipCompletedAt: $shipCompletedAt, returnTrackingUrl: $returnTrackingUrl, returnInitiatedAt: $returnInitiatedAt, completedAt: $completedAt, completedBy: $completedBy, completedNextStatus: $completedNextStatus, isClientDirect: $isClientDirect, createdAt: $createdAt, updatedAt: $updatedAt, categoryName: $categoryName, requesterName: $requesterName, managerName: $managerName, itDecidedByName: $itDecidedByName, cancelledByName: $cancelledByName, completedByName: $completedByName, item: $item)';
}


}

/// @nodoc
abstract mixin class _$RequestDetailResDmCopyWith<$Res> implements $RequestDetailResDmCopyWith<$Res> {
  factory _$RequestDetailResDmCopyWith(_RequestDetailResDm value, $Res Function(_RequestDetailResDm) _then) = __$RequestDetailResDmCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'requester_id') String requesterId,@JsonKey(name: 'category_id') String categoryId,@JsonKey(name: 'assigned_item_id') String? assignedItemId,@JsonKey(name: 'requested_from') DateTime? requestedFrom,@JsonKey(name: 'requested_to') DateTime? requestedTo,@JsonKey(name: 'assigned_from') DateTime? assignedFrom,@JsonKey(name: 'assigned_to') DateTime? assignedTo, RequestStatus status, RequestPriority priority, String? note,@JsonKey(name: 'requires_mgr_approval') bool requiresMgrApproval,@JsonKey(name: 'mgr_approval_status') MgrApprovalStatus mgrApprovalStatus,@JsonKey(name: 'manager_id') String? managerId,@JsonKey(name: 'manager_decision_note') String? managerDecisionNote,@JsonKey(name: 'manager_decided_at') DateTime? managerDecidedAt,@JsonKey(name: 'it_decided_by') String? itDecidedBy,@JsonKey(name: 'it_decision_note') String? itDecisionNote,@JsonKey(name: 'it_decided_at') DateTime? itDecidedAt,@JsonKey(name: 'rejected_by') String? rejectedBy,@JsonKey(name: 'rejected_reason') String? rejectedReason,@JsonKey(name: 'cancelled_by') String? cancelledBy,@JsonKey(name: 'cancelled_at') DateTime? cancelledAt,@JsonKey(name: 'is_wfh') bool isWfh,@JsonKey(name: 'ship_tracking_url') String? shipTrackingUrl,@JsonKey(name: 'ship_initiated_at') DateTime? shipInitiatedAt,@JsonKey(name: 'ship_completed_at') DateTime? shipCompletedAt,@JsonKey(name: 'return_tracking_url') String? returnTrackingUrl,@JsonKey(name: 'return_initiated_at') DateTime? returnInitiatedAt,@JsonKey(name: 'completed_at') DateTime? completedAt,@JsonKey(name: 'completed_by') String? completedBy,@JsonKey(name: 'completed_next_status') DeviceStatus? completedNextStatus,@JsonKey(name: 'is_client_direct') bool isClientDirect,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt,@JsonKey(name: 'category_name') String categoryName,@JsonKey(name: 'requester_name') String requesterName,@JsonKey(name: 'manager_name') String? managerName,@JsonKey(name: 'it_decided_by_name') String? itDecidedByName,@JsonKey(name: 'cancelled_by_name') String? cancelledByName,@JsonKey(name: 'completed_by_name') String? completedByName, InventoryItemResDm? item
});


@override $InventoryItemResDmCopyWith<$Res>? get item;

}
/// @nodoc
class __$RequestDetailResDmCopyWithImpl<$Res>
    implements _$RequestDetailResDmCopyWith<$Res> {
  __$RequestDetailResDmCopyWithImpl(this._self, this._then);

  final _RequestDetailResDm _self;
  final $Res Function(_RequestDetailResDm) _then;

/// Create a copy of RequestDetailResDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? requesterId = null,Object? categoryId = null,Object? assignedItemId = freezed,Object? requestedFrom = freezed,Object? requestedTo = freezed,Object? assignedFrom = freezed,Object? assignedTo = freezed,Object? status = null,Object? priority = null,Object? note = freezed,Object? requiresMgrApproval = null,Object? mgrApprovalStatus = null,Object? managerId = freezed,Object? managerDecisionNote = freezed,Object? managerDecidedAt = freezed,Object? itDecidedBy = freezed,Object? itDecisionNote = freezed,Object? itDecidedAt = freezed,Object? rejectedBy = freezed,Object? rejectedReason = freezed,Object? cancelledBy = freezed,Object? cancelledAt = freezed,Object? isWfh = null,Object? shipTrackingUrl = freezed,Object? shipInitiatedAt = freezed,Object? shipCompletedAt = freezed,Object? returnTrackingUrl = freezed,Object? returnInitiatedAt = freezed,Object? completedAt = freezed,Object? completedBy = freezed,Object? completedNextStatus = freezed,Object? isClientDirect = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? categoryName = null,Object? requesterName = null,Object? managerName = freezed,Object? itDecidedByName = freezed,Object? cancelledByName = freezed,Object? completedByName = freezed,Object? item = freezed,}) {
  return _then(_RequestDetailResDm(
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
as String?,managerDecisionNote: freezed == managerDecisionNote ? _self.managerDecisionNote : managerDecisionNote // ignore: cast_nullable_to_non_nullable
as String?,managerDecidedAt: freezed == managerDecidedAt ? _self.managerDecidedAt : managerDecidedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,itDecidedBy: freezed == itDecidedBy ? _self.itDecidedBy : itDecidedBy // ignore: cast_nullable_to_non_nullable
as String?,itDecisionNote: freezed == itDecisionNote ? _self.itDecisionNote : itDecisionNote // ignore: cast_nullable_to_non_nullable
as String?,itDecidedAt: freezed == itDecidedAt ? _self.itDecidedAt : itDecidedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,rejectedBy: freezed == rejectedBy ? _self.rejectedBy : rejectedBy // ignore: cast_nullable_to_non_nullable
as String?,rejectedReason: freezed == rejectedReason ? _self.rejectedReason : rejectedReason // ignore: cast_nullable_to_non_nullable
as String?,cancelledBy: freezed == cancelledBy ? _self.cancelledBy : cancelledBy // ignore: cast_nullable_to_non_nullable
as String?,cancelledAt: freezed == cancelledAt ? _self.cancelledAt : cancelledAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isWfh: null == isWfh ? _self.isWfh : isWfh // ignore: cast_nullable_to_non_nullable
as bool,shipTrackingUrl: freezed == shipTrackingUrl ? _self.shipTrackingUrl : shipTrackingUrl // ignore: cast_nullable_to_non_nullable
as String?,shipInitiatedAt: freezed == shipInitiatedAt ? _self.shipInitiatedAt : shipInitiatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,shipCompletedAt: freezed == shipCompletedAt ? _self.shipCompletedAt : shipCompletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,returnTrackingUrl: freezed == returnTrackingUrl ? _self.returnTrackingUrl : returnTrackingUrl // ignore: cast_nullable_to_non_nullable
as String?,returnInitiatedAt: freezed == returnInitiatedAt ? _self.returnInitiatedAt : returnInitiatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,completedBy: freezed == completedBy ? _self.completedBy : completedBy // ignore: cast_nullable_to_non_nullable
as String?,completedNextStatus: freezed == completedNextStatus ? _self.completedNextStatus : completedNextStatus // ignore: cast_nullable_to_non_nullable
as DeviceStatus?,isClientDirect: null == isClientDirect ? _self.isClientDirect : isClientDirect // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,requesterName: null == requesterName ? _self.requesterName : requesterName // ignore: cast_nullable_to_non_nullable
as String,managerName: freezed == managerName ? _self.managerName : managerName // ignore: cast_nullable_to_non_nullable
as String?,itDecidedByName: freezed == itDecidedByName ? _self.itDecidedByName : itDecidedByName // ignore: cast_nullable_to_non_nullable
as String?,cancelledByName: freezed == cancelledByName ? _self.cancelledByName : cancelledByName // ignore: cast_nullable_to_non_nullable
as String?,completedByName: freezed == completedByName ? _self.completedByName : completedByName // ignore: cast_nullable_to_non_nullable
as String?,item: freezed == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as InventoryItemResDm?,
  ));
}

/// Create a copy of RequestDetailResDm
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InventoryItemResDmCopyWith<$Res>? get item {
    if (_self.item == null) {
    return null;
  }

  return $InventoryItemResDmCopyWith<$Res>(_self.item!, (value) {
    return _then(_self.copyWith(item: value));
  });
}
}

// dart format on
