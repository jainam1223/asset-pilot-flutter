// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'extension_request_summary_res_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExtensionRequestSummaryResDm {

 String get id; String get employeeName; String get deviceName; String get currentToDate; String get extendToDate; MgrApprovalStatus get mgrApprovalStatus; ExtensionStatus get status;
/// Create a copy of ExtensionRequestSummaryResDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExtensionRequestSummaryResDmCopyWith<ExtensionRequestSummaryResDm> get copyWith => _$ExtensionRequestSummaryResDmCopyWithImpl<ExtensionRequestSummaryResDm>(this as ExtensionRequestSummaryResDm, _$identity);

  /// Serializes this ExtensionRequestSummaryResDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExtensionRequestSummaryResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeName, employeeName) || other.employeeName == employeeName)&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&(identical(other.currentToDate, currentToDate) || other.currentToDate == currentToDate)&&(identical(other.extendToDate, extendToDate) || other.extendToDate == extendToDate)&&(identical(other.mgrApprovalStatus, mgrApprovalStatus) || other.mgrApprovalStatus == mgrApprovalStatus)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,employeeName,deviceName,currentToDate,extendToDate,mgrApprovalStatus,status);

@override
String toString() {
  return 'ExtensionRequestSummaryResDm(id: $id, employeeName: $employeeName, deviceName: $deviceName, currentToDate: $currentToDate, extendToDate: $extendToDate, mgrApprovalStatus: $mgrApprovalStatus, status: $status)';
}


}

