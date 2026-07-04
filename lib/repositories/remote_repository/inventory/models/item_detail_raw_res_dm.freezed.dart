// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_detail_raw_res_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ItemDetailRawResDm {

 Map<String, dynamic>? get item; Map<String, dynamic>? get category;@JsonKey(name: 'current_owner') Map<String, dynamic>? get currentOwner;@JsonKey(name: 'current_request') Map<String, dynamic>? get currentRequest;@JsonKey(name: 'open_support') List<Map<String, dynamic>> get openSupport;@JsonKey(name: 'active_handover') Map<String, dynamic>? get activeHandover;
/// Create a copy of ItemDetailRawResDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemDetailRawResDmCopyWith<ItemDetailRawResDm> get copyWith => _$ItemDetailRawResDmCopyWithImpl<ItemDetailRawResDm>(this as ItemDetailRawResDm, _$identity);

  /// Serializes this ItemDetailRawResDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemDetailRawResDm&&const DeepCollectionEquality().equals(other.item, item)&&const DeepCollectionEquality().equals(other.category, category)&&const DeepCollectionEquality().equals(other.currentOwner, currentOwner)&&const DeepCollectionEquality().equals(other.currentRequest, currentRequest)&&const DeepCollectionEquality().equals(other.openSupport, openSupport)&&const DeepCollectionEquality().equals(other.activeHandover, activeHandover));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(item),const DeepCollectionEquality().hash(category),const DeepCollectionEquality().hash(currentOwner),const DeepCollectionEquality().hash(currentRequest),const DeepCollectionEquality().hash(openSupport),const DeepCollectionEquality().hash(activeHandover));

@override
String toString() {
  return 'ItemDetailRawResDm(item: $item, category: $category, currentOwner: $currentOwner, currentRequest: $currentRequest, openSupport: $openSupport, activeHandover: $activeHandover)';
}


}

