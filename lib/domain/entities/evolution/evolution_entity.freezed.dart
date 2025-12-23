// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'evolution_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EvolutionEntity {

@JsonKey(name: 'evolution_details') List<EvolutionDetailEntity>? get evolutionDetails;@JsonKey(name: 'evolves_to') List<EvolutionEntity>? get evolvesTo;@JsonKey(name: 'is_baby') bool? get isBaby;@JsonKey(name: 'species') SpeciesEntity? get species;
/// Create a copy of EvolutionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EvolutionEntityCopyWith<EvolutionEntity> get copyWith => _$EvolutionEntityCopyWithImpl<EvolutionEntity>(this as EvolutionEntity, _$identity);

  /// Serializes this EvolutionEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EvolutionEntity&&const DeepCollectionEquality().equals(other.evolutionDetails, evolutionDetails)&&const DeepCollectionEquality().equals(other.evolvesTo, evolvesTo)&&(identical(other.isBaby, isBaby) || other.isBaby == isBaby)&&(identical(other.species, species) || other.species == species));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(evolutionDetails),const DeepCollectionEquality().hash(evolvesTo),isBaby,species);

@override
String toString() {
  return 'EvolutionEntity(evolutionDetails: $evolutionDetails, evolvesTo: $evolvesTo, isBaby: $isBaby, species: $species)';
}


}

/// @nodoc
abstract mixin class $EvolutionEntityCopyWith<$Res>  {
  factory $EvolutionEntityCopyWith(EvolutionEntity value, $Res Function(EvolutionEntity) _then) = _$EvolutionEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'evolution_details') List<EvolutionDetailEntity>? evolutionDetails,@JsonKey(name: 'evolves_to') List<EvolutionEntity>? evolvesTo,@JsonKey(name: 'is_baby') bool? isBaby,@JsonKey(name: 'species') SpeciesEntity? species
});


$SpeciesEntityCopyWith<$Res>? get species;

}
/// @nodoc
class _$EvolutionEntityCopyWithImpl<$Res>
    implements $EvolutionEntityCopyWith<$Res> {
  _$EvolutionEntityCopyWithImpl(this._self, this._then);

  final EvolutionEntity _self;
  final $Res Function(EvolutionEntity) _then;

/// Create a copy of EvolutionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? evolutionDetails = freezed,Object? evolvesTo = freezed,Object? isBaby = freezed,Object? species = freezed,}) {
  return _then(_self.copyWith(
evolutionDetails: freezed == evolutionDetails ? _self.evolutionDetails : evolutionDetails // ignore: cast_nullable_to_non_nullable
as List<EvolutionDetailEntity>?,evolvesTo: freezed == evolvesTo ? _self.evolvesTo : evolvesTo // ignore: cast_nullable_to_non_nullable
as List<EvolutionEntity>?,isBaby: freezed == isBaby ? _self.isBaby : isBaby // ignore: cast_nullable_to_non_nullable
as bool?,species: freezed == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as SpeciesEntity?,
  ));
}
/// Create a copy of EvolutionEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpeciesEntityCopyWith<$Res>? get species {
    if (_self.species == null) {
    return null;
  }

  return $SpeciesEntityCopyWith<$Res>(_self.species!, (value) {
    return _then(_self.copyWith(species: value));
  });
}
}


