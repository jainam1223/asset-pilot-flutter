// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'extension_request_detail_res_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExtensionRequestDetailResDm {

 String get id;@JsonKey(name: 'original_request_id') String get originalRequestId;@JsonKey(name: 'requester_id') String get requesterId;@JsonKey(name: 'current_assigned_to') DateTime? get currentAssignedTo;@JsonKey(name: 'extended_to') DateTime? get extendedTo; ExtensionStatus get status;@JsonKey(name: 'requires_mgr_approval') bool get requiresMgrApproval;@JsonKey(name: 'manager_id') String? get managerId;@JsonKey(name: 'mgr_approval_status') MgrApprovalStatus get mgrApprovalStatus;@JsonKey(name: 'manager_note') String? get managerNote;@JsonKey(name: 'manager_decided_at') DateTime? get managerDecidedAt;@JsonKey(name: 'it_decided_by') String? get itDecidedBy;@JsonKey(name: 'it_note') String? get itNote;@JsonKey(name: 'it_decided_at') DateTime? get itDecidedAt;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt; RequestSummaryResDm? get request; InventoryItemResDm? get item; UserResDm? get requester;
/// Create a copy of ExtensionRequestDetailResDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExtensionRequestDetailResDmCopyWith<ExtensionRequestDetailResDm> get copyWith => _$ExtensionRequestDetailResDmCopyWithImpl<ExtensionRequestDetailResDm>(this as ExtensionRequestDetailResDm, _$identity);

  /// Serializes this ExtensionRequestDetailResDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExtensionRequestDetailResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.originalRequestId, originalRequestId) || other.originalRequestId == originalRequestId)&&(identical(other.requesterId, requesterId) || other.requesterId == requesterId)&&(identical(other.currentAssignedTo, currentAssignedTo) || other.currentAssignedTo == currentAssignedTo)&&(identical(other.extendedTo, extendedTo) || other.extendedTo == extendedTo)&&(identical(other.status, status) || other.status == status)&&(identical(other.requiresMgrApproval, requiresMgrApproval) || other.requiresMgrApproval == requiresMgrApproval)&&(identical(other.managerId, managerId) || other.managerId == managerId)&&(identical(other.mgrApprovalStatus, mgrApprovalStatus) || other.mgrApprovalStatus == mgrApprovalStatus)&&(identical(other.managerNote, managerNote) || other.managerNote == managerNote)&&(identical(other.managerDecidedAt, managerDecidedAt) || other.managerDecidedAt == managerDecidedAt)&&(identical(other.itDecidedBy, itDecidedBy) || other.itDecidedBy == itDecidedBy)&&(identical(other.itNote, itNote) || other.itNote == itNote)&&(identical(other.itDecidedAt, itDecidedAt) || other.itDecidedAt == itDecidedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.request, request) || other.request == request)&&(identical(other.item, item) || other.item == item)&&(identical(other.requester, requester) || other.requester == requester));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,originalRequestId,requesterId,currentAssignedTo,extendedTo,status,requiresMgrApproval,managerId,mgrApprovalStatus,managerNote,managerDecidedAt,itDecidedBy,itNote,itDecidedAt,createdAt,updatedAt,request,item,requester]);

@override
String toString() {
  return 'ExtensionRequestDetailResDm(id: $id, originalRequestId: $originalRequestId, requesterId: $requesterId, currentAssignedTo: $currentAssignedTo, extendedTo: $extendedTo, status: $status, requiresMgrApproval: $requiresMgrApproval, managerId: $managerId, mgrApprovalStatus: $mgrApprovalStatus, managerNote: $managerNote, managerDecidedAt: $managerDecidedAt, itDecidedBy: $itDecidedBy, itNote: $itNote, itDecidedAt: $itDecidedAt, createdAt: $createdAt, updatedAt: $updatedAt, request: $request, item: $item, requester: $requester)';
}


}

