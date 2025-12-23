// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'species_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SpeciesEntity {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'url') String? get url;@JsonKey(name: 'gender_rate') int? get genderRate;@JsonKey(name: 'egg_groups') List<EggGroupEntity>? get eggGroups;@JsonKey(name: 'hatch_counter') int? get hatchCounter;@JsonKey(name: 'evolution_chain') EvolutionChainEntity? get evolutionChain;
/// Create a copy of SpeciesEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpeciesEntityCopyWith<SpeciesEntity> get copyWith => _$SpeciesEntityCopyWithImpl<SpeciesEntity>(this as SpeciesEntity, _$identity);

  /// Serializes this SpeciesEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpeciesEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&(identical(other.genderRate, genderRate) || other.genderRate == genderRate)&&const DeepCollectionEquality().equals(other.eggGroups, eggGroups)&&(identical(other.hatchCounter, hatchCounter) || other.hatchCounter == hatchCounter)&&(identical(other.evolutionChain, evolutionChain) || other.evolutionChain == evolutionChain));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,url,genderRate,const DeepCollectionEquality().hash(eggGroups),hatchCounter,evolutionChain);

@override
String toString() {
  return 'SpeciesEntity(id: $id, name: $name, url: $url, genderRate: $genderRate, eggGroups: $eggGroups, hatchCounter: $hatchCounter, evolutionChain: $evolutionChain)';
}


}

/// @nodoc
abstract mixin class $SpeciesEntityCopyWith<$Res>  {
  factory $SpeciesEntityCopyWith(SpeciesEntity value, $Res Function(SpeciesEntity) _then) = _$SpeciesEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'url') String? url,@JsonKey(name: 'gender_rate') int? genderRate,@JsonKey(name: 'egg_groups') List<EggGroupEntity>? eggGroups,@JsonKey(name: 'hatch_counter') int? hatchCounter,@JsonKey(name: 'evolution_chain') EvolutionChainEntity? evolutionChain
});


$EvolutionChainEntityCopyWith<$Res>? get evolutionChain;

}
/// @nodoc
class _$SpeciesEntityCopyWithImpl<$Res>
    implements $SpeciesEntityCopyWith<$Res> {
  _$SpeciesEntityCopyWithImpl(this._self, this._then);

  final SpeciesEntity _self;
  final $Res Function(SpeciesEntity) _then;

/// Create a copy of SpeciesEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? url = freezed,Object? genderRate = freezed,Object? eggGroups = freezed,Object? hatchCounter = freezed,Object? evolutionChain = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,genderRate: freezed == genderRate ? _self.genderRate : genderRate // ignore: cast_nullable_to_non_nullable
as int?,eggGroups: freezed == eggGroups ? _self.eggGroups : eggGroups // ignore: cast_nullable_to_non_nullable
as List<EggGroupEntity>?,hatchCounter: freezed == hatchCounter ? _self.hatchCounter : hatchCounter // ignore: cast_nullable_to_non_nullable
as int?,evolutionChain: freezed == evolutionChain ? _self.evolutionChain : evolutionChain // ignore: cast_nullable_to_non_nullable
as EvolutionChainEntity?,
  ));
}
/// Create a copy of SpeciesEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EvolutionChainEntityCopyWith<$Res>? get evolutionChain {
    if (_self.evolutionChain == null) {
    return null;
  }

  return $EvolutionChainEntityCopyWith<$Res>(_self.evolutionChain!, (value) {
    return _then(_self.copyWith(evolutionChain: value));
  });
}
}


