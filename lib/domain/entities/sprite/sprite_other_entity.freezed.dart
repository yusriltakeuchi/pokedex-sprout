// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sprite_other_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SpriteOtherEntity {

@JsonKey(name: 'home') SpriteOtherHomeEntity? get home;
/// Create a copy of SpriteOtherEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpriteOtherEntityCopyWith<SpriteOtherEntity> get copyWith => _$SpriteOtherEntityCopyWithImpl<SpriteOtherEntity>(this as SpriteOtherEntity, _$identity);

  /// Serializes this SpriteOtherEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpriteOtherEntity&&(identical(other.home, home) || other.home == home));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,home);

@override
String toString() {
  return 'SpriteOtherEntity(home: $home)';
}


}

/// @nodoc
abstract mixin class $SpriteOtherEntityCopyWith<$Res>  {
  factory $SpriteOtherEntityCopyWith(SpriteOtherEntity value, $Res Function(SpriteOtherEntity) _then) = _$SpriteOtherEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'home') SpriteOtherHomeEntity? home
});


$SpriteOtherHomeEntityCopyWith<$Res>? get home;

}
/// @nodoc
class _$SpriteOtherEntityCopyWithImpl<$Res>
    implements $SpriteOtherEntityCopyWith<$Res> {
  _$SpriteOtherEntityCopyWithImpl(this._self, this._then);

  final SpriteOtherEntity _self;
  final $Res Function(SpriteOtherEntity) _then;

/// Create a copy of SpriteOtherEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? home = freezed,}) {
  return _then(_self.copyWith(
home: freezed == home ? _self.home : home // ignore: cast_nullable_to_non_nullable
as SpriteOtherHomeEntity?,
  ));
}
/// Create a copy of SpriteOtherEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpriteOtherHomeEntityCopyWith<$Res>? get home {
    if (_self.home == null) {
    return null;
  }

  return $SpriteOtherHomeEntityCopyWith<$Res>(_self.home!, (value) {
    return _then(_self.copyWith(home: value));
  });
}
}


/// Adds pattern-matching-related methods to [SpriteOtherEntity].
extension SpriteOtherEntityPatterns on SpriteOtherEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpriteOtherEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpriteOtherEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpriteOtherEntity value)  $default,){
final _that = this;
switch (_that) {
case _SpriteOtherEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpriteOtherEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SpriteOtherEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'home')  SpriteOtherHomeEntity? home)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpriteOtherEntity() when $default != null:
return $default(_that.home);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'home')  SpriteOtherHomeEntity? home)  $default,) {final _that = this;
switch (_that) {
case _SpriteOtherEntity():
return $default(_that.home);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'home')  SpriteOtherHomeEntity? home)?  $default,) {final _that = this;
switch (_that) {
case _SpriteOtherEntity() when $default != null:
return $default(_that.home);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SpriteOtherEntity implements SpriteOtherEntity {
  const _SpriteOtherEntity({@JsonKey(name: 'home') this.home});
  factory _SpriteOtherEntity.fromJson(Map<String, dynamic> json) => _$SpriteOtherEntityFromJson(json);

@override@JsonKey(name: 'home') final  SpriteOtherHomeEntity? home;

/// Create a copy of SpriteOtherEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpriteOtherEntityCopyWith<_SpriteOtherEntity> get copyWith => __$SpriteOtherEntityCopyWithImpl<_SpriteOtherEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpriteOtherEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpriteOtherEntity&&(identical(other.home, home) || other.home == home));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,home);

@override
String toString() {
  return 'SpriteOtherEntity(home: $home)';
}


}

/// @nodoc
abstract mixin class _$SpriteOtherEntityCopyWith<$Res> implements $SpriteOtherEntityCopyWith<$Res> {
  factory _$SpriteOtherEntityCopyWith(_SpriteOtherEntity value, $Res Function(_SpriteOtherEntity) _then) = __$SpriteOtherEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'home') SpriteOtherHomeEntity? home
});


@override $SpriteOtherHomeEntityCopyWith<$Res>? get home;

}
/// @nodoc
class __$SpriteOtherEntityCopyWithImpl<$Res>
    implements _$SpriteOtherEntityCopyWith<$Res> {
  __$SpriteOtherEntityCopyWithImpl(this._self, this._then);

  final _SpriteOtherEntity _self;
  final $Res Function(_SpriteOtherEntity) _then;

/// Create a copy of SpriteOtherEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? home = freezed,}) {
  return _then(_SpriteOtherEntity(
home: freezed == home ? _self.home : home // ignore: cast_nullable_to_non_nullable
as SpriteOtherHomeEntity?,
  ));
}

/// Create a copy of SpriteOtherEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpriteOtherHomeEntityCopyWith<$Res>? get home {
    if (_self.home == null) {
    return null;
  }

  return $SpriteOtherHomeEntityCopyWith<$Res>(_self.home!, (value) {
    return _then(_self.copyWith(home: value));
  });
}
}

// dart format on
