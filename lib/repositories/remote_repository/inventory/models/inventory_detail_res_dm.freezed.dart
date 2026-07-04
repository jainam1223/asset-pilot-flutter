// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_detail_res_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InventoryDetailResDm {

 String get id; String get name; String get serial; String get category; OwnerType get ownerType; String get clientName; DeviceStatus get status; String get currentOwnerName; String get purchaseDate; String get qrToken; CurrentAssignmentResDm? get currentAssignment; List<OpenTicketSummaryResDm> get openTickets; ActiveHandoverSummaryResDm? get activeHandover;
/// Create a copy of InventoryDetailResDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventoryDetailResDmCopyWith<InventoryDetailResDm> get copyWith => _$InventoryDetailResDmCopyWithImpl<InventoryDetailResDm>(this as InventoryDetailResDm, _$identity);

  /// Serializes this InventoryDetailResDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryDetailResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.serial, serial) || other.serial == serial)&&(identical(other.category, category) || other.category == category)&&(identical(other.ownerType, ownerType) || other.ownerType == ownerType)&&(identical(other.clientName, clientName) || other.clientName == clientName)&&(identical(other.status, status) || other.status == status)&&(identical(other.currentOwnerName, currentOwnerName) || other.currentOwnerName == currentOwnerName)&&(identical(other.purchaseDate, purchaseDate) || other.purchaseDate == purchaseDate)&&(identical(other.qrToken, qrToken) || other.qrToken == qrToken)&&(identical(other.currentAssignment, currentAssignment) || other.currentAssignment == currentAssignment)&&const DeepCollectionEquality().equals(other.openTickets, openTickets)&&(identical(other.activeHandover, activeHandover) || other.activeHandover == activeHandover));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,serial,category,ownerType,clientName,status,currentOwnerName,purchaseDate,qrToken,currentAssignment,const DeepCollectionEquality().hash(openTickets),activeHandover);

@override
String toString() {
  return 'InventoryDetailResDm(id: $id, name: $name, serial: $serial, category: $category, ownerType: $ownerType, clientName: $clientName, status: $status, currentOwnerName: $currentOwnerName, purchaseDate: $purchaseDate, qrToken: $qrToken, currentAssignment: $currentAssignment, openTickets: $openTickets, activeHandover: $activeHandover)';
}


}

/// @nodoc
abstract mixin class $InventoryDetailResDmCopyWith<$Res>  {
  factory $InventoryDetailResDmCopyWith(InventoryDetailResDm value, $Res Function(InventoryDetailResDm) _then) = _$InventoryDetailResDmCopyWithImpl;
@useResult
$Res call({
 String id, String name, String serial, String category, OwnerType ownerType, String clientName, DeviceStatus status, String currentOwnerName, String purchaseDate, String qrToken, CurrentAssignmentResDm? currentAssignment, List<OpenTicketSummaryResDm> openTickets, ActiveHandoverSummaryResDm? activeHandover
});


$CurrentAssignmentResDmCopyWith<$Res>? get currentAssignment;$ActiveHandoverSummaryResDmCopyWith<$Res>? get activeHandover;

}
/// @nodoc
class _$InventoryDetailResDmCopyWithImpl<$Res>
    implements $InventoryDetailResDmCopyWith<$Res> {
  _$InventoryDetailResDmCopyWithImpl(this._self, this._then);

  final InventoryDetailResDm _self;
  final $Res Function(InventoryDetailResDm) _then;

/// Create a copy of InventoryDetailResDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? serial = null,Object? category = null,Object? ownerType = null,Object? clientName = null,Object? status = null,Object? currentOwnerName = null,Object? purchaseDate = null,Object? qrToken = null,Object? currentAssignment = freezed,Object? openTickets = null,Object? activeHandover = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,serial: null == serial ? _self.serial : serial // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,ownerType: null == ownerType ? _self.ownerType : ownerType // ignore: cast_nullable_to_non_nullable
as OwnerType,clientName: null == clientName ? _self.clientName : clientName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DeviceStatus,currentOwnerName: null == currentOwnerName ? _self.currentOwnerName : currentOwnerName // ignore: cast_nullable_to_non_nullable
as String,purchaseDate: null == purchaseDate ? _self.purchaseDate : purchaseDate // ignore: cast_nullable_to_non_nullable
as String,qrToken: null == qrToken ? _self.qrToken : qrToken // ignore: cast_nullable_to_non_nullable
as String,currentAssignment: freezed == currentAssignment ? _self.currentAssignment : currentAssignment // ignore: cast_nullable_to_non_nullable
as CurrentAssignmentResDm?,openTickets: null == openTickets ? _self.openTickets : openTickets // ignore: cast_nullable_to_non_nullable
as List<OpenTicketSummaryResDm>,activeHandover: freezed == activeHandover ? _self.activeHandover : activeHandover // ignore: cast_nullable_to_non_nullable
as ActiveHandoverSummaryResDm?,
  ));
}
/// Create a copy of InventoryDetailResDm
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurrentAssignmentResDmCopyWith<$Res>? get currentAssignment {
    if (_self.currentAssignment == null) {
    return null;
  }

  return $CurrentAssignmentResDmCopyWith<$Res>(_self.currentAssignment!, (value) {
    return _then(_self.copyWith(currentAssignment: value));
  });
}/// Create a copy of InventoryDetailResDm
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActiveHandoverSummaryResDmCopyWith<$Res>? get activeHandover {
    if (_self.activeHandover == null) {
    return null;
  }

  return $ActiveHandoverSummaryResDmCopyWith<$Res>(_self.activeHandover!, (value) {
    return _then(_self.copyWith(activeHandover: value));
  });
}
}


