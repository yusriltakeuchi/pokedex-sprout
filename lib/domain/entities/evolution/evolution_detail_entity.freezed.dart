// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'evolution_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EvolutionDetailEntity {

@JsonKey(name: 'min_level') int? get minLevel;@JsonKey(name: 'trigger') EvolutionTriggerEntity? get trigger;
/// Create a copy of EvolutionDetailEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EvolutionDetailEntityCopyWith<EvolutionDetailEntity> get copyWith => _$EvolutionDetailEntityCopyWithImpl<EvolutionDetailEntity>(this as EvolutionDetailEntity, _$identity);

  /// Serializes this EvolutionDetailEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EvolutionDetailEntity&&(identical(other.minLevel, minLevel) || other.minLevel == minLevel)&&(identical(other.trigger, trigger) || other.trigger == trigger));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,minLevel,trigger);

@override
String toString() {
  return 'EvolutionDetailEntity(minLevel: $minLevel, trigger: $trigger)';
}


}

/// @nodoc
abstract mixin class $EvolutionDetailEntityCopyWith<$Res>  {
  factory $EvolutionDetailEntityCopyWith(EvolutionDetailEntity value, $Res Function(EvolutionDetailEntity) _then) = _$EvolutionDetailEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'min_level') int? minLevel,@JsonKey(name: 'trigger') EvolutionTriggerEntity? trigger
});


$EvolutionTriggerEntityCopyWith<$Res>? get trigger;

}
/// @nodoc
class _$EvolutionDetailEntityCopyWithImpl<$Res>
    implements $EvolutionDetailEntityCopyWith<$Res> {
  _$EvolutionDetailEntityCopyWithImpl(this._self, this._then);

  final EvolutionDetailEntity _self;
  final $Res Function(EvolutionDetailEntity) _then;

/// Create a copy of EvolutionDetailEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? minLevel = freezed,Object? trigger = freezed,}) {
  return _then(_self.copyWith(
minLevel: freezed == minLevel ? _self.minLevel : minLevel // ignore: cast_nullable_to_non_nullable
as int?,trigger: freezed == trigger ? _self.trigger : trigger // ignore: cast_nullable_to_non_nullable
as EvolutionTriggerEntity?,
  ));
}
/// Create a copy of EvolutionDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EvolutionTriggerEntityCopyWith<$Res>? get trigger {
    if (_self.trigger == null) {
    return null;
  }

  return $EvolutionTriggerEntityCopyWith<$Res>(_self.trigger!, (value) {
    return _then(_self.copyWith(trigger: value));
  });
}
}


/// Adds pattern-matching-related methods to [EvolutionDetailEntity].
extension EvolutionDetailEntityPatterns on EvolutionDetailEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EvolutionDetailEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EvolutionDetailEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EvolutionDetailEntity value)  $default,){
final _that = this;
switch (_that) {
case _EvolutionDetailEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EvolutionDetailEntity value)?  $default,){
final _that = this;
switch (_that) {
case _EvolutionDetailEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'min_level')  int? minLevel, @JsonKey(name: 'trigger')  EvolutionTriggerEntity? trigger)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EvolutionDetailEntity() when $default != null:
return $default(_that.minLevel,_that.trigger);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'min_level')  int? minLevel, @JsonKey(name: 'trigger')  EvolutionTriggerEntity? trigger)  $default,) {final _that = this;
switch (_that) {
case _EvolutionDetailEntity():
return $default(_that.minLevel,_that.trigger);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'min_level')  int? minLevel, @JsonKey(name: 'trigger')  EvolutionTriggerEntity? trigger)?  $default,) {final _that = this;
switch (_that) {
case _EvolutionDetailEntity() when $default != null:
return $default(_that.minLevel,_that.trigger);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EvolutionDetailEntity implements EvolutionDetailEntity {
  const _EvolutionDetailEntity({@JsonKey(name: 'min_level') this.minLevel, @JsonKey(name: 'trigger') this.trigger});
  factory _EvolutionDetailEntity.fromJson(Map<String, dynamic> json) => _$EvolutionDetailEntityFromJson(json);

@override@JsonKey(name: 'min_level') final  int? minLevel;
@override@JsonKey(name: 'trigger') final  EvolutionTriggerEntity? trigger;

/// Create a copy of EvolutionDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EvolutionDetailEntityCopyWith<_EvolutionDetailEntity> get copyWith => __$EvolutionDetailEntityCopyWithImpl<_EvolutionDetailEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EvolutionDetailEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EvolutionDetailEntity&&(identical(other.minLevel, minLevel) || other.minLevel == minLevel)&&(identical(other.trigger, trigger) || other.trigger == trigger));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,minLevel,trigger);

@override
String toString() {
  return 'EvolutionDetailEntity(minLevel: $minLevel, trigger: $trigger)';
}


}

/// @nodoc
abstract mixin class _$EvolutionDetailEntityCopyWith<$Res> implements $EvolutionDetailEntityCopyWith<$Res> {
  factory _$EvolutionDetailEntityCopyWith(_EvolutionDetailEntity value, $Res Function(_EvolutionDetailEntity) _then) = __$EvolutionDetailEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'min_level') int? minLevel,@JsonKey(name: 'trigger') EvolutionTriggerEntity? trigger
});


@override $EvolutionTriggerEntityCopyWith<$Res>? get trigger;

}
/// @nodoc
class __$EvolutionDetailEntityCopyWithImpl<$Res>
    implements _$EvolutionDetailEntityCopyWith<$Res> {
  __$EvolutionDetailEntityCopyWithImpl(this._self, this._then);

  final _EvolutionDetailEntity _self;
  final $Res Function(_EvolutionDetailEntity) _then;

/// Create a copy of EvolutionDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? minLevel = freezed,Object? trigger = freezed,}) {
  return _then(_EvolutionDetailEntity(
minLevel: freezed == minLevel ? _self.minLevel : minLevel // ignore: cast_nullable_to_non_nullable
as int?,trigger: freezed == trigger ? _self.trigger : trigger // ignore: cast_nullable_to_non_nullable
as EvolutionTriggerEntity?,
  ));
}

/// Create a copy of EvolutionDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EvolutionTriggerEntityCopyWith<$Res>? get trigger {
    if (_self.trigger == null) {
    return null;
  }

  return $EvolutionTriggerEntityCopyWith<$Res>(_self.trigger!, (value) {
    return _then(_self.copyWith(trigger: value));
  });
}
}

// dart format on
