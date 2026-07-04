// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_handover_lookup_res_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeviceHandoverLookupResDm {

 HandoverLookupRequestResDm? get request; HandoverLookupItemResDm get item; List<HandoverRequestResDm> get handoverRequests;
/// Create a copy of DeviceHandoverLookupResDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceHandoverLookupResDmCopyWith<DeviceHandoverLookupResDm> get copyWith => _$DeviceHandoverLookupResDmCopyWithImpl<DeviceHandoverLookupResDm>(this as DeviceHandoverLookupResDm, _$identity);

  /// Serializes this DeviceHandoverLookupResDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceHandoverLookupResDm&&(identical(other.request, request) || other.request == request)&&(identical(other.item, item) || other.item == item)&&const DeepCollectionEquality().equals(other.handoverRequests, handoverRequests));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,request,item,const DeepCollectionEquality().hash(handoverRequests));

@override
String toString() {
  return 'DeviceHandoverLookupResDm(request: $request, item: $item, handoverRequests: $handoverRequests)';
}


}

/// @nodoc
abstract mixin class $DeviceHandoverLookupResDmCopyWith<$Res>  {
  factory $DeviceHandoverLookupResDmCopyWith(DeviceHandoverLookupResDm value, $Res Function(DeviceHandoverLookupResDm) _then) = _$DeviceHandoverLookupResDmCopyWithImpl;
@useResult
$Res call({
 HandoverLookupRequestResDm? request, HandoverLookupItemResDm item, List<HandoverRequestResDm> handoverRequests
});


$HandoverLookupRequestResDmCopyWith<$Res>? get request;$HandoverLookupItemResDmCopyWith<$Res> get item;

}
/// @nodoc
class _$DeviceHandoverLookupResDmCopyWithImpl<$Res>
    implements $DeviceHandoverLookupResDmCopyWith<$Res> {
  _$DeviceHandoverLookupResDmCopyWithImpl(this._self, this._then);

  final DeviceHandoverLookupResDm _self;
  final $Res Function(DeviceHandoverLookupResDm) _then;

/// Create a copy of DeviceHandoverLookupResDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? request = freezed,Object? item = null,Object? handoverRequests = null,}) {
  return _then(_self.copyWith(
request: freezed == request ? _self.request : request // ignore: cast_nullable_to_non_nullable
as HandoverLookupRequestResDm?,item: null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as HandoverLookupItemResDm,handoverRequests: null == handoverRequests ? _self.handoverRequests : handoverRequests // ignore: cast_nullable_to_non_nullable
as List<HandoverRequestResDm>,
  ));
}
/// Create a copy of DeviceHandoverLookupResDm
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HandoverLookupRequestResDmCopyWith<$Res>? get request {
    if (_self.request == null) {
    return null;
  }

  return $HandoverLookupRequestResDmCopyWith<$Res>(_self.request!, (value) {
    return _then(_self.copyWith(request: value));
  });
}/// Create a copy of DeviceHandoverLookupResDm
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HandoverLookupItemResDmCopyWith<$Res> get item {
  
  return $HandoverLookupItemResDmCopyWith<$Res>(_self.item, (value) {
    return _then(_self.copyWith(item: value));
  });
}
}


