// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_timeline_event_res_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeviceTimelineEventResDm {

@JsonKey(name: 'event_type') DeviceLogEvent get eventType;@JsonKey(name: 'actor_role') ActorRole get actorRole;@JsonKey(name: 'from_value') String? get fromValue;@JsonKey(name: 'to_value') String? get toValue; String? get note; Map<String, dynamic>? get metadata;@JsonKey(name: 'occurred_at') DateTime? get occurredAt;
/// Create a copy of DeviceTimelineEventResDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceTimelineEventResDmCopyWith<DeviceTimelineEventResDm> get copyWith => _$DeviceTimelineEventResDmCopyWithImpl<DeviceTimelineEventResDm>(this as DeviceTimelineEventResDm, _$identity);

  /// Serializes this DeviceTimelineEventResDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceTimelineEventResDm&&(identical(other.eventType, eventType) || other.eventType == eventType)&&(identical(other.actorRole, actorRole) || other.actorRole == actorRole)&&(identical(other.fromValue, fromValue) || other.fromValue == fromValue)&&(identical(other.toValue, toValue) || other.toValue == toValue)&&(identical(other.note, note) || other.note == note)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eventType,actorRole,fromValue,toValue,note,const DeepCollectionEquality().hash(metadata),occurredAt);

@override
String toString() {
  return 'DeviceTimelineEventResDm(eventType: $eventType, actorRole: $actorRole, fromValue: $fromValue, toValue: $toValue, note: $note, metadata: $metadata, occurredAt: $occurredAt)';
}


}

