// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_summary_res_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DashboardSummaryResDm {

@JsonKey(name: 'status_breakdown') Map<String, int> get statusBreakdown;@JsonKey(name: 'pending_requests_count') int get pendingRequestsCount;@JsonKey(name: 'open_support_count') int get openSupportCount;@JsonKey(name: 'active_handovers_count') int get activeHandoversCount;@JsonKey(name: 'pending_extensions_count') int get pendingExtensionsCount;
/// Create a copy of DashboardSummaryResDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardSummaryResDmCopyWith<DashboardSummaryResDm> get copyWith => _$DashboardSummaryResDmCopyWithImpl<DashboardSummaryResDm>(this as DashboardSummaryResDm, _$identity);

  /// Serializes this DashboardSummaryResDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardSummaryResDm&&const DeepCollectionEquality().equals(other.statusBreakdown, statusBreakdown)&&(identical(other.pendingRequestsCount, pendingRequestsCount) || other.pendingRequestsCount == pendingRequestsCount)&&(identical(other.openSupportCount, openSupportCount) || other.openSupportCount == openSupportCount)&&(identical(other.activeHandoversCount, activeHandoversCount) || other.activeHandoversCount == activeHandoversCount)&&(identical(other.pendingExtensionsCount, pendingExtensionsCount) || other.pendingExtensionsCount == pendingExtensionsCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(statusBreakdown),pendingRequestsCount,openSupportCount,activeHandoversCount,pendingExtensionsCount);

@override
String toString() {
  return 'DashboardSummaryResDm(statusBreakdown: $statusBreakdown, pendingRequestsCount: $pendingRequestsCount, openSupportCount: $openSupportCount, activeHandoversCount: $activeHandoversCount, pendingExtensionsCount: $pendingExtensionsCount)';
}


}

