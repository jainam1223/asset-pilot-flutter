// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_ticket_summary_res_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OpenTicketSummaryResDm {

 String get id; String get title; SupportStatus get status; String get raisedOn;
/// Create a copy of OpenTicketSummaryResDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OpenTicketSummaryResDmCopyWith<OpenTicketSummaryResDm> get copyWith => _$OpenTicketSummaryResDmCopyWithImpl<OpenTicketSummaryResDm>(this as OpenTicketSummaryResDm, _$identity);

  /// Serializes this OpenTicketSummaryResDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OpenTicketSummaryResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.status, status) || other.status == status)&&(identical(other.raisedOn, raisedOn) || other.raisedOn == raisedOn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,status,raisedOn);

@override
String toString() {
  return 'OpenTicketSummaryResDm(id: $id, title: $title, status: $status, raisedOn: $raisedOn)';
}


}

/// @nodoc
abstract mixin class $OpenTicketSummaryResDmCopyWith<$Res>  {
  factory $OpenTicketSummaryResDmCopyWith(OpenTicketSummaryResDm value, $Res Function(OpenTicketSummaryResDm) _then) = _$OpenTicketSummaryResDmCopyWithImpl;
@useResult
$Res call({
 String id, String title, SupportStatus status, String raisedOn
});




}
/// @nodoc
class _$OpenTicketSummaryResDmCopyWithImpl<$Res>
    implements $OpenTicketSummaryResDmCopyWith<$Res> {
  _$OpenTicketSummaryResDmCopyWithImpl(this._self, this._then);

  final OpenTicketSummaryResDm _self;
  final $Res Function(OpenTicketSummaryResDm) _then;

/// Create a copy of OpenTicketSummaryResDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? status = null,Object? raisedOn = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SupportStatus,raisedOn: null == raisedOn ? _self.raisedOn : raisedOn // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [OpenTicketSummaryResDm].
extension OpenTicketSummaryResDmPatterns on OpenTicketSummaryResDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OpenTicketSummaryResDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OpenTicketSummaryResDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OpenTicketSummaryResDm value)  $default,){
final _that = this;
switch (_that) {
case _OpenTicketSummaryResDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OpenTicketSummaryResDm value)?  $default,){
final _that = this;
switch (_that) {
case _OpenTicketSummaryResDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  SupportStatus status,  String raisedOn)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OpenTicketSummaryResDm() when $default != null:
return $default(_that.id,_that.title,_that.status,_that.raisedOn);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  SupportStatus status,  String raisedOn)  $default,) {final _that = this;
switch (_that) {
case _OpenTicketSummaryResDm():
return $default(_that.id,_that.title,_that.status,_that.raisedOn);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  SupportStatus status,  String raisedOn)?  $default,) {final _that = this;
switch (_that) {
case _OpenTicketSummaryResDm() when $default != null:
return $default(_that.id,_that.title,_that.status,_that.raisedOn);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OpenTicketSummaryResDm implements OpenTicketSummaryResDm {
  const _OpenTicketSummaryResDm({this.id = '', this.title = '', this.status = SupportStatus.open, this.raisedOn = ''});
  factory _OpenTicketSummaryResDm.fromJson(Map<String, dynamic> json) => _$OpenTicketSummaryResDmFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String title;
@override@JsonKey() final  SupportStatus status;
@override@JsonKey() final  String raisedOn;

/// Create a copy of OpenTicketSummaryResDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OpenTicketSummaryResDmCopyWith<_OpenTicketSummaryResDm> get copyWith => __$OpenTicketSummaryResDmCopyWithImpl<_OpenTicketSummaryResDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OpenTicketSummaryResDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OpenTicketSummaryResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.status, status) || other.status == status)&&(identical(other.raisedOn, raisedOn) || other.raisedOn == raisedOn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,status,raisedOn);

@override
String toString() {
  return 'OpenTicketSummaryResDm(id: $id, title: $title, status: $status, raisedOn: $raisedOn)';
}


}

/// @nodoc
abstract mixin class _$OpenTicketSummaryResDmCopyWith<$Res> implements $OpenTicketSummaryResDmCopyWith<$Res> {
  factory _$OpenTicketSummaryResDmCopyWith(_OpenTicketSummaryResDm value, $Res Function(_OpenTicketSummaryResDm) _then) = __$OpenTicketSummaryResDmCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, SupportStatus status, String raisedOn
});




}
/// @nodoc
class __$OpenTicketSummaryResDmCopyWithImpl<$Res>
    implements _$OpenTicketSummaryResDmCopyWith<$Res> {
  __$OpenTicketSummaryResDmCopyWithImpl(this._self, this._then);

  final _OpenTicketSummaryResDm _self;
  final $Res Function(_OpenTicketSummaryResDm) _then;

/// Create a copy of OpenTicketSummaryResDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? status = null,Object? raisedOn = null,}) {
  return _then(_OpenTicketSummaryResDm(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SupportStatus,raisedOn: null == raisedOn ? _self.raisedOn : raisedOn // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