/// Adds pattern-matching-related methods to [InventoryDetailResDm].
extension InventoryDetailResDmPatterns on InventoryDetailResDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InventoryDetailResDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InventoryDetailResDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InventoryDetailResDm value)  $default,){
final _that = this;
switch (_that) {
case _InventoryDetailResDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InventoryDetailResDm value)?  $default,){
final _that = this;
switch (_that) {
case _InventoryDetailResDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String serial,  String category,  OwnerType ownerType,  String clientName,  DeviceStatus status,  String currentOwnerName,  String purchaseDate,  String qrToken,  CurrentAssignmentResDm? currentAssignment,  List<OpenTicketSummaryResDm> openTickets,  ActiveHandoverSummaryResDm? activeHandover)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InventoryDetailResDm() when $default != null:
return $default(_that.id,_that.name,_that.serial,_that.category,_that.ownerType,_that.clientName,_that.status,_that.currentOwnerName,_that.purchaseDate,_that.qrToken,_that.currentAssignment,_that.openTickets,_that.activeHandover);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String serial,  String category,  OwnerType ownerType,  String clientName,  DeviceStatus status,  String currentOwnerName,  String purchaseDate,  String qrToken,  CurrentAssignmentResDm? currentAssignment,  List<OpenTicketSummaryResDm> openTickets,  ActiveHandoverSummaryResDm? activeHandover)  $default,) {final _that = this;
switch (_that) {
case _InventoryDetailResDm():
return $default(_that.id,_that.name,_that.serial,_that.category,_that.ownerType,_that.clientName,_that.status,_that.currentOwnerName,_that.purchaseDate,_that.qrToken,_that.currentAssignment,_that.openTickets,_that.activeHandover);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String serial,  String category,  OwnerType ownerType,  String clientName,  DeviceStatus status,  String currentOwnerName,  String purchaseDate,  String qrToken,  CurrentAssignmentResDm? currentAssignment,  List<OpenTicketSummaryResDm> openTickets,  ActiveHandoverSummaryResDm? activeHandover)?  $default,) {final _that = this;
switch (_that) {
case _InventoryDetailResDm() when $default != null:
return $default(_that.id,_that.name,_that.serial,_that.category,_that.ownerType,_that.clientName,_that.status,_that.currentOwnerName,_that.purchaseDate,_that.qrToken,_that.currentAssignment,_that.openTickets,_that.activeHandover);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InventoryDetailResDm implements InventoryDetailResDm {
  const _InventoryDetailResDm({this.id = '', this.name = '', this.serial = '', this.category = '', this.ownerType = OwnerType.company, this.clientName = '', this.status = DeviceStatus.available, this.currentOwnerName = '', this.purchaseDate = '', this.qrToken = '', this.currentAssignment, final  List<OpenTicketSummaryResDm> openTickets = const <OpenTicketSummaryResDm>[], this.activeHandover}): _openTickets = openTickets;
  factory _InventoryDetailResDm.fromJson(Map<String, dynamic> json) => _$InventoryDetailResDmFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String name;
@override@JsonKey() final  String serial;
@override@JsonKey() final  String category;
@override@JsonKey() final  OwnerType ownerType;
@override@JsonKey() final  String clientName;
@override@JsonKey() final  DeviceStatus status;
@override@JsonKey() final  String currentOwnerName;
@override@JsonKey() final  String purchaseDate;
@override@JsonKey() final  String qrToken;
@override final  CurrentAssignmentResDm? currentAssignment;
 final  List<OpenTicketSummaryResDm> _openTickets;
@override@JsonKey() List<OpenTicketSummaryResDm> get openTickets {
  if (_openTickets is EqualUnmodifiableListView) return _openTickets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_openTickets);
}

@override final  ActiveHandoverSummaryResDm? activeHandover;

/// Create a copy of InventoryDetailResDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InventoryDetailResDmCopyWith<_InventoryDetailResDm> get copyWith => __$InventoryDetailResDmCopyWithImpl<_InventoryDetailResDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InventoryDetailResDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InventoryDetailResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.serial, serial) || other.serial == serial)&&(identical(other.category, category) || other.category == category)&&(identical(other.ownerType, ownerType) || other.ownerType == ownerType)&&(identical(other.clientName, clientName) || other.clientName == clientName)&&(identical(other.status, status) || other.status == status)&&(identical(other.currentOwnerName, currentOwnerName) || other.currentOwnerName == currentOwnerName)&&(identical(other.purchaseDate, purchaseDate) || other.purchaseDate == purchaseDate)&&(identical(other.qrToken, qrToken) || other.qrToken == qrToken)&&(identical(other.currentAssignment, currentAssignment) || other.currentAssignment == currentAssignment)&&const DeepCollectionEquality().equals(other._openTickets, _openTickets)&&(identical(other.activeHandover, activeHandover) || other.activeHandover == activeHandover));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,serial,category,ownerType,clientName,status,currentOwnerName,purchaseDate,qrToken,currentAssignment,const DeepCollectionEquality().hash(_openTickets),activeHandover);

@override
String toString() {
  return 'InventoryDetailResDm(id: $id, name: $name, serial: $serial, category: $category, ownerType: $ownerType, clientName: $clientName, status: $status, currentOwnerName: $currentOwnerName, purchaseDate: $purchaseDate, qrToken: $qrToken, currentAssignment: $currentAssignment, openTickets: $openTickets, activeHandover: $activeHandover)';
}


}

/// @nodoc
abstract mixin class _$InventoryDetailResDmCopyWith<$Res> implements $InventoryDetailResDmCopyWith<$Res> {
  factory _$InventoryDetailResDmCopyWith(_InventoryDetailResDm value, $Res Function(_InventoryDetailResDm) _then) = __$InventoryDetailResDmCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String serial, String category, OwnerType ownerType, String clientName, DeviceStatus status, String currentOwnerName, String purchaseDate, String qrToken, CurrentAssignmentResDm? currentAssignment, List<OpenTicketSummaryResDm> openTickets, ActiveHandoverSummaryResDm? activeHandover
});


