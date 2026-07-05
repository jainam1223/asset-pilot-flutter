// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_res_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RequestResDm {

 String get id; String get requesterId; String get categoryId; String? get assignedItemId; DateTime? get requestedFrom; DateTime? get requestedTo; DateTime? get assignedFrom; DateTime? get assignedTo; String get status; String get priority; String? get note; bool get requiresMgrApproval; String get mgrApprovalStatus; String? get managerId; String? get managerDecisionNote; DateTime? get managerDecidedAt; String? get itDecidedBy; String? get itDecisionNote; DateTime? get itDecidedAt; String? get rejectedBy; String? get rejectedReason; String? get cancelledBy; DateTime? get cancelledAt; bool get isWfh; String? get shipTrackingUrl; DateTime? get shipInitiatedAt; DateTime? get shipCompletedAt; String? get returnTrackingUrl; DateTime? get returnInitiatedAt; DateTime? get completedAt; String? get completedBy; String? get completedNextStatus; bool get isClientDirect; DateTime? get createdAt; DateTime? get updatedAt; ItemCategoryResDm? get category; ItemResDm? get assignedItem; UserResDm? get requester; UserResDm? get manager;
/// Create a copy of RequestResDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestResDmCopyWith<RequestResDm> get copyWith => _$RequestResDmCopyWithImpl<RequestResDm>(this as RequestResDm, _$identity);

  /// Serializes this RequestResDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.requesterId, requesterId) || other.requesterId == requesterId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.assignedItemId, assignedItemId) || other.assignedItemId == assignedItemId)&&(identical(other.requestedFrom, requestedFrom) || other.requestedFrom == requestedFrom)&&(identical(other.requestedTo, requestedTo) || other.requestedTo == requestedTo)&&(identical(other.assignedFrom, assignedFrom) || other.assignedFrom == assignedFrom)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo)&&(identical(other.status, status) || other.status == status)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.note, note) || other.note == note)&&(identical(other.requiresMgrApproval, requiresMgrApproval) || other.requiresMgrApproval == requiresMgrApproval)&&(identical(other.mgrApprovalStatus, mgrApprovalStatus) || other.mgrApprovalStatus == mgrApprovalStatus)&&(identical(other.managerId, managerId) || other.managerId == managerId)&&(identical(other.managerDecisionNote, managerDecisionNote) || other.managerDecisionNote == managerDecisionNote)&&(identical(other.managerDecidedAt, managerDecidedAt) || other.managerDecidedAt == managerDecidedAt)&&(identical(other.itDecidedBy, itDecidedBy) || other.itDecidedBy == itDecidedBy)&&(identical(other.itDecisionNote, itDecisionNote) || other.itDecisionNote == itDecisionNote)&&(identical(other.itDecidedAt, itDecidedAt) || other.itDecidedAt == itDecidedAt)&&(identical(other.rejectedBy, rejectedBy) || other.rejectedBy == rejectedBy)&&(identical(other.rejectedReason, rejectedReason) || other.rejectedReason == rejectedReason)&&(identical(other.cancelledBy, cancelledBy) || other.cancelledBy == cancelledBy)&&(identical(other.cancelledAt, cancelledAt) || other.cancelledAt == cancelledAt)&&(identical(other.isWfh, isWfh) || other.isWfh == isWfh)&&(identical(other.shipTrackingUrl, shipTrackingUrl) || other.shipTrackingUrl == shipTrackingUrl)&&(identical(other.shipInitiatedAt, shipInitiatedAt) || other.shipInitiatedAt == shipInitiatedAt)&&(identical(other.shipCompletedAt, shipCompletedAt) || other.shipCompletedAt == shipCompletedAt)&&(identical(other.returnTrackingUrl, returnTrackingUrl) || other.returnTrackingUrl == returnTrackingUrl)&&(identical(other.returnInitiatedAt, returnInitiatedAt) || other.returnInitiatedAt == returnInitiatedAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.completedBy, completedBy) || other.completedBy == completedBy)&&(identical(other.completedNextStatus, completedNextStatus) || other.completedNextStatus == completedNextStatus)&&(identical(other.isClientDirect, isClientDirect) || other.isClientDirect == isClientDirect)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.category, category) || other.category == category)&&(identical(other.assignedItem, assignedItem) || other.assignedItem == assignedItem)&&(identical(other.requester, requester) || other.requester == requester)&&(identical(other.manager, manager) || other.manager == manager));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,requesterId,categoryId,assignedItemId,requestedFrom,requestedTo,assignedFrom,assignedTo,status,priority,note,requiresMgrApproval,mgrApprovalStatus,managerId,managerDecisionNote,managerDecidedAt,itDecidedBy,itDecisionNote,itDecidedAt,rejectedBy,rejectedReason,cancelledBy,cancelledAt,isWfh,shipTrackingUrl,shipInitiatedAt,shipCompletedAt,returnTrackingUrl,returnInitiatedAt,completedAt,completedBy,completedNextStatus,isClientDirect,createdAt,updatedAt,category,assignedItem,requester,manager]);