/// @nodoc
abstract mixin class $ExtensionRequestDetailResDmCopyWith<$Res>  {
  factory $ExtensionRequestDetailResDmCopyWith(ExtensionRequestDetailResDm value, $Res Function(ExtensionRequestDetailResDm) _then) = _$ExtensionRequestDetailResDmCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'original_request_id') String originalRequestId,@JsonKey(name: 'requester_id') String requesterId,@JsonKey(name: 'current_assigned_to') DateTime? currentAssignedTo,@JsonKey(name: 'extended_to') DateTime? extendedTo, ExtensionStatus status,@JsonKey(name: 'requires_mgr_approval') bool requiresMgrApproval,@JsonKey(name: 'manager_id') String? managerId,@JsonKey(name: 'mgr_approval_status') MgrApprovalStatus mgrApprovalStatus,@JsonKey(name: 'manager_note') String? managerNote,@JsonKey(name: 'manager_decided_at') DateTime? managerDecidedAt,@JsonKey(name: 'it_decided_by') String? itDecidedBy,@JsonKey(name: 'it_note') String? itNote,@JsonKey(name: 'it_decided_at') DateTime? itDecidedAt,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt, RequestSummaryResDm? request, InventoryItemResDm? item, UserResDm? requester
});


$RequestSummaryResDmCopyWith<$Res>? get request;$InventoryItemResDmCopyWith<$Res>? get item;$UserResDmCopyWith<$Res>? get requester;

}
/// @nodoc
class _$ExtensionRequestDetailResDmCopyWithImpl<$Res>
    implements $ExtensionRequestDetailResDmCopyWith<$Res> {
  _$ExtensionRequestDetailResDmCopyWithImpl(this._self, this._then);

  final ExtensionRequestDetailResDm _self;
  final $Res Function(ExtensionRequestDetailResDm) _then;

/// Create a copy of ExtensionRequestDetailResDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? originalRequestId = null,Object? requesterId = null,Object? currentAssignedTo = freezed,Object? extendedTo = freezed,Object? status = null,Object? requiresMgrApproval = null,Object? managerId = freezed,Object? mgrApprovalStatus = null,Object? managerNote = freezed,Object? managerDecidedAt = freezed,Object? itDecidedBy = freezed,Object? itNote = freezed,Object? itDecidedAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? request = freezed,Object? item = freezed,Object? requester = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,originalRequestId: null == originalRequestId ? _self.originalRequestId : originalRequestId // ignore: cast_nullable_to_non_nullable
as String,requesterId: null == requesterId ? _self.requesterId : requesterId // ignore: cast_nullable_to_non_nullable
as String,currentAssignedTo: freezed == currentAssignedTo ? _self.currentAssignedTo : currentAssignedTo // ignore: cast_nullable_to_non_nullable
as DateTime?,extendedTo: freezed == extendedTo ? _self.extendedTo : extendedTo // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ExtensionStatus,requiresMgrApproval: null == requiresMgrApproval ? _self.requiresMgrApproval : requiresMgrApproval // ignore: cast_nullable_to_non_nullable
as bool,managerId: freezed == managerId ? _self.managerId : managerId // ignore: cast_nullable_to_non_nullable
as String?,mgrApprovalStatus: null == mgrApprovalStatus ? _self.mgrApprovalStatus : mgrApprovalStatus // ignore: cast_nullable_to_non_nullable
as MgrApprovalStatus,managerNote: freezed == managerNote ? _self.managerNote : managerNote // ignore: cast_nullable_to_non_nullable
as String?,managerDecidedAt: freezed == managerDecidedAt ? _self.managerDecidedAt : managerDecidedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,itDecidedBy: freezed == itDecidedBy ? _self.itDecidedBy : itDecidedBy // ignore: cast_nullable_to_non_nullable
as String?,itNote: freezed == itNote ? _self.itNote : itNote // ignore: cast_nullable_to_non_nullable
as String?,itDecidedAt: freezed == itDecidedAt ? _self.itDecidedAt : itDecidedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,request: freezed == request ? _self.request : request // ignore: cast_nullable_to_non_nullable
as RequestSummaryResDm?,item: freezed == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as InventoryItemResDm?,requester: freezed == requester ? _self.requester : requester // ignore: cast_nullable_to_non_nullable
as UserResDm?,
  ));
}
/// Create a copy of ExtensionRequestDetailResDm
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestSummaryResDmCopyWith<$Res>? get request {
    if (_self.request == null) {
    return null;
  }

  return $RequestSummaryResDmCopyWith<$Res>(_self.request!, (value) {
    return _then(_self.copyWith(request: value));
  });
}/// Create a copy of ExtensionRequestDetailResDm
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
}/// Create a copy of ExtensionRequestDetailResDm
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
}
}