/// Adds pattern-matching-related methods to [DeviceHandoverLookupResDm].
extension DeviceHandoverLookupResDmPatterns on DeviceHandoverLookupResDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceHandoverLookupResDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceHandoverLookupResDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceHandoverLookupResDm value)  $default,){
final _that = this;
switch (_that) {
case _DeviceHandoverLookupResDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceHandoverLookupResDm value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceHandoverLookupResDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( HandoverLookupRequestResDm? request,  HandoverLookupItemResDm item,  List<HandoverRequestResDm> handoverRequests)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceHandoverLookupResDm() when $default != null:
return $default(_that.request,_that.item,_that.handoverRequests);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( HandoverLookupRequestResDm? request,  HandoverLookupItemResDm item,  List<HandoverRequestResDm> handoverRequests)  $default,) {final _that = this;
switch (_that) {
case _DeviceHandoverLookupResDm():
return $default(_that.request,_that.item,_that.handoverRequests);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( HandoverLookupRequestResDm? request,  HandoverLookupItemResDm item,  List<HandoverRequestResDm> handoverRequests)?  $default,) {final _that = this;
switch (_that) {
case _DeviceHandoverLookupResDm() when $default != null:
return $default(_that.request,_that.item,_that.handoverRequests);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceHandoverLookupResDm implements DeviceHandoverLookupResDm {
  const _DeviceHandoverLookupResDm({this.request, required this.item, final  List<HandoverRequestResDm> handoverRequests = const <HandoverRequestResDm>[]}): _handoverRequests = handoverRequests;
  factory _DeviceHandoverLookupResDm.fromJson(Map<String, dynamic> json) => _$DeviceHandoverLookupResDmFromJson(json);

@override final  HandoverLookupRequestResDm? request;
@override final  HandoverLookupItemResDm item;
 final  List<HandoverRequestResDm> _handoverRequests;
@override@JsonKey() List<HandoverRequestResDm> get handoverRequests {
  if (_handoverRequests is EqualUnmodifiableListView) return _handoverRequests;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_handoverRequests);
}


/// Create a copy of DeviceHandoverLookupResDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceHandoverLookupResDmCopyWith<_DeviceHandoverLookupResDm> get copyWith => __$DeviceHandoverLookupResDmCopyWithImpl<_DeviceHandoverLookupResDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceHandoverLookupResDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceHandoverLookupResDm&&(identical(other.request, request) || other.request == request)&&(identical(other.item, item) || other.item == item)&&const DeepCollectionEquality().equals(other._handoverRequests, _handoverRequests));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,request,item,const DeepCollectionEquality().hash(_handoverRequests));

@override
String toString() {
  return 'DeviceHandoverLookupResDm(request: $request, item: $item, handoverRequests: $handoverRequests)';
}


}

/// @nodoc
abstract mixin class _$DeviceHandoverLookupResDmCopyWith<$Res> implements $DeviceHandoverLookupResDmCopyWith<$Res> {
  factory _$DeviceHandoverLookupResDmCopyWith(_DeviceHandoverLookupResDm value, $Res Function(_DeviceHandoverLookupResDm) _then) = __$DeviceHandoverLookupResDmCopyWithImpl;
@override @useResult
$Res call({
 HandoverLookupRequestResDm? request, HandoverLookupItemResDm item, List<HandoverRequestResDm> handoverRequests
});


@override $HandoverLookupRequestResDmCopyWith<$Res>? get request;@override $HandoverLookupItemResDmCopyWith<$Res> get item;

}
/// @nodoc
class __$DeviceHandoverLookupResDmCopyWithImpl<$Res>
    implements _$DeviceHandoverLookupResDmCopyWith<$Res> {
  __$DeviceHandoverLookupResDmCopyWithImpl(this._self, this._then);

  final _DeviceHandoverLookupResDm _self;
  final $Res Function(_DeviceHandoverLookupResDm) _then;

/// Create a copy of DeviceHandoverLookupResDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? request = freezed,Object? item = null,Object? handoverRequests = null,}) {
  return _then(_DeviceHandoverLookupResDm(
request: freezed == request ? _self.request : request // ignore: cast_nullable_to_non_nullable
as HandoverLookupRequestResDm?,item: null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as HandoverLookupItemResDm,handoverRequests: null == handoverRequests ? _self._handoverRequests : handoverRequests // ignore: cast_nullable_to_non_nullable
as List<HandoverRequestResDm>,
  ));
}

/// Create a copy of DeviceHandoverLookupResDm
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HandoverLookupRequestResDmCopyWith<$Res>? get request {
    if (_self.request == null) {
    return null;
  }

  return $HandoverLookupRequestResDmCopyWith<$Res>(_self.request!, (value) {
    return _then(_self.copyWith(request: value));
  });
}/// Create a copy of DeviceHandoverLookupResDm
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HandoverLookupItemResDmCopyWith<$Res> get item {
  
  return $HandoverLookupItemResDmCopyWith<$Res>(_self.item, (value) {
    return _then(_self.copyWith(item: value));
  });
}
}

// dart format on
