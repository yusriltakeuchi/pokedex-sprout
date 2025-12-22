// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ability_slot_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AbilitySlotEntity {

@JsonKey(name: 'slot') int? get slot;@JsonKey(name: 'is_hidden') bool? get isHidden;@JsonKey(name: 'ability') AbilityEntity? get ability;
/// Create a copy of AbilitySlotEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AbilitySlotEntityCopyWith<AbilitySlotEntity> get copyWith => _$AbilitySlotEntityCopyWithImpl<AbilitySlotEntity>(this as AbilitySlotEntity, _$identity);

  /// Serializes this AbilitySlotEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AbilitySlotEntity&&(identical(other.slot, slot) || other.slot == slot)&&(identical(other.isHidden, isHidden) || other.isHidden == isHidden)&&(identical(other.ability, ability) || other.ability == ability));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slot,isHidden,ability);

@override
String toString() {
  return 'AbilitySlotEntity(slot: $slot, isHidden: $isHidden, ability: $ability)';
}


}

/// @nodoc
abstract mixin class $AbilitySlotEntityCopyWith<$Res>  {
  factory $AbilitySlotEntityCopyWith(AbilitySlotEntity value, $Res Function(AbilitySlotEntity) _then) = _$AbilitySlotEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'slot') int? slot,@JsonKey(name: 'is_hidden') bool? isHidden,@JsonKey(name: 'ability') AbilityEntity? ability
});


$AbilityEntityCopyWith<$Res>? get ability;

}
/// @nodoc
class _$AbilitySlotEntityCopyWithImpl<$Res>
    implements $AbilitySlotEntityCopyWith<$Res> {
  _$AbilitySlotEntityCopyWithImpl(this._self, this._then);

  final AbilitySlotEntity _self;
  final $Res Function(AbilitySlotEntity) _then;

/// Create a copy of AbilitySlotEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slot = freezed,Object? isHidden = freezed,Object? ability = freezed,}) {
  return _then(_self.copyWith(
slot: freezed == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as int?,isHidden: freezed == isHidden ? _self.isHidden : isHidden // ignore: cast_nullable_to_non_nullable
as bool?,ability: freezed == ability ? _self.ability : ability // ignore: cast_nullable_to_non_nullable
as AbilityEntity?,
  ));
}
/// Create a copy of AbilitySlotEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AbilityEntityCopyWith<$Res>? get ability {
    if (_self.ability == null) {
    return null;
  }

  return $AbilityEntityCopyWith<$Res>(_self.ability!, (value) {
    return _then(_self.copyWith(ability: value));
  });
}
}


/// Adds pattern-matching-related methods to [AbilitySlotEntity].
extension AbilitySlotEntityPatterns on AbilitySlotEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AbilitySlotEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AbilitySlotEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AbilitySlotEntity value)  $default,){
final _that = this;
switch (_that) {
case _AbilitySlotEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AbilitySlotEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AbilitySlotEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'slot')  int? slot, @JsonKey(name: 'is_hidden')  bool? isHidden, @JsonKey(name: 'ability')  AbilityEntity? ability)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AbilitySlotEntity() when $default != null:
return $default(_that.slot,_that.isHidden,_that.ability);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'slot')  int? slot, @JsonKey(name: 'is_hidden')  bool? isHidden, @JsonKey(name: 'ability')  AbilityEntity? ability)  $default,) {final _that = this;
switch (_that) {
case _AbilitySlotEntity():
return $default(_that.slot,_that.isHidden,_that.ability);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'slot')  int? slot, @JsonKey(name: 'is_hidden')  bool? isHidden, @JsonKey(name: 'ability')  AbilityEntity? ability)?  $default,) {final _that = this;
switch (_that) {
case _AbilitySlotEntity() when $default != null:
return $default(_that.slot,_that.isHidden,_that.ability);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AbilitySlotEntity implements AbilitySlotEntity {
  const _AbilitySlotEntity({@JsonKey(name: 'slot') this.slot, @JsonKey(name: 'is_hidden') this.isHidden, @JsonKey(name: 'ability') this.ability});
  factory _AbilitySlotEntity.fromJson(Map<String, dynamic> json) => _$AbilitySlotEntityFromJson(json);

@override@JsonKey(name: 'slot') final  int? slot;
@override@JsonKey(name: 'is_hidden') final  bool? isHidden;
@override@JsonKey(name: 'ability') final  AbilityEntity? ability;

/// Create a copy of AbilitySlotEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AbilitySlotEntityCopyWith<_AbilitySlotEntity> get copyWith => __$AbilitySlotEntityCopyWithImpl<_AbilitySlotEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AbilitySlotEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AbilitySlotEntity&&(identical(other.slot, slot) || other.slot == slot)&&(identical(other.isHidden, isHidden) || other.isHidden == isHidden)&&(identical(other.ability, ability) || other.ability == ability));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slot,isHidden,ability);

@override
String toString() {
  return 'AbilitySlotEntity(slot: $slot, isHidden: $isHidden, ability: $ability)';
}


}

/// @nodoc
abstract mixin class _$AbilitySlotEntityCopyWith<$Res> implements $AbilitySlotEntityCopyWith<$Res> {
  factory _$AbilitySlotEntityCopyWith(_AbilitySlotEntity value, $Res Function(_AbilitySlotEntity) _then) = __$AbilitySlotEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'slot') int? slot,@JsonKey(name: 'is_hidden') bool? isHidden,@JsonKey(name: 'ability') AbilityEntity? ability
});


@override $AbilityEntityCopyWith<$Res>? get ability;

}
/// @nodoc
class __$AbilitySlotEntityCopyWithImpl<$Res>
    implements _$AbilitySlotEntityCopyWith<$Res> {
  __$AbilitySlotEntityCopyWithImpl(this._self, this._then);

  final _AbilitySlotEntity _self;
  final $Res Function(_AbilitySlotEntity) _then;

/// Create a copy of AbilitySlotEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slot = freezed,Object? isHidden = freezed,Object? ability = freezed,}) {
  return _then(_AbilitySlotEntity(
slot: freezed == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as int?,isHidden: freezed == isHidden ? _self.isHidden : isHidden // ignore: cast_nullable_to_non_nullable
as bool?,ability: freezed == ability ? _self.ability : ability // ignore: cast_nullable_to_non_nullable
as AbilityEntity?,
  ));
}

/// Create a copy of AbilitySlotEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AbilityEntityCopyWith<$Res>? get ability {
    if (_self.ability == null) {
    return null;
  }

  return $AbilityEntityCopyWith<$Res>(_self.ability!, (value) {
    return _then(_self.copyWith(ability: value));
  });
}
}

// dart format on