/// Adds pattern-matching-related methods to [ExtensionRequestDetailResDm].
extension ExtensionRequestDetailResDmPatterns on ExtensionRequestDetailResDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExtensionRequestDetailResDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExtensionRequestDetailResDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExtensionRequestDetailResDm value)  $default,){
final _that = this;
switch (_that) {
case _ExtensionRequestDetailResDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExtensionRequestDetailResDm value)?  $default,){
final _that = this;
switch (_that) {
case _ExtensionRequestDetailResDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'original_request_id')  String originalRequestId, @JsonKey(name: 'requester_id')  String requesterId, @JsonKey(name: 'current_assigned_to')  DateTime? currentAssignedTo, @JsonKey(name: 'extended_to')  DateTime? extendedTo,  ExtensionStatus status, @JsonKey(name: 'requires_mgr_approval')  bool requiresMgrApproval, @JsonKey(name: 'manager_id')  String? managerId, @JsonKey(name: 'mgr_approval_status')  MgrApprovalStatus mgrApprovalStatus, @JsonKey(name: 'manager_note')  String? managerNote, @JsonKey(name: 'manager_decided_at')  DateTime? managerDecidedAt, @JsonKey(name: 'it_decided_by')  String? itDecidedBy, @JsonKey(name: 'it_note')  String? itNote, @JsonKey(name: 'it_decided_at')  DateTime? itDecidedAt, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt,  RequestSummaryResDm? request,  InventoryItemResDm? item,  UserResDm? requester)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExtensionRequestDetailResDm() when $default != null:
return $default(_that.id,_that.originalRequestId,_that.requesterId,_that.currentAssignedTo,_that.extendedTo,_that.status,_that.requiresMgrApproval,_that.managerId,_that.mgrApprovalStatus,_that.managerNote,_that.managerDecidedAt,_that.itDecidedBy,_that.itNote,_that.itDecidedAt,_that.createdAt,_that.updatedAt,_that.request,_that.item,_that.requester);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'original_request_id')  String originalRequestId, @JsonKey(name: 'requester_id')  String requesterId, @JsonKey(name: 'current_assigned_to')  DateTime? currentAssignedTo, @JsonKey(name: 'extended_to')  DateTime? extendedTo,  ExtensionStatus status, @JsonKey(name: 'requires_mgr_approval')  bool requiresMgrApproval, @JsonKey(name: 'manager_id')  String? managerId, @JsonKey(name: 'mgr_approval_status')  MgrApprovalStatus mgrApprovalStatus, @JsonKey(name: 'manager_note')  String? managerNote, @JsonKey(name: 'manager_decided_at')  DateTime? managerDecidedAt, @JsonKey(name: 'it_decided_by')  String? itDecidedBy, @JsonKey(name: 'it_note')  String? itNote, @JsonKey(name: 'it_decided_at')  DateTime? itDecidedAt, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt,  RequestSummaryResDm? request,  InventoryItemResDm? item,  UserResDm? requester)  $default,) {final _that = this;
switch (_that) {
case _ExtensionRequestDetailResDm():
return $default(_that.id,_that.originalRequestId,_that.requesterId,_that.currentAssignedTo,_that.extendedTo,_that.status,_that.requiresMgrApproval,_that.managerId,_that.mgrApprovalStatus,_that.managerNote,_that.managerDecidedAt,_that.itDecidedBy,_that.itNote,_that.itDecidedAt,_that.createdAt,_that.updatedAt,_that.request,_that.item,_that.requester);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'original_request_id')  String originalRequestId, @JsonKey(name: 'requester_id')  String requesterId, @JsonKey(name: 'current_assigned_to')  DateTime? currentAssignedTo, @JsonKey(name: 'extended_to')  DateTime? extendedTo,  ExtensionStatus status, @JsonKey(name: 'requires_mgr_approval')  bool requiresMgrApproval, @JsonKey(name: 'manager_id')  String? managerId, @JsonKey(name: 'mgr_approval_status')  MgrApprovalStatus mgrApprovalStatus, @JsonKey(name: 'manager_note')  String? managerNote, @JsonKey(name: 'manager_decided_at')  DateTime? managerDecidedAt, @JsonKey(name: 'it_decided_by')  String? itDecidedBy, @JsonKey(name: 'it_note')  String? itNote, @JsonKey(name: 'it_decided_at')  DateTime? itDecidedAt, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt,  RequestSummaryResDm? request,  InventoryItemResDm? item,  UserResDm? requester)?  $default,) {final _that = this;
switch (_that) {
case _ExtensionRequestDetailResDm() when $default != null:
return $default(_that.id,_that.originalRequestId,_that.requesterId,_that.currentAssignedTo,_that.extendedTo,_that.status,_that.requiresMgrApproval,_that.managerId,_that.mgrApprovalStatus,_that.managerNote,_that.managerDecidedAt,_that.itDecidedBy,_that.itNote,_that.itDecidedAt,_that.createdAt,_that.updatedAt,_that.request,_that.item,_that.requester);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExtensionRequestDetailResDm implements ExtensionRequestDetailResDm {
  const _ExtensionRequestDetailResDm({this.id = '', @JsonKey(name: 'original_request_id') this.originalRequestId = '', @JsonKey(name: 'requester_id') this.requesterId = '', @JsonKey(name: 'current_assigned_to') this.currentAssignedTo, @JsonKey(name: 'extended_to') this.extendedTo, this.status = ExtensionStatus.pending, @JsonKey(name: 'requires_mgr_approval') this.requiresMgrApproval = false, @JsonKey(name: 'manager_id') this.managerId, @JsonKey(name: 'mgr_approval_status') this.mgrApprovalStatus = MgrApprovalStatus.notRequired, @JsonKey(name: 'manager_note') this.managerNote, @JsonKey(name: 'manager_decided_at') this.managerDecidedAt, @JsonKey(name: 'it_decided_by') this.itDecidedBy, @JsonKey(name: 'it_note') this.itNote, @JsonKey(name: 'it_decided_at') this.itDecidedAt, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, this.request, this.item, this.requester});
  factory _ExtensionRequestDetailResDm.fromJson(Map<String, dynamic> json) => _$ExtensionRequestDetailResDmFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey(name: 'original_request_id') final  String originalRequestId;
@override@JsonKey(name: 'requester_id') final  String requesterId;
@override@JsonKey(name: 'current_assigned_to') final  DateTime? currentAssignedTo;
@override@JsonKey(name: 'extended_to') final  DateTime? extendedTo;
@override@JsonKey() final  ExtensionStatus status;
@override@JsonKey(name: 'requires_mgr_approval') final  bool requiresMgrApproval;
@override@JsonKey(name: 'manager_id') final  String? managerId;
@override@JsonKey(name: 'mgr_approval_status') final  MgrApprovalStatus mgrApprovalStatus;
@override@JsonKey(name: 'manager_note') final  String? managerNote;
@override@JsonKey(name: 'manager_decided_at') final  DateTime? managerDecidedAt;
@override@JsonKey(name: 'it_decided_by') final  String? itDecidedBy;
@override@JsonKey(name: 'it_note') final  String? itNote;
@override@JsonKey(name: 'it_decided_at') final  DateTime? itDecidedAt;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;
@override final  RequestSummaryResDm? request;
@override final  InventoryItemResDm? item;
@override final  UserResDm? requester;

/// Create a copy of ExtensionRequestDetailResDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExtensionRequestDetailResDmCopyWith<_ExtensionRequestDetailResDm> get copyWith => __$ExtensionRequestDetailResDmCopyWithImpl<_ExtensionRequestDetailResDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExtensionRequestDetailResDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExtensionRequestDetailResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.originalRequestId, originalRequestId) || other.originalRequestId == originalRequestId)&&(identical(other.requesterId, requesterId) || other.requesterId == requesterId)&&(identical(other.currentAssignedTo, currentAssignedTo) || other.currentAssignedTo == currentAssignedTo)&&(identical(other.extendedTo, extendedTo) || other.extendedTo == extendedTo)&&(identical(other.status, status) || other.status == status)&&(identical(other.requiresMgrApproval, requiresMgrApproval) || other.requiresMgrApproval == requiresMgrApproval)&&(identical(other.managerId, managerId) || other.managerId == managerId)&&(identical(other.mgrApprovalStatus, mgrApprovalStatus) || other.mgrApprovalStatus == mgrApprovalStatus)&&(identical(other.managerNote, managerNote) || other.managerNote == managerNote)&&(identical(other.managerDecidedAt, managerDecidedAt) || other.managerDecidedAt == managerDecidedAt)&&(identical(other.itDecidedBy, itDecidedBy) || other.itDecidedBy == itDecidedBy)&&(identical(other.itNote, itNote) || other.itNote == itNote)&&(identical(other.itDecidedAt, itDecidedAt) || other.itDecidedAt == itDecidedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.request, request) || other.request == request)&&(identical(other.item, item) || other.item == item)&&(identical(other.requester, requester) || other.requester == requester));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,originalRequestId,requesterId,currentAssignedTo,extendedTo,status,requiresMgrApproval,managerId,mgrApprovalStatus,managerNote,managerDecidedAt,itDecidedBy,itNote,itDecidedAt,createdAt,updatedAt,request,item,requester]);

@override
String toString() {
  return 'ExtensionRequestDetailResDm(id: $id, originalRequestId: $originalRequestId, requesterId: $requesterId, currentAssignedTo: $currentAssignedTo, extendedTo: $extendedTo, status: $status, requiresMgrApproval: $requiresMgrApproval, managerId: $managerId, mgrApprovalStatus: $mgrApprovalStatus, managerNote: $managerNote, managerDecidedAt: $managerDecidedAt, itDecidedBy: $itDecidedBy, itNote: $itNote, itDecidedAt: $itDecidedAt, createdAt: $createdAt, updatedAt: $updatedAt, request: $request, item: $item, requester: $requester)';
}


}

/// @nodoc
abstract mixin class _$ExtensionRequestDetailResDmCopyWith<$Res> implements $ExtensionRequestDetailResDmCopyWith<$Res> {
  factory _$ExtensionRequestDetailResDmCopyWith(_ExtensionRequestDetailResDm value, $Res Function(_ExtensionRequestDetailResDm) _then) = __$ExtensionRequestDetailResDmCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'original_request_id') String originalRequestId,@JsonKey(name: 'requester_id') String requesterId,@JsonKey(name: 'current_assigned_to') DateTime? currentAssignedTo,@JsonKey(name: 'extended_to') DateTime? extendedTo, ExtensionStatus status,@JsonKey(name: 'requires_mgr_approval') bool requiresMgrApproval,@JsonKey(name: 'manager_id') String? managerId,@JsonKey(name: 'mgr_approval_status') MgrApprovalStatus mgrApprovalStatus,@JsonKey(name: 'manager_note') String? managerNote,@JsonKey(name: 'manager_decided_at') DateTime? managerDecidedAt,@JsonKey(name: 'it_decided_by') String? itDecidedBy,@JsonKey(name: 'it_note') String? itNote,@JsonKey(name: 'it_decided_at') DateTime? itDecidedAt,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt, RequestSummaryResDm? request, InventoryItemResDm? item, UserResDm? requester
});