/// Adds pattern-matching-related methods to [EvolutionEntity].
extension EvolutionEntityPatterns on EvolutionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EvolutionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EvolutionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EvolutionEntity value)  $default,){
final _that = this;
switch (_that) {
case _EvolutionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EvolutionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _EvolutionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'evolution_details')  List<EvolutionDetailEntity>? evolutionDetails, @JsonKey(name: 'evolves_to')  List<EvolutionEntity>? evolvesTo, @JsonKey(name: 'is_baby')  bool? isBaby, @JsonKey(name: 'species')  SpeciesEntity? species)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EvolutionEntity() when $default != null:
return $default(_that.evolutionDetails,_that.evolvesTo,_that.isBaby,_that.species);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'evolution_details')  List<EvolutionDetailEntity>? evolutionDetails, @JsonKey(name: 'evolves_to')  List<EvolutionEntity>? evolvesTo, @JsonKey(name: 'is_baby')  bool? isBaby, @JsonKey(name: 'species')  SpeciesEntity? species)  $default,) {final _that = this;
switch (_that) {
case _EvolutionEntity():
return $default(_that.evolutionDetails,_that.evolvesTo,_that.isBaby,_that.species);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'evolution_details')  List<EvolutionDetailEntity>? evolutionDetails, @JsonKey(name: 'evolves_to')  List<EvolutionEntity>? evolvesTo, @JsonKey(name: 'is_baby')  bool? isBaby, @JsonKey(name: 'species')  SpeciesEntity? species)?  $default,) {final _that = this;
switch (_that) {
case _EvolutionEntity() when $default != null:
return $default(_that.evolutionDetails,_that.evolvesTo,_that.isBaby,_that.species);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EvolutionEntity implements EvolutionEntity {
  const _EvolutionEntity({@JsonKey(name: 'evolution_details') final  List<EvolutionDetailEntity>? evolutionDetails, @JsonKey(name: 'evolves_to') final  List<EvolutionEntity>? evolvesTo, @JsonKey(name: 'is_baby') this.isBaby, @JsonKey(name: 'species') this.species}): _evolutionDetails = evolutionDetails,_evolvesTo = evolvesTo;
  factory _EvolutionEntity.fromJson(Map<String, dynamic> json) => _$EvolutionEntityFromJson(json);

 final  List<EvolutionDetailEntity>? _evolutionDetails;
@override@JsonKey(name: 'evolution_details') List<EvolutionDetailEntity>? get evolutionDetails {
  final value = _evolutionDetails;
  if (value == null) return null;
  if (_evolutionDetails is EqualUnmodifiableListView) return _evolutionDetails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<EvolutionEntity>? _evolvesTo;
@override@JsonKey(name: 'evolves_to') List<EvolutionEntity>? get evolvesTo {
  final value = _evolvesTo;
  if (value == null) return null;
  if (_evolvesTo is EqualUnmodifiableListView) return _evolvesTo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'is_baby') final  bool? isBaby;
@override@JsonKey(name: 'species') final  SpeciesEntity? species;

/// Create a copy of EvolutionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EvolutionEntityCopyWith<_EvolutionEntity> get copyWith => __$EvolutionEntityCopyWithImpl<_EvolutionEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EvolutionEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EvolutionEntity&&const DeepCollectionEquality().equals(other._evolutionDetails, _evolutionDetails)&&const DeepCollectionEquality().equals(other._evolvesTo, _evolvesTo)&&(identical(other.isBaby, isBaby) || other.isBaby == isBaby)&&(identical(other.species, species) || other.species == species));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_evolutionDetails),const DeepCollectionEquality().hash(_evolvesTo),isBaby,species);

@override
String toString() {
  return 'EvolutionEntity(evolutionDetails: $evolutionDetails, evolvesTo: $evolvesTo, isBaby: $isBaby, species: $species)';
}


}

/// @nodoc
abstract mixin class _$EvolutionEntityCopyWith<$Res> implements $EvolutionEntityCopyWith<$Res> {
  factory _$EvolutionEntityCopyWith(_EvolutionEntity value, $Res Function(_EvolutionEntity) _then) = __$EvolutionEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'evolution_details') List<EvolutionDetailEntity>? evolutionDetails,@JsonKey(name: 'evolves_to') List<EvolutionEntity>? evolvesTo,@JsonKey(name: 'is_baby') bool? isBaby,@JsonKey(name: 'species') SpeciesEntity? species
});


@override $SpeciesEntityCopyWith<$Res>? get species;

}
/// @nodoc
class __$EvolutionEntityCopyWithImpl<$Res>
    implements _$EvolutionEntityCopyWith<$Res> {
  __$EvolutionEntityCopyWithImpl(this._self, this._then);

  final _EvolutionEntity _self;
  final $Res Function(_EvolutionEntity) _then;

/// Create a copy of EvolutionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? evolutionDetails = freezed,Object? evolvesTo = freezed,Object? isBaby = freezed,Object? species = freezed,}) {
  return _then(_EvolutionEntity(
evolutionDetails: freezed == evolutionDetails ? _self._evolutionDetails : evolutionDetails // ignore: cast_nullable_to_non_nullable
as List<EvolutionDetailEntity>?,evolvesTo: freezed == evolvesTo ? _self._evolvesTo : evolvesTo // ignore: cast_nullable_to_non_nullable
as List<EvolutionEntity>?,isBaby: freezed == isBaby ? _self.isBaby : isBaby // ignore: cast_nullable_to_non_nullable
as bool?,species: freezed == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as SpeciesEntity?,
  ));
}

/// Create a copy of EvolutionEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpeciesEntityCopyWith<$Res>? get species {
    if (_self.species == null) {
    return null;
  }

  return $SpeciesEntityCopyWith<$Res>(_self.species!, (value) {
    return _then(_self.copyWith(species: value));
  });
}
}

// dart format on
