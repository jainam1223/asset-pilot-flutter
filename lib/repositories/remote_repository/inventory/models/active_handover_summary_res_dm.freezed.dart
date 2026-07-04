// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'active_handover_summary_res_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ActiveHandoverSummaryResDm {

 String get borrowerName; String get durationLabel; HandoverStatus get status;
/// Create a copy of ActiveHandoverSummaryResDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActiveHandoverSummaryResDmCopyWith<ActiveHandoverSummaryResDm> get copyWith => _$ActiveHandoverSummaryResDmCopyWithImpl<ActiveHandoverSummaryResDm>(this as ActiveHandoverSummaryResDm, _$identity);

  /// Serializes this ActiveHandoverSummaryResDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActiveHandoverSummaryResDm&&(identical(other.borrowerName, borrowerName) || other.borrowerName == borrowerName)&&(identical(other.durationLabel, durationLabel) || other.durationLabel == durationLabel)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,borrowerName,durationLabel,status);

@override
String toString() {
  return 'ActiveHandoverSummaryResDm(borrowerName: $borrowerName, durationLabel: $durationLabel, status: $status)';
}


}

/// @nodoc
abstract mixin class $ActiveHandoverSummaryResDmCopyWith<$Res>  {
  factory $ActiveHandoverSummaryResDmCopyWith(ActiveHandoverSummaryResDm value, $Res Function(ActiveHandoverSummaryResDm) _then) = _$ActiveHandoverSummaryResDmCopyWithImpl;
@useResult
$Res call({
 String borrowerName, String durationLabel, HandoverStatus status
});




}
/// @nodoc
class _$ActiveHandoverSummaryResDmCopyWithImpl<$Res>
    implements $ActiveHandoverSummaryResDmCopyWith<$Res> {
  _$ActiveHandoverSummaryResDmCopyWithImpl(this._self, this._then);

  final ActiveHandoverSummaryResDm _self;
  final $Res Function(ActiveHandoverSummaryResDm) _then;

/// Create a copy of ActiveHandoverSummaryResDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? borrowerName = null,Object? durationLabel = null,Object? status = null,}) {
  return _then(_self.copyWith(
borrowerName: null == borrowerName ? _self.borrowerName : borrowerName // ignore: cast_nullable_to_non_nullable
as String,durationLabel: null == durationLabel ? _self.durationLabel : durationLabel // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as HandoverStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [ActiveHandoverSummaryResDm].
extension ActiveHandoverSummaryResDmPatterns on ActiveHandoverSummaryResDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActiveHandoverSummaryResDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActiveHandoverSummaryResDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActiveHandoverSummaryResDm value)  $default,){
final _that = this;
switch (_that) {
case _ActiveHandoverSummaryResDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActiveHandoverSummaryResDm value)?  $default,){
final _that = this;
switch (_that) {
case _ActiveHandoverSummaryResDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String borrowerName,  String durationLabel,  HandoverStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActiveHandoverSummaryResDm() when $default != null:
return $default(_that.borrowerName,_that.durationLabel,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String borrowerName,  String durationLabel,  HandoverStatus status)  $default,) {final _that = this;
switch (_that) {
case _ActiveHandoverSummaryResDm():
return $default(_that.borrowerName,_that.durationLabel,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String borrowerName,  String durationLabel,  HandoverStatus status)?  $default,) {final _that = this;
switch (_that) {
case _ActiveHandoverSummaryResDm() when $default != null:
return $default(_that.borrowerName,_that.durationLabel,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ActiveHandoverSummaryResDm implements ActiveHandoverSummaryResDm {
  const _ActiveHandoverSummaryResDm({this.borrowerName = '', this.durationLabel = '', this.status = HandoverStatus.requested});
  factory _ActiveHandoverSummaryResDm.fromJson(Map<String, dynamic> json) => _$ActiveHandoverSummaryResDmFromJson(json);

@override@JsonKey() final  String borrowerName;
@override@JsonKey() final  String durationLabel;
@override@JsonKey() final  HandoverStatus status;

/// Create a copy of ActiveHandoverSummaryResDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActiveHandoverSummaryResDmCopyWith<_ActiveHandoverSummaryResDm> get copyWith => __$ActiveHandoverSummaryResDmCopyWithImpl<_ActiveHandoverSummaryResDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActiveHandoverSummaryResDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActiveHandoverSummaryResDm&&(identical(other.borrowerName, borrowerName) || other.borrowerName == borrowerName)&&(identical(other.durationLabel, durationLabel) || other.durationLabel == durationLabel)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,borrowerName,durationLabel,status);

@override
String toString() {
  return 'ActiveHandoverSummaryResDm(borrowerName: $borrowerName, durationLabel: $durationLabel, status: $status)';
}


}

/// @nodoc
abstract mixin class _$ActiveHandoverSummaryResDmCopyWith<$Res> implements $ActiveHandoverSummaryResDmCopyWith<$Res> {
  factory _$ActiveHandoverSummaryResDmCopyWith(_ActiveHandoverSummaryResDm value, $Res Function(_ActiveHandoverSummaryResDm) _then) = __$ActiveHandoverSummaryResDmCopyWithImpl;
@override @useResult
$Res call({
 String borrowerName, String durationLabel, HandoverStatus status
});




}
/// @nodoc
class __$ActiveHandoverSummaryResDmCopyWithImpl<$Res>
    implements _$ActiveHandoverSummaryResDmCopyWith<$Res> {
  __$ActiveHandoverSummaryResDmCopyWithImpl(this._self, this._then);

  final _ActiveHandoverSummaryResDm _self;
  final $Res Function(_ActiveHandoverSummaryResDm) _then;

/// Create a copy of ActiveHandoverSummaryResDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? borrowerName = null,Object? durationLabel = null,Object? status = null,}) {
  return _then(_ActiveHandoverSummaryResDm(
borrowerName: null == borrowerName ? _self.borrowerName : borrowerName // ignore: cast_nullable_to_non_nullable
as String,durationLabel: null == durationLabel ? _self.durationLabel : durationLabel // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as HandoverStatus,
  ));
}


}

// dart format on