/// @nodoc
abstract mixin class $ItemDetailRawResDmCopyWith<$Res>  {
  factory $ItemDetailRawResDmCopyWith(ItemDetailRawResDm value, $Res Function(ItemDetailRawResDm) _then) = _$ItemDetailRawResDmCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic>? item, Map<String, dynamic>? category,@JsonKey(name: 'current_owner') Map<String, dynamic>? currentOwner,@JsonKey(name: 'current_request') Map<String, dynamic>? currentRequest,@JsonKey(name: 'open_support') List<Map<String, dynamic>> openSupport,@JsonKey(name: 'active_handover') Map<String, dynamic>? activeHandover
});




}
/// @nodoc
class _$ItemDetailRawResDmCopyWithImpl<$Res>
    implements $ItemDetailRawResDmCopyWith<$Res> {
  _$ItemDetailRawResDmCopyWithImpl(this._self, this._then);

  final ItemDetailRawResDm _self;
  final $Res Function(ItemDetailRawResDm) _then;

/// Create a copy of ItemDetailRawResDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? item = freezed,Object? category = freezed,Object? currentOwner = freezed,Object? currentRequest = freezed,Object? openSupport = null,Object? activeHandover = freezed,}) {
  return _then(_self.copyWith(
item: freezed == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,currentOwner: freezed == currentOwner ? _self.currentOwner : currentOwner // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,currentRequest: freezed == currentRequest ? _self.currentRequest : currentRequest // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,openSupport: null == openSupport ? _self.openSupport : openSupport // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,activeHandover: freezed == activeHandover ? _self.activeHandover : activeHandover // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ItemDetailRawResDm].
extension ItemDetailRawResDmPatterns on ItemDetailRawResDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemDetailRawResDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemDetailRawResDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemDetailRawResDm value)  $default,){
final _that = this;
switch (_that) {
case _ItemDetailRawResDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemDetailRawResDm value)?  $default,){
final _that = this;
switch (_that) {
case _ItemDetailRawResDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, dynamic>? item,  Map<String, dynamic>? category, @JsonKey(name: 'current_owner')  Map<String, dynamic>? currentOwner, @JsonKey(name: 'current_request')  Map<String, dynamic>? currentRequest, @JsonKey(name: 'open_support')  List<Map<String, dynamic>> openSupport, @JsonKey(name: 'active_handover')  Map<String, dynamic>? activeHandover)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemDetailRawResDm() when $default != null:
return $default(_that.item,_that.category,_that.currentOwner,_that.currentRequest,_that.openSupport,_that.activeHandover);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, dynamic>? item,  Map<String, dynamic>? category, @JsonKey(name: 'current_owner')  Map<String, dynamic>? currentOwner, @JsonKey(name: 'current_request')  Map<String, dynamic>? currentRequest, @JsonKey(name: 'open_support')  List<Map<String, dynamic>> openSupport, @JsonKey(name: 'active_handover')  Map<String, dynamic>? activeHandover)  $default,) {final _that = this;
switch (_that) {
case _ItemDetailRawResDm():
return $default(_that.item,_that.category,_that.currentOwner,_that.currentRequest,_that.openSupport,_that.activeHandover);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, dynamic>? item,  Map<String, dynamic>? category, @JsonKey(name: 'current_owner')  Map<String, dynamic>? currentOwner, @JsonKey(name: 'current_request')  Map<String, dynamic>? currentRequest, @JsonKey(name: 'open_support')  List<Map<String, dynamic>> openSupport, @JsonKey(name: 'active_handover')  Map<String, dynamic>? activeHandover)?  $default,) {final _that = this;
switch (_that) {
case _ItemDetailRawResDm() when $default != null:
return $default(_that.item,_that.category,_that.currentOwner,_that.currentRequest,_that.openSupport,_that.activeHandover);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ItemDetailRawResDm implements ItemDetailRawResDm {
  const _ItemDetailRawResDm({final  Map<String, dynamic>? item, final  Map<String, dynamic>? category, @JsonKey(name: 'current_owner') final  Map<String, dynamic>? currentOwner, @JsonKey(name: 'current_request') final  Map<String, dynamic>? currentRequest, @JsonKey(name: 'open_support') final  List<Map<String, dynamic>> openSupport = const <Map<String, dynamic>>[], @JsonKey(name: 'active_handover') final  Map<String, dynamic>? activeHandover}): _item = item,_category = category,_currentOwner = currentOwner,_currentRequest = currentRequest,_openSupport = openSupport,_activeHandover = activeHandover;
  factory _ItemDetailRawResDm.fromJson(Map<String, dynamic> json) => _$ItemDetailRawResDmFromJson(json);

 final  Map<String, dynamic>? _item;
@override Map<String, dynamic>? get item {
  final value = _item;
  if (value == null) return null;
  if (_item is EqualUnmodifiableMapView) return _item;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, dynamic>? _category;
@override Map<String, dynamic>? get category {
  final value = _category;
  if (value == null) return null;
  if (_category is EqualUnmodifiableMapView) return _category;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, dynamic>? _currentOwner;
@override@JsonKey(name: 'current_owner') Map<String, dynamic>? get currentOwner {
  final value = _currentOwner;
  if (value == null) return null;
  if (_currentOwner is EqualUnmodifiableMapView) return _currentOwner;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, dynamic>? _currentRequest;
@override@JsonKey(name: 'current_request') Map<String, dynamic>? get currentRequest {
  final value = _currentRequest;
  if (value == null) return null;
  if (_currentRequest is EqualUnmodifiableMapView) return _currentRequest;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  List<Map<String, dynamic>> _openSupport;
@override@JsonKey(name: 'open_support') List<Map<String, dynamic>> get openSupport {
  if (_openSupport is EqualUnmodifiableListView) return _openSupport;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_openSupport);
}

 final  Map<String, dynamic>? _activeHandover;
@override@JsonKey(name: 'active_handover') Map<String, dynamic>? get activeHandover {
  final value = _activeHandover;
  if (value == null) return null;
  if (_activeHandover is EqualUnmodifiableMapView) return _activeHandover;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of ItemDetailRawResDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemDetailRawResDmCopyWith<_ItemDetailRawResDm> get copyWith => __$ItemDetailRawResDmCopyWithImpl<_ItemDetailRawResDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemDetailRawResDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemDetailRawResDm&&const DeepCollectionEquality().equals(other._item, _item)&&const DeepCollectionEquality().equals(other._category, _category)&&const DeepCollectionEquality().equals(other._currentOwner, _currentOwner)&&const DeepCollectionEquality().equals(other._currentRequest, _currentRequest)&&const DeepCollectionEquality().equals(other._openSupport, _openSupport)&&const DeepCollectionEquality().equals(other._activeHandover, _activeHandover));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_item),const DeepCollectionEquality().hash(_category),const DeepCollectionEquality().hash(_currentOwner),const DeepCollectionEquality().hash(_currentRequest),const DeepCollectionEquality().hash(_openSupport),const DeepCollectionEquality().hash(_activeHandover));

@override
String toString() {
  return 'ItemDetailRawResDm(item: $item, category: $category, currentOwner: $currentOwner, currentRequest: $currentRequest, openSupport: $openSupport, activeHandover: $activeHandover)';
}


}

/// @nodoc
abstract mixin class _$ItemDetailRawResDmCopyWith<$Res> implements $ItemDetailRawResDmCopyWith<$Res> {
  factory _$ItemDetailRawResDmCopyWith(_ItemDetailRawResDm value, $Res Function(_ItemDetailRawResDm) _then) = __$ItemDetailRawResDmCopyWithImpl;
@override @useResult
$Res call({
 Map<String, dynamic>? item, Map<String, dynamic>? category,@JsonKey(name: 'current_owner') Map<String, dynamic>? currentOwner,@JsonKey(name: 'current_request') Map<String, dynamic>? currentRequest,@JsonKey(name: 'open_support') List<Map<String, dynamic>> openSupport,@JsonKey(name: 'active_handover') Map<String, dynamic>? activeHandover
});




}
/// @nodoc
class __$ItemDetailRawResDmCopyWithImpl<$Res>
    implements _$ItemDetailRawResDmCopyWith<$Res> {
  __$ItemDetailRawResDmCopyWithImpl(this._self, this._then);

  final _ItemDetailRawResDm _self;
  final $Res Function(_ItemDetailRawResDm) _then;

/// Create a copy of ItemDetailRawResDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? item = freezed,Object? category = freezed,Object? currentOwner = freezed,Object? currentRequest = freezed,Object? openSupport = null,Object? activeHandover = freezed,}) {
  return _then(_ItemDetailRawResDm(
item: freezed == item ? _self._item : item // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,category: freezed == category ? _self._category : category // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,currentOwner: freezed == currentOwner ? _self._currentOwner : currentOwner // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,currentRequest: freezed == currentRequest ? _self._currentRequest : currentRequest // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,openSupport: null == openSupport ? _self._openSupport : openSupport // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,activeHandover: freezed == activeHandover ? _self._activeHandover : activeHandover // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
