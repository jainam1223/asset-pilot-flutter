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

 String get id; String get title; String get timestamp; String get actor; String get description; String get fromStatus; String get toStatus; String get relatedRequestId;/// One of `'assignment' | 'shipping' | 'delivery' | 'support' |
/// 'handover'` — drives the timeline dot color (mockup A06 uses a
/// distinct color per event kind, not a single uniform brand color).
 String get kind;
/// Create a copy of DeviceTimelineEventResDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceTimelineEventResDmCopyWith<DeviceTimelineEventResDm> get copyWith => _$DeviceTimelineEventResDmCopyWithImpl<DeviceTimelineEventResDm>(this as DeviceTimelineEventResDm, _$identity);

  /// Serializes this DeviceTimelineEventResDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceTimelineEventResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.actor, actor) || other.actor == actor)&&(identical(other.description, description) || other.description == description)&&(identical(other.fromStatus, fromStatus) || other.fromStatus == fromStatus)&&(identical(other.toStatus, toStatus) || other.toStatus == toStatus)&&(identical(other.relatedRequestId, relatedRequestId) || other.relatedRequestId == relatedRequestId)&&(identical(other.kind, kind) || other.kind == kind));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,timestamp,actor,description,fromStatus,toStatus,relatedRequestId,kind);

@override
String toString() {
  return 'DeviceTimelineEventResDm(id: $id, title: $title, timestamp: $timestamp, actor: $actor, description: $description, fromStatus: $fromStatus, toStatus: $toStatus, relatedRequestId: $relatedRequestId, kind: $kind)';
}


}

/// @nodoc
abstract mixin class $DeviceTimelineEventResDmCopyWith<$Res>  {
  factory $DeviceTimelineEventResDmCopyWith(DeviceTimelineEventResDm value, $Res Function(DeviceTimelineEventResDm) _then) = _$DeviceTimelineEventResDmCopyWithImpl;
@useResult
$Res call({
 String id, String title, String timestamp, String actor, String description, String fromStatus, String toStatus, String relatedRequestId, String kind
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? timestamp = null,Object? actor = null,Object? description = null,Object? fromStatus = null,Object? toStatus = null,Object? relatedRequestId = null,Object? kind = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,actor: null == actor ? _self.actor : actor // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,fromStatus: null == fromStatus ? _self.fromStatus : fromStatus // ignore: cast_nullable_to_non_nullable
as String,toStatus: null == toStatus ? _self.toStatus : toStatus // ignore: cast_nullable_to_non_nullable
as String,relatedRequestId: null == relatedRequestId ? _self.relatedRequestId : relatedRequestId // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String timestamp,  String actor,  String description,  String fromStatus,  String toStatus,  String relatedRequestId,  String kind)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceTimelineEventResDm() when $default != null:
return $default(_that.id,_that.title,_that.timestamp,_that.actor,_that.description,_that.fromStatus,_that.toStatus,_that.relatedRequestId,_that.kind);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String timestamp,  String actor,  String description,  String fromStatus,  String toStatus,  String relatedRequestId,  String kind)  $default,) {final _that = this;
switch (_that) {
case _DeviceTimelineEventResDm():
return $default(_that.id,_that.title,_that.timestamp,_that.actor,_that.description,_that.fromStatus,_that.toStatus,_that.relatedRequestId,_that.kind);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String timestamp,  String actor,  String description,  String fromStatus,  String toStatus,  String relatedRequestId,  String kind)?  $default,) {final _that = this;
switch (_that) {
case _DeviceTimelineEventResDm() when $default != null:
return $default(_that.id,_that.title,_that.timestamp,_that.actor,_that.description,_that.fromStatus,_that.toStatus,_that.relatedRequestId,_that.kind);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceTimelineEventResDm implements DeviceTimelineEventResDm {
  const _DeviceTimelineEventResDm({this.id = '', this.title = '', this.timestamp = '', this.actor = '', this.description = '', this.fromStatus = '', this.toStatus = '', this.relatedRequestId = '', this.kind = 'assignment'});
  factory _DeviceTimelineEventResDm.fromJson(Map<String, dynamic> json) => _$DeviceTimelineEventResDmFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String title;
@override@JsonKey() final  String timestamp;
@override@JsonKey() final  String actor;
@override@JsonKey() final  String description;
@override@JsonKey() final  String fromStatus;
@override@JsonKey() final  String toStatus;
@override@JsonKey() final  String relatedRequestId;
/// One of `'assignment' | 'shipping' | 'delivery' | 'support' |
/// 'handover'` — drives the timeline dot color (mockup A06 uses a
/// distinct color per event kind, not a single uniform brand color).
@override@JsonKey() final  String kind;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceTimelineEventResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.actor, actor) || other.actor == actor)&&(identical(other.description, description) || other.description == description)&&(identical(other.fromStatus, fromStatus) || other.fromStatus == fromStatus)&&(identical(other.toStatus, toStatus) || other.toStatus == toStatus)&&(identical(other.relatedRequestId, relatedRequestId) || other.relatedRequestId == relatedRequestId)&&(identical(other.kind, kind) || other.kind == kind));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,timestamp,actor,description,fromStatus,toStatus,relatedRequestId,kind);

@override
String toString() {
  return 'DeviceTimelineEventResDm(id: $id, title: $title, timestamp: $timestamp, actor: $actor, description: $description, fromStatus: $fromStatus, toStatus: $toStatus, relatedRequestId: $relatedRequestId, kind: $kind)';
}


}

/// @nodoc
abstract mixin class _$DeviceTimelineEventResDmCopyWith<$Res> implements $DeviceTimelineEventResDmCopyWith<$Res> {
  factory _$DeviceTimelineEventResDmCopyWith(_DeviceTimelineEventResDm value, $Res Function(_DeviceTimelineEventResDm) _then) = __$DeviceTimelineEventResDmCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String timestamp, String actor, String description, String fromStatus, String toStatus, String relatedRequestId, String kind
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? timestamp = null,Object? actor = null,Object? description = null,Object? fromStatus = null,Object? toStatus = null,Object? relatedRequestId = null,Object? kind = null,}) {
  return _then(_DeviceTimelineEventResDm(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,actor: null == actor ? _self.actor : actor // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,fromStatus: null == fromStatus ? _self.fromStatus : fromStatus // ignore: cast_nullable_to_non_nullable
as String,toStatus: null == toStatus ? _self.toStatus : toStatus // ignore: cast_nullable_to_non_nullable
as String,relatedRequestId: null == relatedRequestId ? _self.relatedRequestId : relatedRequestId // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