@override
String toString() {
  return 'RequestResDm(id: $id, requesterId: $requesterId, categoryId: $categoryId, assignedItemId: $assignedItemId, requestedFrom: $requestedFrom, requestedTo: $requestedTo, assignedFrom: $assignedFrom, assignedTo: $assignedTo, status: $status, priority: $priority, note: $note, requiresMgrApproval: $requiresMgrApproval, mgrApprovalStatus: $mgrApprovalStatus, managerId: $managerId, managerDecisionNote: $managerDecisionNote, managerDecidedAt: $managerDecidedAt, itDecidedBy: $itDecidedBy, itDecisionNote: $itDecisionNote, itDecidedAt: $itDecidedAt, rejectedBy: $rejectedBy, rejectedReason: $rejectedReason, cancelledBy: $cancelledBy, cancelledAt: $cancelledAt, isWfh: $isWfh, shipTrackingUrl: $shipTrackingUrl, shipInitiatedAt: $shipInitiatedAt, shipCompletedAt: $shipCompletedAt, returnTrackingUrl: $returnTrackingUrl, returnInitiatedAt: $returnInitiatedAt, completedAt: $completedAt, completedBy: $completedBy, completedNextStatus: $completedNextStatus, isClientDirect: $isClientDirect, createdAt: $createdAt, updatedAt: $updatedAt, category: $category, assignedItem: $assignedItem, requester: $requester, manager: $manager)';
}


}