/// Adds pattern-matching-related methods to [SpeciesEntity].
extension SpeciesEntityPatterns on SpeciesEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpeciesEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpeciesEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpeciesEntity value)  $default,){
final _that = this;
switch (_that) {
case _SpeciesEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpeciesEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SpeciesEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'url')  String? url, @JsonKey(name: 'gender_rate')  int? genderRate, @JsonKey(name: 'egg_groups')  List<EggGroupEntity>? eggGroups, @JsonKey(name: 'hatch_counter')  int? hatchCounter, @JsonKey(name: 'evolution_chain')  EvolutionChainEntity? evolutionChain)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpeciesEntity() when $default != null:
return $default(_that.id,_that.name,_that.url,_that.genderRate,_that.eggGroups,_that.hatchCounter,_that.evolutionChain);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'url')  String? url, @JsonKey(name: 'gender_rate')  int? genderRate, @JsonKey(name: 'egg_groups')  List<EggGroupEntity>? eggGroups, @JsonKey(name: 'hatch_counter')  int? hatchCounter, @JsonKey(name: 'evolution_chain')  EvolutionChainEntity? evolutionChain)  $default,) {final _that = this;
switch (_that) {
case _SpeciesEntity():
return $default(_that.id,_that.name,_that.url,_that.genderRate,_that.eggGroups,_that.hatchCounter,_that.evolutionChain);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'url')  String? url, @JsonKey(name: 'gender_rate')  int? genderRate, @JsonKey(name: 'egg_groups')  List<EggGroupEntity>? eggGroups, @JsonKey(name: 'hatch_counter')  int? hatchCounter, @JsonKey(name: 'evolution_chain')  EvolutionChainEntity? evolutionChain)?  $default,) {final _that = this;
switch (_that) {
case _SpeciesEntity() when $default != null:
return $default(_that.id,_that.name,_that.url,_that.genderRate,_that.eggGroups,_that.hatchCounter,_that.evolutionChain);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SpeciesEntity implements SpeciesEntity {
  const _SpeciesEntity({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'url') this.url, @JsonKey(name: 'gender_rate') this.genderRate, @JsonKey(name: 'egg_groups') final  List<EggGroupEntity>? eggGroups, @JsonKey(name: 'hatch_counter') this.hatchCounter, @JsonKey(name: 'evolution_chain') this.evolutionChain}): _eggGroups = eggGroups;
  factory _SpeciesEntity.fromJson(Map<String, dynamic> json) => _$SpeciesEntityFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'url') final  String? url;
@override@JsonKey(name: 'gender_rate') final  int? genderRate;
 final  List<EggGroupEntity>? _eggGroups;
@override@JsonKey(name: 'egg_groups') List<EggGroupEntity>? get eggGroups {
  final value = _eggGroups;
  if (value == null) return null;
  if (_eggGroups is EqualUnmodifiableListView) return _eggGroups;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'hatch_counter') final  int? hatchCounter;
@override@JsonKey(name: 'evolution_chain') final  EvolutionChainEntity? evolutionChain;

/// Create a copy of SpeciesEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpeciesEntityCopyWith<_SpeciesEntity> get copyWith => __$SpeciesEntityCopyWithImpl<_SpeciesEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpeciesEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpeciesEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&(identical(other.genderRate, genderRate) || other.genderRate == genderRate)&&const DeepCollectionEquality().equals(other._eggGroups, _eggGroups)&&(identical(other.hatchCounter, hatchCounter) || other.hatchCounter == hatchCounter)&&(identical(other.evolutionChain, evolutionChain) || other.evolutionChain == evolutionChain));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,url,genderRate,const DeepCollectionEquality().hash(_eggGroups),hatchCounter,evolutionChain);

@override
String toString() {
  return 'SpeciesEntity(id: $id, name: $name, url: $url, genderRate: $genderRate, eggGroups: $eggGroups, hatchCounter: $hatchCounter, evolutionChain: $evolutionChain)';
}


}

/// @nodoc
abstract mixin class _$SpeciesEntityCopyWith<$Res> implements $SpeciesEntityCopyWith<$Res> {
  factory _$SpeciesEntityCopyWith(_SpeciesEntity value, $Res Function(_SpeciesEntity) _then) = __$SpeciesEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'url') String? url,@JsonKey(name: 'gender_rate') int? genderRate,@JsonKey(name: 'egg_groups') List<EggGroupEntity>? eggGroups,@JsonKey(name: 'hatch_counter') int? hatchCounter,@JsonKey(name: 'evolution_chain') EvolutionChainEntity? evolutionChain
});


@override $EvolutionChainEntityCopyWith<$Res>? get evolutionChain;

}
/// @nodoc
class __$SpeciesEntityCopyWithImpl<$Res>
    implements _$SpeciesEntityCopyWith<$Res> {
  __$SpeciesEntityCopyWithImpl(this._self, this._then);

  final _SpeciesEntity _self;
  final $Res Function(_SpeciesEntity) _then;

/// Create a copy of SpeciesEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? url = freezed,Object? genderRate = freezed,Object? eggGroups = freezed,Object? hatchCounter = freezed,Object? evolutionChain = freezed,}) {
  return _then(_SpeciesEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,genderRate: freezed == genderRate ? _self.genderRate : genderRate // ignore: cast_nullable_to_non_nullable
as int?,eggGroups: freezed == eggGroups ? _self._eggGroups : eggGroups // ignore: cast_nullable_to_non_nullable
as List<EggGroupEntity>?,hatchCounter: freezed == hatchCounter ? _self.hatchCounter : hatchCounter // ignore: cast_nullable_to_non_nullable
as int?,evolutionChain: freezed == evolutionChain ? _self.evolutionChain : evolutionChain // ignore: cast_nullable_to_non_nullable
as EvolutionChainEntity?,
  ));
}

/// Create a copy of SpeciesEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EvolutionChainEntityCopyWith<$Res>? get evolutionChain {
    if (_self.evolutionChain == null) {
    return null;
  }

  return $EvolutionChainEntityCopyWith<$Res>(_self.evolutionChain!, (value) {
    return _then(_self.copyWith(evolutionChain: value));
  });
}
}

// dart format on