/// @nodoc
abstract mixin class $DashboardSummaryResDmCopyWith<$Res>  {
  factory $DashboardSummaryResDmCopyWith(DashboardSummaryResDm value, $Res Function(DashboardSummaryResDm) _then) = _$DashboardSummaryResDmCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'status_breakdown') Map<String, int> statusBreakdown,@JsonKey(name: 'pending_requests_count') int pendingRequestsCount,@JsonKey(name: 'open_support_count') int openSupportCount,@JsonKey(name: 'active_handovers_count') int activeHandoversCount,@JsonKey(name: 'pending_extensions_count') int pendingExtensionsCount
});




}
/// @nodoc
class _$DashboardSummaryResDmCopyWithImpl<$Res>
    implements $DashboardSummaryResDmCopyWith<$Res> {
  _$DashboardSummaryResDmCopyWithImpl(this._self, this._then);

  final DashboardSummaryResDm _self;
  final $Res Function(DashboardSummaryResDm) _then;

/// Create a copy of DashboardSummaryResDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusBreakdown = null,Object? pendingRequestsCount = null,Object? openSupportCount = null,Object? activeHandoversCount = null,Object? pendingExtensionsCount = null,}) {
  return _then(_self.copyWith(
statusBreakdown: null == statusBreakdown ? _self.statusBreakdown : statusBreakdown // ignore: cast_nullable_to_non_nullable
as Map<String, int>,pendingRequestsCount: null == pendingRequestsCount ? _self.pendingRequestsCount : pendingRequestsCount // ignore: cast_nullable_to_non_nullable
as int,openSupportCount: null == openSupportCount ? _self.openSupportCount : openSupportCount // ignore: cast_nullable_to_non_nullable
as int,activeHandoversCount: null == activeHandoversCount ? _self.activeHandoversCount : activeHandoversCount // ignore: cast_nullable_to_non_nullable
as int,pendingExtensionsCount: null == pendingExtensionsCount ? _self.pendingExtensionsCount : pendingExtensionsCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardSummaryResDm].
extension DashboardSummaryResDmPatterns on DashboardSummaryResDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardSummaryResDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardSummaryResDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardSummaryResDm value)  $default,){
final _that = this;
switch (_that) {
case _DashboardSummaryResDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardSummaryResDm value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardSummaryResDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'status_breakdown')  Map<String, int> statusBreakdown, @JsonKey(name: 'pending_requests_count')  int pendingRequestsCount, @JsonKey(name: 'open_support_count')  int openSupportCount, @JsonKey(name: 'active_handovers_count')  int activeHandoversCount, @JsonKey(name: 'pending_extensions_count')  int pendingExtensionsCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardSummaryResDm() when $default != null:
return $default(_that.statusBreakdown,_that.pendingRequestsCount,_that.openSupportCount,_that.activeHandoversCount,_that.pendingExtensionsCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'status_breakdown')  Map<String, int> statusBreakdown, @JsonKey(name: 'pending_requests_count')  int pendingRequestsCount, @JsonKey(name: 'open_support_count')  int openSupportCount, @JsonKey(name: 'active_handovers_count')  int activeHandoversCount, @JsonKey(name: 'pending_extensions_count')  int pendingExtensionsCount)  $default,) {final _that = this;
switch (_that) {
case _DashboardSummaryResDm():
return $default(_that.statusBreakdown,_that.pendingRequestsCount,_that.openSupportCount,_that.activeHandoversCount,_that.pendingExtensionsCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'status_breakdown')  Map<String, int> statusBreakdown, @JsonKey(name: 'pending_requests_count')  int pendingRequestsCount, @JsonKey(name: 'open_support_count')  int openSupportCount, @JsonKey(name: 'active_handovers_count')  int activeHandoversCount, @JsonKey(name: 'pending_extensions_count')  int pendingExtensionsCount)?  $default,) {final _that = this;
switch (_that) {
case _DashboardSummaryResDm() when $default != null:
return $default(_that.statusBreakdown,_that.pendingRequestsCount,_that.openSupportCount,_that.activeHandoversCount,_that.pendingExtensionsCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardSummaryResDm implements DashboardSummaryResDm {
  const _DashboardSummaryResDm({@JsonKey(name: 'status_breakdown') final  Map<String, int> statusBreakdown = const <String, int>{}, @JsonKey(name: 'pending_requests_count') this.pendingRequestsCount = 0, @JsonKey(name: 'open_support_count') this.openSupportCount = 0, @JsonKey(name: 'active_handovers_count') this.activeHandoversCount = 0, @JsonKey(name: 'pending_extensions_count') this.pendingExtensionsCount = 0}): _statusBreakdown = statusBreakdown;
  factory _DashboardSummaryResDm.fromJson(Map<String, dynamic> json) => _$DashboardSummaryResDmFromJson(json);

 final  Map<String, int> _statusBreakdown;
@override@JsonKey(name: 'status_breakdown') Map<String, int> get statusBreakdown {
  if (_statusBreakdown is EqualUnmodifiableMapView) return _statusBreakdown;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_statusBreakdown);
}

@override@JsonKey(name: 'pending_requests_count') final  int pendingRequestsCount;
@override@JsonKey(name: 'open_support_count') final  int openSupportCount;
@override@JsonKey(name: 'active_handovers_count') final  int activeHandoversCount;
@override@JsonKey(name: 'pending_extensions_count') final  int pendingExtensionsCount;

/// Create a copy of DashboardSummaryResDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardSummaryResDmCopyWith<_DashboardSummaryResDm> get copyWith => __$DashboardSummaryResDmCopyWithImpl<_DashboardSummaryResDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardSummaryResDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardSummaryResDm&&const DeepCollectionEquality().equals(other._statusBreakdown, _statusBreakdown)&&(identical(other.pendingRequestsCount, pendingRequestsCount) || other.pendingRequestsCount == pendingRequestsCount)&&(identical(other.openSupportCount, openSupportCount) || other.openSupportCount == openSupportCount)&&(identical(other.activeHandoversCount, activeHandoversCount) || other.activeHandoversCount == activeHandoversCount)&&(identical(other.pendingExtensionsCount, pendingExtensionsCount) || other.pendingExtensionsCount == pendingExtensionsCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_statusBreakdown),pendingRequestsCount,openSupportCount,activeHandoversCount,pendingExtensionsCount);

@override
String toString() {
  return 'DashboardSummaryResDm(statusBreakdown: $statusBreakdown, pendingRequestsCount: $pendingRequestsCount, openSupportCount: $openSupportCount, activeHandoversCount: $activeHandoversCount, pendingExtensionsCount: $pendingExtensionsCount)';
}


}

/// @nodoc
abstract mixin class _$DashboardSummaryResDmCopyWith<$Res> implements $DashboardSummaryResDmCopyWith<$Res> {
  factory _$DashboardSummaryResDmCopyWith(_DashboardSummaryResDm value, $Res Function(_DashboardSummaryResDm) _then) = __$DashboardSummaryResDmCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'status_breakdown') Map<String, int> statusBreakdown,@JsonKey(name: 'pending_requests_count') int pendingRequestsCount,@JsonKey(name: 'open_support_count') int openSupportCount,@JsonKey(name: 'active_handovers_count') int activeHandoversCount,@JsonKey(name: 'pending_extensions_count') int pendingExtensionsCount
});




}
/// @nodoc
class __$DashboardSummaryResDmCopyWithImpl<$Res>
    implements _$DashboardSummaryResDmCopyWith<$Res> {
  __$DashboardSummaryResDmCopyWithImpl(this._self, this._then);

  final _DashboardSummaryResDm _self;
  final $Res Function(_DashboardSummaryResDm) _then;

/// Create a copy of DashboardSummaryResDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusBreakdown = null,Object? pendingRequestsCount = null,Object? openSupportCount = null,Object? activeHandoversCount = null,Object? pendingExtensionsCount = null,}) {
  return _then(_DashboardSummaryResDm(
statusBreakdown: null == statusBreakdown ? _self._statusBreakdown : statusBreakdown // ignore: cast_nullable_to_non_nullable
as Map<String, int>,pendingRequestsCount: null == pendingRequestsCount ? _self.pendingRequestsCount : pendingRequestsCount // ignore: cast_nullable_to_non_nullable
as int,openSupportCount: null == openSupportCount ? _self.openSupportCount : openSupportCount // ignore: cast_nullable_to_non_nullable
as int,activeHandoversCount: null == activeHandoversCount ? _self.activeHandoversCount : activeHandoversCount // ignore: cast_nullable_to_non_nullable
as int,pendingExtensionsCount: null == pendingExtensionsCount ? _self.pendingExtensionsCount : pendingExtensionsCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