/// @nodoc
abstract mixin class $RequestResDmCopyWith<$Res>  {
  factory $RequestResDmCopyWith(RequestResDm value, $Res Function(RequestResDm) _then) = _$RequestResDmCopyWithImpl;
@useResult
$Res call({
 String id, String requesterId, String categoryId, String? assignedItemId, DateTime? requestedFrom, DateTime? requestedTo, DateTime? assignedFrom, DateTime? assignedTo, String status, String priority, String? note, bool requiresMgrApproval, String mgrApprovalStatus, String? managerId, String? managerDecisionNote, DateTime? managerDecidedAt, String? itDecidedBy, String? itDecisionNote, DateTime? itDecidedAt, String? rejectedBy, String? rejectedReason, String? cancelledBy, DateTime? cancelledAt, bool isWfh, String? shipTrackingUrl, DateTime? shipInitiatedAt, DateTime? shipCompletedAt, String? returnTrackingUrl, DateTime? returnInitiatedAt, DateTime? completedAt, String? completedBy, String? completedNextStatus, bool isClientDirect, DateTime? createdAt, DateTime? updatedAt, ItemCategoryResDm? category, ItemResDm? assignedItem, UserResDm? requester, UserResDm? manager
});


$ItemCategoryResDmCopyWith<$Res>? get category;$ItemResDmCopyWith<$Res>? get assignedItem;$UserResDmCopyWith<$Res>? get requester;$UserResDmCopyWith<$Res>? get manager;

}
/// @nodoc
class _$RequestResDmCopyWithImpl<$Res>
    implements $RequestResDmCopyWith<$Res> {
  _$RequestResDmCopyWithImpl(this._self, this._then);

  final RequestResDm _self;
  final $Res Function(RequestResDm) _then;

/// Create a copy of RequestResDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? requesterId = null,Object? categoryId = null,Object? assignedItemId = freezed,Object? requestedFrom = freezed,Object? requestedTo = freezed,Object? assignedFrom = freezed,Object? assignedTo = freezed,Object? status = null,Object? priority = null,Object? note = freezed,Object? requiresMgrApproval = null,Object? mgrApprovalStatus = null,Object? managerId = freezed,Object? managerDecisionNote = freezed,Object? managerDecidedAt = freezed,Object? itDecidedBy = freezed,Object? itDecisionNote = freezed,Object? itDecidedAt = freezed,Object? rejectedBy = freezed,Object? rejectedReason = freezed,Object? cancelledBy = freezed,Object? cancelledAt = freezed,Object? isWfh = null,Object? shipTrackingUrl = freezed,Object? shipInitiatedAt = freezed,Object? shipCompletedAt = freezed,Object? returnTrackingUrl = freezed,Object? returnInitiatedAt = freezed,Object? completedAt = freezed,Object? completedBy = freezed,Object? completedNextStatus = freezed,Object? isClientDirect = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? category = freezed,Object? assignedItem = freezed,Object? requester = freezed,Object? manager = freezed,}) {
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
as String,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,requiresMgrApproval: null == requiresMgrApproval ? _self.requiresMgrApproval : requiresMgrApproval // ignore: cast_nullable_to_non_nullable
as bool,mgrApprovalStatus: null == mgrApprovalStatus ? _self.mgrApprovalStatus : mgrApprovalStatus // ignore: cast_nullable_to_non_nullable
as String,managerId: freezed == managerId ? _self.managerId : managerId // ignore: cast_nullable_to_non_nullable
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
as String?,isClientDirect: null == isClientDirect ? _self.isClientDirect : isClientDirect // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as ItemCategoryResDm?,assignedItem: freezed == assignedItem ? _self.assignedItem : assignedItem // ignore: cast_nullable_to_non_nullable
as ItemResDm?,requester: freezed == requester ? _self.requester : requester // ignore: cast_nullable_to_non_nullable
as UserResDm?,manager: freezed == manager ? _self.manager : manager // ignore: cast_nullable_to_non_nullable
as UserResDm?,
  ));
}
/// Create a copy of RequestResDm
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemCategoryResDmCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $ItemCategoryResDmCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of RequestResDm
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemResDmCopyWith<$Res>? get assignedItem {
    if (_self.assignedItem == null) {
    return null;
  }

  return $ItemResDmCopyWith<$Res>(_self.assignedItem!, (value) {
    return _then(_self.copyWith(assignedItem: value));
  });
}/// Create a copy of RequestResDm
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserResDmCopyWith<$Res>? get requester {
    if (_self.requester == null) {
    return null;
  }

  return $UserResDmCopyWith<$Res>(_self.requester!, (value) {
    return _then(_self.copyWith(requester: value));
  });
}/// Create a copy of RequestResDm
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserResDmCopyWith<$Res>? get manager {
    if (_self.manager == null) {
    return null;
  }

  return $UserResDmCopyWith<$Res>(_self.manager!, (value) {
    return _then(_self.copyWith(manager: value));
  });
}
}