/// @nodoc
abstract mixin class $DeviceTimelineEventResDmCopyWith<$Res>  {
  factory $DeviceTimelineEventResDmCopyWith(DeviceTimelineEventResDm value, $Res Function(DeviceTimelineEventResDm) _then) = _$DeviceTimelineEventResDmCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'event_type') DeviceLogEvent eventType,@JsonKey(name: 'actor_role') ActorRole actorRole,@JsonKey(name: 'from_value') String? fromValue,@JsonKey(name: 'to_value') String? toValue, String? note, Map<String, dynamic>? metadata,@JsonKey(name: 'occurred_at') DateTime? occurredAt
});




}
/// @nodoc
class _$DeviceTimelineEventResDmCopyWithImpl<$Res>
    implements $DeviceTimelineEventResDmCopyWith<$Res> {
  _$DeviceTimelineEventResDmCopyWithImpl(this._self, this._then);

  final DeviceTimelineEventResDm _self;
  final $Res Function(DeviceTimelineEventResDm) _then;

/// Create a copy of DeviceTimelineEventResDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eventType = null,Object? actorRole = null,Object? fromValue = freezed,Object? toValue = freezed,Object? note = freezed,Object? metadata = freezed,Object? occurredAt = freezed,}) {
  return _then(_self.copyWith(
eventType: null == eventType ? _self.eventType : eventType // ignore: cast_nullable_to_non_nullable
as DeviceLogEvent,actorRole: null == actorRole ? _self.actorRole : actorRole // ignore: cast_nullable_to_non_nullable
as ActorRole,fromValue: freezed == fromValue ? _self.fromValue : fromValue // ignore: cast_nullable_to_non_nullable
as String?,toValue: freezed == toValue ? _self.toValue : toValue // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,occurredAt: freezed == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [DeviceTimelineEventResDm].
extension DeviceTimelineEventResDmPatterns on DeviceTimelineEventResDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceTimelineEventResDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceTimelineEventResDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceTimelineEventResDm value)  $default,){
final _that = this;
switch (_that) {
case _DeviceTimelineEventResDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceTimelineEventResDm value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceTimelineEventResDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'event_type')  DeviceLogEvent eventType, @JsonKey(name: 'actor_role')  ActorRole actorRole, @JsonKey(name: 'from_value')  String? fromValue, @JsonKey(name: 'to_value')  String? toValue,  String? note,  Map<String, dynamic>? metadata, @JsonKey(name: 'occurred_at')  DateTime? occurredAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceTimelineEventResDm() when $default != null:
return $default(_that.eventType,_that.actorRole,_that.fromValue,_that.toValue,_that.note,_that.metadata,_that.occurredAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'event_type')  DeviceLogEvent eventType, @JsonKey(name: 'actor_role')  ActorRole actorRole, @JsonKey(name: 'from_value')  String? fromValue, @JsonKey(name: 'to_value')  String? toValue,  String? note,  Map<String, dynamic>? metadata, @JsonKey(name: 'occurred_at')  DateTime? occurredAt)  $default,) {final _that = this;
switch (_that) {
case _DeviceTimelineEventResDm():
return $default(_that.eventType,_that.actorRole,_that.fromValue,_that.toValue,_that.note,_that.metadata,_that.occurredAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'event_type')  DeviceLogEvent eventType, @JsonKey(name: 'actor_role')  ActorRole actorRole, @JsonKey(name: 'from_value')  String? fromValue, @JsonKey(name: 'to_value')  String? toValue,  String? note,  Map<String, dynamic>? metadata, @JsonKey(name: 'occurred_at')  DateTime? occurredAt)?  $default,) {final _that = this;
switch (_that) {
case _DeviceTimelineEventResDm() when $default != null:
return $default(_that.eventType,_that.actorRole,_that.fromValue,_that.toValue,_that.note,_that.metadata,_that.occurredAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceTimelineEventResDm implements DeviceTimelineEventResDm {
  const _DeviceTimelineEventResDm({@JsonKey(name: 'event_type') this.eventType = DeviceLogEvent.statusChanged, @JsonKey(name: 'actor_role') this.actorRole = ActorRole.system, @JsonKey(name: 'from_value') this.fromValue, @JsonKey(name: 'to_value') this.toValue, this.note, final  Map<String, dynamic>? metadata, @JsonKey(name: 'occurred_at') this.occurredAt}): _metadata = metadata;
  factory _DeviceTimelineEventResDm.fromJson(Map<String, dynamic> json) => _$DeviceTimelineEventResDmFromJson(json);

@override@JsonKey(name: 'event_type') final  DeviceLogEvent eventType;
@override@JsonKey(name: 'actor_role') final  ActorRole actorRole;
@override@JsonKey(name: 'from_value') final  String? fromValue;
@override@JsonKey(name: 'to_value') final  String? toValue;
@override final  String? note;
 final  Map<String, dynamic>? _metadata;
@override Map<String, dynamic>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override@JsonKey(name: 'occurred_at') final  DateTime? occurredAt;

/// Create a copy of DeviceTimelineEventResDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceTimelineEventResDmCopyWith<_DeviceTimelineEventResDm> get copyWith => __$DeviceTimelineEventResDmCopyWithImpl<_DeviceTimelineEventResDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceTimelineEventResDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceTimelineEventResDm&&(identical(other.eventType, eventType) || other.eventType == eventType)&&(identical(other.actorRole, actorRole) || other.actorRole == actorRole)&&(identical(other.fromValue, fromValue) || other.fromValue == fromValue)&&(identical(other.toValue, toValue) || other.toValue == toValue)&&(identical(other.note, note) || other.note == note)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eventType,actorRole,fromValue,toValue,note,const DeepCollectionEquality().hash(_metadata),occurredAt);

@override
String toString() {
  return 'DeviceTimelineEventResDm(eventType: $eventType, actorRole: $actorRole, fromValue: $fromValue, toValue: $toValue, note: $note, metadata: $metadata, occurredAt: $occurredAt)';
}


}

/// @nodoc
abstract mixin class _$DeviceTimelineEventResDmCopyWith<$Res> implements $DeviceTimelineEventResDmCopyWith<$Res> {
  factory _$DeviceTimelineEventResDmCopyWith(_DeviceTimelineEventResDm value, $Res Function(_DeviceTimelineEventResDm) _then) = __$DeviceTimelineEventResDmCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'event_type') DeviceLogEvent eventType,@JsonKey(name: 'actor_role') ActorRole actorRole,@JsonKey(name: 'from_value') String? fromValue,@JsonKey(name: 'to_value') String? toValue, String? note, Map<String, dynamic>? metadata,@JsonKey(name: 'occurred_at') DateTime? occurredAt
});




}
/// @nodoc
class __$DeviceTimelineEventResDmCopyWithImpl<$Res>
    implements _$DeviceTimelineEventResDmCopyWith<$Res> {
  __$DeviceTimelineEventResDmCopyWithImpl(this._self, this._then);

  final _DeviceTimelineEventResDm _self;
  final $Res Function(_DeviceTimelineEventResDm) _then;

/// Create a copy of DeviceTimelineEventResDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eventType = null,Object? actorRole = null,Object? fromValue = freezed,Object? toValue = freezed,Object? note = freezed,Object? metadata = freezed,Object? occurredAt = freezed,}) {
  return _then(_DeviceTimelineEventResDm(
eventType: null == eventType ? _self.eventType : eventType // ignore: cast_nullable_to_non_nullable
as DeviceLogEvent,actorRole: null == actorRole ? _self.actorRole : actorRole // ignore: cast_nullable_to_non_nullable
as ActorRole,fromValue: freezed == fromValue ? _self.fromValue : fromValue // ignore: cast_nullable_to_non_nullable
as String?,toValue: freezed == toValue ? _self.toValue : toValue // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,occurredAt: freezed == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