@override $CurrentAssignmentResDmCopyWith<$Res>? get currentAssignment;@override $ActiveHandoverSummaryResDmCopyWith<$Res>? get activeHandover;

}
/// @nodoc
class __$InventoryDetailResDmCopyWithImpl<$Res>
    implements _$InventoryDetailResDmCopyWith<$Res> {
  __$InventoryDetailResDmCopyWithImpl(this._self, this._then);

  final _InventoryDetailResDm _self;
  final $Res Function(_InventoryDetailResDm) _then;

/// Create a copy of InventoryDetailResDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? serial = null,Object? category = null,Object? ownerType = null,Object? clientName = null,Object? status = null,Object? currentOwnerName = null,Object? purchaseDate = null,Object? qrToken = null,Object? currentAssignment = freezed,Object? openTickets = null,Object? activeHandover = freezed,}) {
  return _then(_InventoryDetailResDm(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,serial: null == serial ? _self.serial : serial // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,ownerType: null == ownerType ? _self.ownerType : ownerType // ignore: cast_nullable_to_non_nullable
as OwnerType,clientName: null == clientName ? _self.clientName : clientName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DeviceStatus,currentOwnerName: null == currentOwnerName ? _self.currentOwnerName : currentOwnerName // ignore: cast_nullable_to_non_nullable
as String,purchaseDate: null == purchaseDate ? _self.purchaseDate : purchaseDate // ignore: cast_nullable_to_non_nullable
as String,qrToken: null == qrToken ? _self.qrToken : qrToken // ignore: cast_nullable_to_non_nullable
as String,currentAssignment: freezed == currentAssignment ? _self.currentAssignment : currentAssignment // ignore: cast_nullable_to_non_nullable
as CurrentAssignmentResDm?,openTickets: null == openTickets ? _self._openTickets : openTickets // ignore: cast_nullable_to_non_nullable
as List<OpenTicketSummaryResDm>,activeHandover: freezed == activeHandover ? _self.activeHandover : activeHandover // ignore: cast_nullable_to_non_nullable
as ActiveHandoverSummaryResDm?,
  ));
}

/// Create a copy of InventoryDetailResDm
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurrentAssignmentResDmCopyWith<$Res>? get currentAssignment {
    if (_self.currentAssignment == null) {
    return null;
  }

  return $CurrentAssignmentResDmCopyWith<$Res>(_self.currentAssignment!, (value) {
    return _then(_self.copyWith(currentAssignment: value));
  });
}/// Create a copy of InventoryDetailResDm
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActiveHandoverSummaryResDmCopyWith<$Res>? get activeHandover {
    if (_self.activeHandover == null) {
    return null;
  }

  return $ActiveHandoverSummaryResDmCopyWith<$Res>(_self.activeHandover!, (value) {
    return _then(_self.copyWith(activeHandover: value));
  });
}
}

// dart format on