@override $RequestSummaryResDmCopyWith<$Res>? get request;@override $InventoryItemResDmCopyWith<$Res>? get item;@override $UserResDmCopyWith<$Res>? get requester;

}
/// @nodoc
class __$ExtensionRequestDetailResDmCopyWithImpl<$Res>
    implements _$ExtensionRequestDetailResDmCopyWith<$Res> {
  __$ExtensionRequestDetailResDmCopyWithImpl(this._self, this._then);

  final _ExtensionRequestDetailResDm _self;
  final $Res Function(_ExtensionRequestDetailResDm) _then;

/// Create a copy of ExtensionRequestDetailResDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? originalRequestId = null,Object? requesterId = null,Object? currentAssignedTo = freezed,Object? extendedTo = freezed,Object? status = null,Object? requiresMgrApproval = null,Object? managerId = freezed,Object? mgrApprovalStatus = null,Object? managerNote = freezed,Object? managerDecidedAt = freezed,Object? itDecidedBy = freezed,Object? itNote = freezed,Object? itDecidedAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? request = freezed,Object? item = freezed,Object? requester = freezed,}) {
  return _then(_ExtensionRequestDetailResDm(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,originalRequestId: null == originalRequestId ? _self.originalRequestId : originalRequestId // ignore: cast_nullable_to_non_nullable
as String,requesterId: null == requesterId ? _self.requesterId : requesterId // ignore: cast_nullable_to_non_nullable
as String,currentAssignedTo: freezed == currentAssignedTo ? _self.currentAssignedTo : currentAssignedTo // ignore: cast_nullable_to_non_nullable
as DateTime?,extendedTo: freezed == extendedTo ? _self.extendedTo : extendedTo // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ExtensionStatus,requiresMgrApproval: null == requiresMgrApproval ? _self.requiresMgrApproval : requiresMgrApproval // ignore: cast_nullable_to_non_nullable
as bool,managerId: freezed == managerId ? _self.managerId : managerId // ignore: cast_nullable_to_non_nullable
as String?,mgrApprovalStatus: null == mgrApprovalStatus ? _self.mgrApprovalStatus : mgrApprovalStatus // ignore: cast_nullable_to_non_nullable
as MgrApprovalStatus,managerNote: freezed == managerNote ? _self.managerNote : managerNote // ignore: cast_nullable_to_non_nullable
as String?,managerDecidedAt: freezed == managerDecidedAt ? _self.managerDecidedAt : managerDecidedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,itDecidedBy: freezed == itDecidedBy ? _self.itDecidedBy : itDecidedBy // ignore: cast_nullable_to_non_nullable
as String?,itNote: freezed == itNote ? _self.itNote : itNote // ignore: cast_nullable_to_non_nullable
as String?,itDecidedAt: freezed == itDecidedAt ? _self.itDecidedAt : itDecidedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,request: freezed == request ? _self.request : request // ignore: cast_nullable_to_non_nullable
as RequestSummaryResDm?,item: freezed == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as InventoryItemResDm?,requester: freezed == requester ? _self.requester : requester // ignore: cast_nullable_to_non_nullable
as UserResDm?,
  ));
}

/// Create a copy of ExtensionRequestDetailResDm
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestSummaryResDmCopyWith<$Res>? get request {
    if (_self.request == null) {
    return null;
  }

  return $RequestSummaryResDmCopyWith<$Res>(_self.request!, (value) {
    return _then(_self.copyWith(request: value));
  });
}/// Create a copy of ExtensionRequestDetailResDm
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
}/// Create a copy of ExtensionRequestDetailResDm
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
}
}

// dart format on