/// @nodoc
abstract mixin class $ExtensionRequestSummaryResDmCopyWith<$Res>  {
  factory $ExtensionRequestSummaryResDmCopyWith(ExtensionRequestSummaryResDm value, $Res Function(ExtensionRequestSummaryResDm) _then) = _$ExtensionRequestSummaryResDmCopyWithImpl;
@useResult
$Res call({
 String id, String employeeName, String deviceName, String currentToDate, String extendToDate, MgrApprovalStatus mgrApprovalStatus, ExtensionStatus status
});




}
/// @nodoc
class _$ExtensionRequestSummaryResDmCopyWithImpl<$Res>
    implements $ExtensionRequestSummaryResDmCopyWith<$Res> {
  _$ExtensionRequestSummaryResDmCopyWithImpl(this._self, this._then);

  final ExtensionRequestSummaryResDm _self;
  final $Res Function(ExtensionRequestSummaryResDm) _then;

/// Create a copy of ExtensionRequestSummaryResDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? employeeName = null,Object? deviceName = null,Object? currentToDate = null,Object? extendToDate = null,Object? mgrApprovalStatus = null,Object? status = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeName: null == employeeName ? _self.employeeName : employeeName // ignore: cast_nullable_to_non_nullable
as String,deviceName: null == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String,currentToDate: null == currentToDate ? _self.currentToDate : currentToDate // ignore: cast_nullable_to_non_nullable
as String,extendToDate: null == extendToDate ? _self.extendToDate : extendToDate // ignore: cast_nullable_to_non_nullable
as String,mgrApprovalStatus: null == mgrApprovalStatus ? _self.mgrApprovalStatus : mgrApprovalStatus // ignore: cast_nullable_to_non_nullable
as MgrApprovalStatus,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ExtensionStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [ExtensionRequestSummaryResDm].
extension ExtensionRequestSummaryResDmPatterns on ExtensionRequestSummaryResDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExtensionRequestSummaryResDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExtensionRequestSummaryResDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExtensionRequestSummaryResDm value)  $default,){
final _that = this;
switch (_that) {
case _ExtensionRequestSummaryResDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExtensionRequestSummaryResDm value)?  $default,){
final _that = this;
switch (_that) {
case _ExtensionRequestSummaryResDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String employeeName,  String deviceName,  String currentToDate,  String extendToDate,  MgrApprovalStatus mgrApprovalStatus,  ExtensionStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExtensionRequestSummaryResDm() when $default != null:
return $default(_that.id,_that.employeeName,_that.deviceName,_that.currentToDate,_that.extendToDate,_that.mgrApprovalStatus,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String employeeName,  String deviceName,  String currentToDate,  String extendToDate,  MgrApprovalStatus mgrApprovalStatus,  ExtensionStatus status)  $default,) {final _that = this;
switch (_that) {
case _ExtensionRequestSummaryResDm():
return $default(_that.id,_that.employeeName,_that.deviceName,_that.currentToDate,_that.extendToDate,_that.mgrApprovalStatus,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String employeeName,  String deviceName,  String currentToDate,  String extendToDate,  MgrApprovalStatus mgrApprovalStatus,  ExtensionStatus status)?  $default,) {final _that = this;
switch (_that) {
case _ExtensionRequestSummaryResDm() when $default != null:
return $default(_that.id,_that.employeeName,_that.deviceName,_that.currentToDate,_that.extendToDate,_that.mgrApprovalStatus,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExtensionRequestSummaryResDm implements ExtensionRequestSummaryResDm {
  const _ExtensionRequestSummaryResDm({this.id = '', this.employeeName = '', this.deviceName = '', this.currentToDate = '', this.extendToDate = '', this.mgrApprovalStatus = MgrApprovalStatus.pending, this.status = ExtensionStatus.pending});
  factory _ExtensionRequestSummaryResDm.fromJson(Map<String, dynamic> json) => _$ExtensionRequestSummaryResDmFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String employeeName;
@override@JsonKey() final  String deviceName;
@override@JsonKey() final  String currentToDate;
@override@JsonKey() final  String extendToDate;
@override@JsonKey() final  MgrApprovalStatus mgrApprovalStatus;
@override@JsonKey() final  ExtensionStatus status;

/// Create a copy of ExtensionRequestSummaryResDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExtensionRequestSummaryResDmCopyWith<_ExtensionRequestSummaryResDm> get copyWith => __$ExtensionRequestSummaryResDmCopyWithImpl<_ExtensionRequestSummaryResDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExtensionRequestSummaryResDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExtensionRequestSummaryResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeName, employeeName) || other.employeeName == employeeName)&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&(identical(other.currentToDate, currentToDate) || other.currentToDate == currentToDate)&&(identical(other.extendToDate, extendToDate) || other.extendToDate == extendToDate)&&(identical(other.mgrApprovalStatus, mgrApprovalStatus) || other.mgrApprovalStatus == mgrApprovalStatus)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,employeeName,deviceName,currentToDate,extendToDate,mgrApprovalStatus,status);

@override
String toString() {
  return 'ExtensionRequestSummaryResDm(id: $id, employeeName: $employeeName, deviceName: $deviceName, currentToDate: $currentToDate, extendToDate: $extendToDate, mgrApprovalStatus: $mgrApprovalStatus, status: $status)';
}


}

/// @nodoc
abstract mixin class _$ExtensionRequestSummaryResDmCopyWith<$Res> implements $ExtensionRequestSummaryResDmCopyWith<$Res> {
  factory _$ExtensionRequestSummaryResDmCopyWith(_ExtensionRequestSummaryResDm value, $Res Function(_ExtensionRequestSummaryResDm) _then) = __$ExtensionRequestSummaryResDmCopyWithImpl;
@override @useResult
$Res call({
 String id, String employeeName, String deviceName, String currentToDate, String extendToDate, MgrApprovalStatus mgrApprovalStatus, ExtensionStatus status
});




}
/// @nodoc
class __$ExtensionRequestSummaryResDmCopyWithImpl<$Res>
    implements _$ExtensionRequestSummaryResDmCopyWith<$Res> {
  __$ExtensionRequestSummaryResDmCopyWithImpl(this._self, this._then);

  final _ExtensionRequestSummaryResDm _self;
  final $Res Function(_ExtensionRequestSummaryResDm) _then;

/// Create a copy of ExtensionRequestSummaryResDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? employeeName = null,Object? deviceName = null,Object? currentToDate = null,Object? extendToDate = null,Object? mgrApprovalStatus = null,Object? status = null,}) {
  return _then(_ExtensionRequestSummaryResDm(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeName: null == employeeName ? _self.employeeName : employeeName // ignore: cast_nullable_to_non_nullable
as String,deviceName: null == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String,currentToDate: null == currentToDate ? _self.currentToDate : currentToDate // ignore: cast_nullable_to_non_nullable
as String,extendToDate: null == extendToDate ? _self.extendToDate : extendToDate // ignore: cast_nullable_to_non_nullable
as String,mgrApprovalStatus: null == mgrApprovalStatus ? _self.mgrApprovalStatus : mgrApprovalStatus // ignore: cast_nullable_to_non_nullable
as MgrApprovalStatus,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ExtensionStatus,
  ));
}


}

// dart format on