/// Adds pattern-matching-related methods to [RequestResDm].
extension RequestResDmPatterns on RequestResDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestResDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestResDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestResDm value)  $default,){
final _that = this;
switch (_that) {
case _RequestResDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestResDm value)?  $default,){
final _that = this;
switch (_that) {
case _RequestResDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String requesterId,  String categoryId,  String? assignedItemId,  DateTime? requestedFrom,  DateTime? requestedTo,  DateTime? assignedFrom,  DateTime? assignedTo,  String status,  String priority,  String? note,  bool requiresMgrApproval,  String mgrApprovalStatus,  String? managerId,  String? managerDecisionNote,  DateTime? managerDecidedAt,  String? itDecidedBy,  String? itDecisionNote,  DateTime? itDecidedAt,  String? rejectedBy,  String? rejectedReason,  String? cancelledBy,  DateTime? cancelledAt,  bool isWfh,  String? shipTrackingUrl,  DateTime? shipInitiatedAt,  DateTime? shipCompletedAt,  String? returnTrackingUrl,  DateTime? returnInitiatedAt,  DateTime? completedAt,  String? completedBy,  String? completedNextStatus,  bool isClientDirect,  DateTime? createdAt,  DateTime? updatedAt,  ItemCategoryResDm? category,  ItemResDm? assignedItem,  UserResDm? requester,  UserResDm? manager)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestResDm() when $default != null:
return $default(_that.id,_that.requesterId,_that.categoryId,_that.assignedItemId,_that.requestedFrom,_that.requestedTo,_that.assignedFrom,_that.assignedTo,_that.status,_that.priority,_that.note,_that.requiresMgrApproval,_that.mgrApprovalStatus,_that.managerId,_that.managerDecisionNote,_that.managerDecidedAt,_that.itDecidedBy,_that.itDecisionNote,_that.itDecidedAt,_that.rejectedBy,_that.rejectedReason,_that.cancelledBy,_that.cancelledAt,_that.isWfh,_that.shipTrackingUrl,_that.shipInitiatedAt,_that.shipCompletedAt,_that.returnTrackingUrl,_that.returnInitiatedAt,_that.completedAt,_that.completedBy,_that.completedNextStatus,_that.isClientDirect,_that.createdAt,_that.updatedAt,_that.category,_that.assignedItem,_that.requester,_that.manager);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String requesterId,  String categoryId,  String? assignedItemId,  DateTime? requestedFrom,  DateTime? requestedTo,  DateTime? assignedFrom,  DateTime? assignedTo,  String status,  String priority,  String? note,  bool requiresMgrApproval,  String mgrApprovalStatus,  String? managerId,  String? managerDecisionNote,  DateTime? managerDecidedAt,  String? itDecidedBy,  String? itDecisionNote,  DateTime? itDecidedAt,  String? rejectedBy,  String? rejectedReason,  String? cancelledBy,  DateTime? cancelledAt,  bool isWfh,  String? shipTrackingUrl,  DateTime? shipInitiatedAt,  DateTime? shipCompletedAt,  String? returnTrackingUrl,  DateTime? returnInitiatedAt,  DateTime? completedAt,  String? completedBy,  String? completedNextStatus,  bool isClientDirect,  DateTime? createdAt,  DateTime? updatedAt,  ItemCategoryResDm? category,  ItemResDm? assignedItem,  UserResDm? requester,  UserResDm? manager)  $default,) {final _that = this;
switch (_that) {
case _RequestResDm():
return $default(_that.id,_that.requesterId,_that.categoryId,_that.assignedItemId,_that.requestedFrom,_that.requestedTo,_that.assignedFrom,_that.assignedTo,_that.status,_that.priority,_that.note,_that.requiresMgrApproval,_that.mgrApprovalStatus,_that.managerId,_that.managerDecisionNote,_that.managerDecidedAt,_that.itDecidedBy,_that.itDecisionNote,_that.itDecidedAt,_that.rejectedBy,_that.rejectedReason,_that.cancelledBy,_that.cancelledAt,_that.isWfh,_that.shipTrackingUrl,_that.shipInitiatedAt,_that.shipCompletedAt,_that.returnTrackingUrl,_that.returnInitiatedAt,_that.completedAt,_that.completedBy,_that.completedNextStatus,_that.isClientDirect,_that.createdAt,_that.updatedAt,_that.category,_that.assignedItem,_that.requester,_that.manager);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String requesterId,  String categoryId,  String? assignedItemId,  DateTime? requestedFrom,  DateTime? requestedTo,  DateTime? assignedFrom,  DateTime? assignedTo,  String status,  String priority,  String? note,  bool requiresMgrApproval,  String mgrApprovalStatus,  String? managerId,  String? managerDecisionNote,  DateTime? managerDecidedAt,  String? itDecidedBy,  String? itDecisionNote,  DateTime? itDecidedAt,  String? rejectedBy,  String? rejectedReason,  String? cancelledBy,  DateTime? cancelledAt,  bool isWfh,  String? shipTrackingUrl,  DateTime? shipInitiatedAt,  DateTime? shipCompletedAt,  String? returnTrackingUrl,  DateTime? returnInitiatedAt,  DateTime? completedAt,  String? completedBy,  String? completedNextStatus,  bool isClientDirect,  DateTime? createdAt,  DateTime? updatedAt,  ItemCategoryResDm? category,  ItemResDm? assignedItem,  UserResDm? requester,  UserResDm? manager)?  $default,) {final _that = this;
switch (_that) {
case _RequestResDm() when $default != null:
return $default(_that.id,_that.requesterId,_that.categoryId,_that.assignedItemId,_that.requestedFrom,_that.requestedTo,_that.assignedFrom,_that.assignedTo,_that.status,_that.priority,_that.note,_that.requiresMgrApproval,_that.mgrApprovalStatus,_that.managerId,_that.managerDecisionNote,_that.managerDecidedAt,_that.itDecidedBy,_that.itDecisionNote,_that.itDecidedAt,_that.rejectedBy,_that.rejectedReason,_that.cancelledBy,_that.cancelledAt,_that.isWfh,_that.shipTrackingUrl,_that.shipInitiatedAt,_that.shipCompletedAt,_that.returnTrackingUrl,_that.returnInitiatedAt,_that.completedAt,_that.completedBy,_that.completedNextStatus,_that.isClientDirect,_that.createdAt,_that.updatedAt,_that.category,_that.assignedItem,_that.requester,_that.manager);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestResDm implements RequestResDm {
  const _RequestResDm({this.id = '', this.requesterId = '', this.categoryId = '', this.assignedItemId, this.requestedFrom, this.requestedTo, this.assignedFrom, this.assignedTo, this.status = 'requested', this.priority = 'medium', this.note, this.requiresMgrApproval = false, this.mgrApprovalStatus = 'not_required', this.managerId, this.managerDecisionNote, this.managerDecidedAt, this.itDecidedBy, this.itDecisionNote, this.itDecidedAt, this.rejectedBy, this.rejectedReason, this.cancelledBy, this.cancelledAt, this.isWfh = false, this.shipTrackingUrl, this.shipInitiatedAt, this.shipCompletedAt, this.returnTrackingUrl, this.returnInitiatedAt, this.completedAt, this.completedBy, this.completedNextStatus, this.isClientDirect = false, this.createdAt, this.updatedAt, this.category, this.assignedItem, this.requester, this.manager});
  factory _RequestResDm.fromJson(Map<String, dynamic> json) => _$RequestResDmFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String requesterId;
@override@JsonKey() final  String categoryId;
@override final  String? assignedItemId;
@override final  DateTime? requestedFrom;
@override final  DateTime? requestedTo;
@override final  DateTime? assignedFrom;
@override final  DateTime? assignedTo;
@override@JsonKey() final  String status;
@override@JsonKey() final  String priority;
@override final  String? note;
@override@JsonKey() final  bool requiresMgrApproval;
@override@JsonKey() final  String mgrApprovalStatus;
@override final  String? managerId;
@override final  String? managerDecisionNote;
@override final  DateTime? managerDecidedAt;
@override final  String? itDecidedBy;
@override final  String? itDecisionNote;
@override final  DateTime? itDecidedAt;
@override final  String? rejectedBy;
@override final  String? rejectedReason;
@override final  String? cancelledBy;
@override final  DateTime? cancelledAt;
@override@JsonKey() final  bool isWfh;
@override final  String? shipTrackingUrl;
@override final  DateTime? shipInitiatedAt;
@override final  DateTime? shipCompletedAt;
@override final  String? returnTrackingUrl;
@override final  DateTime? returnInitiatedAt;
@override final  DateTime? completedAt;
@override final  String? completedBy;
@override final  String? completedNextStatus;
@override@JsonKey() final  bool isClientDirect;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override final  ItemCategoryResDm? category;
@override final  ItemResDm? assignedItem;
@override final  UserResDm? requester;
@override final  UserResDm? manager;

/// Create a copy of RequestResDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestResDmCopyWith<_RequestResDm> get copyWith => __$RequestResDmCopyWithImpl<_RequestResDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestResDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.requesterId, requesterId) || other.requesterId == requesterId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.assignedItemId, assignedItemId) || other.assignedItemId == assignedItemId)&&(identical(other.requestedFrom, requestedFrom) || other.requestedFrom == requestedFrom)&&(identical(other.requestedTo, requestedTo) || other.requestedTo == requestedTo)&&(identical(other.assignedFrom, assignedFrom) || other.assignedFrom == assignedFrom)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo)&&(identical(other.status, status) || other.status == status)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.note, note) || other.note == note)&&(identical(other.requiresMgrApproval, requiresMgrApproval) || other.requiresMgrApproval == requiresMgrApproval)&&(identical(other.mgrApprovalStatus, mgrApprovalStatus) || other.mgrApprovalStatus == mgrApprovalStatus)&&(identical(other.managerId, managerId) || other.managerId == managerId)&&(identical(other.managerDecisionNote, managerDecisionNote) || other.managerDecisionNote == managerDecisionNote)&&(identical(other.managerDecidedAt, managerDecidedAt) || other.managerDecidedAt == managerDecidedAt)&&(identical(other.itDecidedBy, itDecidedBy) || other.itDecidedBy == itDecidedBy)&&(identical(other.itDecisionNote, itDecisionNote) || other.itDecisionNote == itDecisionNote)&&(identical(other.itDecidedAt, itDecidedAt) || other.itDecidedAt == itDecidedAt)&&(identical(other.rejectedBy, rejectedBy) || other.rejectedBy == rejectedBy)&&(identical(other.rejectedReason, rejectedReason) || other.rejectedReason == rejectedReason)&&(identical(other.cancelledBy, cancelledBy) || other.cancelledBy == cancelledBy)&&(identical(other.cancelledAt, cancelledAt) || other.cancelledAt == cancelledAt)&&(identical(other.isWfh, isWfh) || other.isWfh == isWfh)&&(identical(other.shipTrackingUrl, shipTrackingUrl) || other.shipTrackingUrl == shipTrackingUrl)&&(identical(other.shipInitiatedAt, shipInitiatedAt) || other.shipInitiatedAt == shipInitiatedAt)&&(identical(other.shipCompletedAt, shipCompletedAt) || other.shipCompletedAt == shipCompletedAt)&&(identical(other.returnTrackingUrl, returnTrackingUrl) || other.returnTrackingUrl == returnTrackingUrl)&&(identical(other.returnInitiatedAt, returnInitiatedAt) || other.returnInitiatedAt == returnInitiatedAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.completedBy, completedBy) || other.completedBy == completedBy)&&(identical(other.completedNextStatus, completedNextStatus) || other.completedNextStatus == completedNextStatus)&&(identical(other.isClientDirect, isClientDirect) || other.isClientDirect == isClientDirect)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.category, category) || other.category == category)&&(identical(other.assignedItem, assignedItem) || other.assignedItem == assignedItem)&&(identical(other.requester, requester) || other.requester == requester)&&(identical(other.manager, manager) || other.manager == manager));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,requesterId,categoryId,assignedItemId,requestedFrom,requestedTo,assignedFrom,assignedTo,status,priority,note,requiresMgrApproval,mgrApprovalStatus,managerId,managerDecisionNote,managerDecidedAt,itDecidedBy,itDecisionNote,itDecidedAt,rejectedBy,rejectedReason,cancelledBy,cancelledAt,isWfh,shipTrackingUrl,shipInitiatedAt,shipCompletedAt,returnTrackingUrl,returnInitiatedAt,completedAt,completedBy,completedNextStatus,isClientDirect,createdAt,updatedAt,category,assignedItem,requester,manager]);

@override
String toString() {
  return 'RequestResDm(id: $id, requesterId: $requesterId, categoryId: $categoryId, assignedItemId: $assignedItemId, requestedFrom: $requestedFrom, requestedTo: $requestedTo, assignedFrom: $assignedFrom, assignedTo: $assignedTo, status: $status, priority: $priority, note: $note, requiresMgrApproval: $requiresMgrApproval, mgrApprovalStatus: $mgrApprovalStatus, managerId: $managerId, managerDecisionNote: $managerDecisionNote, managerDecidedAt: $managerDecidedAt, itDecidedBy: $itDecidedBy, itDecisionNote: $itDecisionNote, itDecidedAt: $itDecidedAt, rejectedBy: $rejectedBy, rejectedReason: $rejectedReason, cancelledBy: $cancelledBy, cancelledAt: $cancelledAt, isWfh: $isWfh, shipTrackingUrl: $shipTrackingUrl, shipInitiatedAt: $shipInitiatedAt, shipCompletedAt: $shipCompletedAt, returnTrackingUrl: $returnTrackingUrl, returnInitiatedAt: $returnInitiatedAt, completedAt: $completedAt, completedBy: $completedBy, completedNextStatus: $completedNextStatus, isClientDirect: $isClientDirect, createdAt: $createdAt, updatedAt: $updatedAt, category: $category, assignedItem: $assignedItem, requester: $requester, manager: $manager)';
}


}

/// @nodoc
abstract mixin class _$RequestResDmCopyWith<$Res> implements $RequestResDmCopyWith<$Res> {
  factory _$RequestResDmCopyWith(_RequestResDm value, $Res Function(_RequestResDm) _then) = __$RequestResDmCopyWithImpl;
@override @useResult
$Res call({
 String id, String requesterId, String categoryId, String? assignedItemId, DateTime? requestedFrom, DateTime? requestedTo, DateTime? assignedFrom, DateTime? assignedTo, String status, String priority, String? note, bool requiresMgrApproval, String mgrApprovalStatus, String? managerId, String? managerDecisionNote, DateTime? managerDecidedAt, String? itDecidedBy, String? itDecisionNote, DateTime? itDecidedAt, String? rejectedBy, String? rejectedReason, String? cancelledBy, DateTime? cancelledAt, bool isWfh, String? shipTrackingUrl, DateTime? shipInitiatedAt, DateTime? shipCompletedAt, String? returnTrackingUrl, DateTime? returnInitiatedAt, DateTime? completedAt, String? completedBy, String? completedNextStatus, bool isClientDirect, DateTime? createdAt, DateTime? updatedAt, ItemCategoryResDm? category, ItemResDm? assignedItem, UserResDm? requester, UserResDm? manager
});


@override $ItemCategoryResDmCopyWith<$Res>? get category;@override $ItemResDmCopyWith<$Res>? get assignedItem;@override $UserResDmCopyWith<$Res>? get requester;@override $UserResDmCopyWith<$Res>? get manager;

}
/// @nodoc
class __$RequestResDmCopyWithImpl<$Res>
    implements _$RequestResDmCopyWith<$Res> {
  __$RequestResDmCopyWithImpl(this._self, this._then);

  final _RequestResDm _self;
  final $Res Function(_RequestResDm) _then;

/// Create a copy of RequestResDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? requesterId = null,Object? categoryId = null,Object? assignedItemId = freezed,Object? requestedFrom = freezed,Object? requestedTo = freezed,Object? assignedFrom = freezed,Object? assignedTo = freezed,Object? status = null,Object? priority = null,Object? note = freezed,Object? requiresMgrApproval = null,Object? mgrApprovalStatus = null,Object? managerId = freezed,Object? managerDecisionNote = freezed,Object? managerDecidedAt = freezed,Object? itDecidedBy = freezed,Object? itDecisionNote = freezed,Object? itDecidedAt = freezed,Object? rejectedBy = freezed,Object? rejectedReason = freezed,Object? cancelledBy = freezed,Object? cancelledAt = freezed,Object? isWfh = null,Object? shipTrackingUrl = freezed,Object? shipInitiatedAt = freezed,Object? shipCompletedAt = freezed,Object? returnTrackingUrl = freezed,Object? returnInitiatedAt = freezed,Object? completedAt = freezed,Object? completedBy = freezed,Object? completedNextStatus = freezed,Object? isClientDirect = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? category = freezed,Object? assignedItem = freezed,Object? requester = freezed,Object? manager = freezed,}) {
  return _then(_RequestResDm(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,requesterId: null == requesterId ? _self.requesterId : requesterId // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,assignedItemId: freezed == assignedItemId ? _self.assignedItemId : assignedItemId // ignore: cast_nullable_to_non_nullable
as String?,requestedFrom: freezed == requestedFrom ? _self.requestedFrom : requestedFrom // ignore: cast_nullable_to_non_nullable
as DateTime?,requestedTo: freezed == requestedTo ? _self.requestedTo : requestedTo // ignore: cast_nullable_to_non_nullable
as DateTime?,assignedFrom: freezed == assignedFrom ? _self.assignedFrom : assignedFrom // ignore: cast_nullable_to_non_nullable
as DateTime?,assignedTo: freezed == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,requiresMgrApproval: null == requiresMgrApproval ? _self.requiresMgrApproval : requiresMgrApproval // ignore: cast_nullable_to_non_nullable
as bool,mgrApprovalStatus: null == mgrApprovalStatus ? _self.mgrApprovalStatus : mgrApprovalStatus // ignore: cast_nullable_to_non_nullable
as String,managerId: freezed == managerId ? _self.managerId : managerId // ignore: cast_nullable_to_non_nullable
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
as String?,isClientDirect: null == isClientDirect ? _self.isClientDirect : isClientDirect // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as ItemCategoryResDm?,assignedItem: freezed == assignedItem ? _self.assignedItem : assignedItem // ignore: cast_nullable_to_non_nullable
as ItemResDm?,requester: freezed == requester ? _self.requester : requester // ignore: cast_nullable_to_non_nullable
as UserResDm?,manager: freezed == manager ? _self.manager : manager // ignore: cast_nullable_to_non_nullable
as UserResDm?,
  ));
}

/// Create a copy of RequestResDm
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemCategoryResDmCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $ItemCategoryResDmCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of RequestResDm
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemResDmCopyWith<$Res>? get assignedItem {
    if (_self.assignedItem == null) {
    return null;
  }

  return $ItemResDmCopyWith<$Res>(_self.assignedItem!, (value) {
    return _then(_self.copyWith(assignedItem: value));
  });
}/// Create a copy of RequestResDm
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserResDmCopyWith<$Res>? get requester {
    if (_self.requester == null) {
    return null;
  }

  return $UserResDmCopyWith<$Res>(_self.requester!, (value) {
    return _then(_self.copyWith(requester: value));
  });
}/// Create a copy of RequestResDm
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserResDmCopyWith<$Res>? get manager {
    if (_self.manager == null) {
    return null;
  }

  return $UserResDmCopyWith<$Res>(_self.manager!, (value) {
    return _then(_self.copyWith(manager: value));
  });
}
}

// dart format on
