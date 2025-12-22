// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PokemonEntity {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'weight') int? get weight;@JsonKey(name: 'order') int? get order;@JsonKey(name: 'height') int? get height;@JsonKey(name: 'base_experience') int? get baseExperience;@JsonKey(name: 'types') List<TypeSlotEntity>? get types;@JsonKey(name: 'abilities') List<AbilitySlotEntity>? get abilities;@JsonKey(name: 'cries') CryEntity? get cries;@JsonKey(name: 'stats') List<StatEntity>? get stats;@JsonKey(name: 'sprites') SpriteEntity? get sprites;
/// Create a copy of PokemonEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonEntityCopyWith<PokemonEntity> get copyWith => _$PokemonEntityCopyWithImpl<PokemonEntity>(this as PokemonEntity, _$identity);

  /// Serializes this PokemonEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.order, order) || other.order == order)&&(identical(other.height, height) || other.height == height)&&(identical(other.baseExperience, baseExperience) || other.baseExperience == baseExperience)&&const DeepCollectionEquality().equals(other.types, types)&&const DeepCollectionEquality().equals(other.abilities, abilities)&&(identical(other.cries, cries) || other.cries == cries)&&const DeepCollectionEquality().equals(other.stats, stats)&&(identical(other.sprites, sprites) || other.sprites == sprites));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,weight,order,height,baseExperience,const DeepCollectionEquality().hash(types),const DeepCollectionEquality().hash(abilities),cries,const DeepCollectionEquality().hash(stats),sprites);

@override
String toString() {
  return 'PokemonEntity(id: $id, name: $name, weight: $weight, order: $order, height: $height, baseExperience: $baseExperience, types: $types, abilities: $abilities, cries: $cries, stats: $stats, sprites: $sprites)';
}


}

/// @nodoc
abstract mixin class $PokemonEntityCopyWith<$Res>  {
  factory $PokemonEntityCopyWith(PokemonEntity value, $Res Function(PokemonEntity) _then) = _$PokemonEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'weight') int? weight,@JsonKey(name: 'order') int? order,@JsonKey(name: 'height') int? height,@JsonKey(name: 'base_experience') int? baseExperience,@JsonKey(name: 'types') List<TypeSlotEntity>? types,@JsonKey(name: 'abilities') List<AbilitySlotEntity>? abilities,@JsonKey(name: 'cries') CryEntity? cries,@JsonKey(name: 'stats') List<StatEntity>? stats,@JsonKey(name: 'sprites') SpriteEntity? sprites
});


$CryEntityCopyWith<$Res>? get cries;$SpriteEntityCopyWith<$Res>? get sprites;

}
/// @nodoc
class _$PokemonEntityCopyWithImpl<$Res>
    implements $PokemonEntityCopyWith<$Res> {
  _$PokemonEntityCopyWithImpl(this._self, this._then);

  final PokemonEntity _self;
  final $Res Function(PokemonEntity) _then;

/// Create a copy of PokemonEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? weight = freezed,Object? order = freezed,Object? height = freezed,Object? baseExperience = freezed,Object? types = freezed,Object? abilities = freezed,Object? cries = freezed,Object? stats = freezed,Object? sprites = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int?,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int?,baseExperience: freezed == baseExperience ? _self.baseExperience : baseExperience // ignore: cast_nullable_to_non_nullable
as int?,types: freezed == types ? _self.types : types // ignore: cast_nullable_to_non_nullable
as List<TypeSlotEntity>?,abilities: freezed == abilities ? _self.abilities : abilities // ignore: cast_nullable_to_non_nullable
as List<AbilitySlotEntity>?,cries: freezed == cries ? _self.cries : cries // ignore: cast_nullable_to_non_nullable
as CryEntity?,stats: freezed == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as List<StatEntity>?,sprites: freezed == sprites ? _self.sprites : sprites // ignore: cast_nullable_to_non_nullable
as SpriteEntity?,
  ));
}
/// Create a copy of PokemonEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CryEntityCopyWith<$Res>? get cries {
    if (_self.cries == null) {
    return null;
  }

  return $CryEntityCopyWith<$Res>(_self.cries!, (value) {
    return _then(_self.copyWith(cries: value));
  });
}/// Create a copy of PokemonEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpriteEntityCopyWith<$Res>? get sprites {
    if (_self.sprites == null) {
    return null;
  }

  return $SpriteEntityCopyWith<$Res>(_self.sprites!, (value) {
    return _then(_self.copyWith(sprites: value));
  });
}
}


/// Adds pattern-matching-related methods to [PokemonEntity].
extension PokemonEntityPatterns on PokemonEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonEntity value)  $default,){
final _that = this;
switch (_that) {
case _PokemonEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'weight')  int? weight, @JsonKey(name: 'order')  int? order, @JsonKey(name: 'height')  int? height, @JsonKey(name: 'base_experience')  int? baseExperience, @JsonKey(name: 'types')  List<TypeSlotEntity>? types, @JsonKey(name: 'abilities')  List<AbilitySlotEntity>? abilities, @JsonKey(name: 'cries')  CryEntity? cries, @JsonKey(name: 'stats')  List<StatEntity>? stats, @JsonKey(name: 'sprites')  SpriteEntity? sprites)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonEntity() when $default != null:
return $default(_that.id,_that.name,_that.weight,_that.order,_that.height,_that.baseExperience,_that.types,_that.abilities,_that.cries,_that.stats,_that.sprites);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'weight')  int? weight, @JsonKey(name: 'order')  int? order, @JsonKey(name: 'height')  int? height, @JsonKey(name: 'base_experience')  int? baseExperience, @JsonKey(name: 'types')  List<TypeSlotEntity>? types, @JsonKey(name: 'abilities')  List<AbilitySlotEntity>? abilities, @JsonKey(name: 'cries')  CryEntity? cries, @JsonKey(name: 'stats')  List<StatEntity>? stats, @JsonKey(name: 'sprites')  SpriteEntity? sprites)  $default,) {final _that = this;
switch (_that) {
case _PokemonEntity():
return $default(_that.id,_that.name,_that.weight,_that.order,_that.height,_that.baseExperience,_that.types,_that.abilities,_that.cries,_that.stats,_that.sprites);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'weight')  int? weight, @JsonKey(name: 'order')  int? order, @JsonKey(name: 'height')  int? height, @JsonKey(name: 'base_experience')  int? baseExperience, @JsonKey(name: 'types')  List<TypeSlotEntity>? types, @JsonKey(name: 'abilities')  List<AbilitySlotEntity>? abilities, @JsonKey(name: 'cries')  CryEntity? cries, @JsonKey(name: 'stats')  List<StatEntity>? stats, @JsonKey(name: 'sprites')  SpriteEntity? sprites)?  $default,) {final _that = this;
switch (_that) {
case _PokemonEntity() when $default != null:
return $default(_that.id,_that.name,_that.weight,_that.order,_that.height,_that.baseExperience,_that.types,_that.abilities,_that.cries,_that.stats,_that.sprites);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonEntity implements PokemonEntity {
  const _PokemonEntity({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'weight') this.weight, @JsonKey(name: 'order') this.order, @JsonKey(name: 'height') this.height, @JsonKey(name: 'base_experience') this.baseExperience, @JsonKey(name: 'types') final  List<TypeSlotEntity>? types, @JsonKey(name: 'abilities') final  List<AbilitySlotEntity>? abilities, @JsonKey(name: 'cries') this.cries, @JsonKey(name: 'stats') final  List<StatEntity>? stats, @JsonKey(name: 'sprites') this.sprites}): _types = types,_abilities = abilities,_stats = stats;
  factory _PokemonEntity.fromJson(Map<String, dynamic> json) => _$PokemonEntityFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'weight') final  int? weight;
@override@JsonKey(name: 'order') final  int? order;
@override@JsonKey(name: 'height') final  int? height;
@override@JsonKey(name: 'base_experience') final  int? baseExperience;
 final  List<TypeSlotEntity>? _types;
@override@JsonKey(name: 'types') List<TypeSlotEntity>? get types {
  final value = _types;
  if (value == null) return null;
  if (_types is EqualUnmodifiableListView) return _types;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<AbilitySlotEntity>? _abilities;
@override@JsonKey(name: 'abilities') List<AbilitySlotEntity>? get abilities {
  final value = _abilities;
  if (value == null) return null;
  if (_abilities is EqualUnmodifiableListView) return _abilities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'cries') final  CryEntity? cries;
 final  List<StatEntity>? _stats;
@override@JsonKey(name: 'stats') List<StatEntity>? get stats {
  final value = _stats;
  if (value == null) return null;
  if (_stats is EqualUnmodifiableListView) return _stats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'sprites') final  SpriteEntity? sprites;

/// Create a copy of PokemonEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonEntityCopyWith<_PokemonEntity> get copyWith => __$PokemonEntityCopyWithImpl<_PokemonEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.order, order) || other.order == order)&&(identical(other.height, height) || other.height == height)&&(identical(other.baseExperience, baseExperience) || other.baseExperience == baseExperience)&&const DeepCollectionEquality().equals(other._types, _types)&&const DeepCollectionEquality().equals(other._abilities, _abilities)&&(identical(other.cries, cries) || other.cries == cries)&&const DeepCollectionEquality().equals(other._stats, _stats)&&(identical(other.sprites, sprites) || other.sprites == sprites));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,weight,order,height,baseExperience,const DeepCollectionEquality().hash(_types),const DeepCollectionEquality().hash(_abilities),cries,const DeepCollectionEquality().hash(_stats),sprites);

@override
String toString() {
  return 'PokemonEntity(id: $id, name: $name, weight: $weight, order: $order, height: $height, baseExperience: $baseExperience, types: $types, abilities: $abilities, cries: $cries, stats: $stats, sprites: $sprites)';
}


}

/// @nodoc
abstract mixin class _$PokemonEntityCopyWith<$Res> implements $PokemonEntityCopyWith<$Res> {
  factory _$PokemonEntityCopyWith(_PokemonEntity value, $Res Function(_PokemonEntity) _then) = __$PokemonEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'weight') int? weight,@JsonKey(name: 'order') int? order,@JsonKey(name: 'height') int? height,@JsonKey(name: 'base_experience') int? baseExperience,@JsonKey(name: 'types') List<TypeSlotEntity>? types,@JsonKey(name: 'abilities') List<AbilitySlotEntity>? abilities,@JsonKey(name: 'cries') CryEntity? cries,@JsonKey(name: 'stats') List<StatEntity>? stats,@JsonKey(name: 'sprites') SpriteEntity? sprites
});


@override $CryEntityCopyWith<$Res>? get cries;@override $SpriteEntityCopyWith<$Res>? get sprites;

}
/// @nodoc
class __$PokemonEntityCopyWithImpl<$Res>
    implements _$PokemonEntityCopyWith<$Res> {
  __$PokemonEntityCopyWithImpl(this._self, this._then);

  final _PokemonEntity _self;
  final $Res Function(_PokemonEntity) _then;

/// Create a copy of PokemonEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? weight = freezed,Object? order = freezed,Object? height = freezed,Object? baseExperience = freezed,Object? types = freezed,Object? abilities = freezed,Object? cries = freezed,Object? stats = freezed,Object? sprites = freezed,}) {
  return _then(_PokemonEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int?,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int?,baseExperience: freezed == baseExperience ? _self.baseExperience : baseExperience // ignore: cast_nullable_to_non_nullable
as int?,types: freezed == types ? _self._types : types // ignore: cast_nullable_to_non_nullable
as List<TypeSlotEntity>?,abilities: freezed == abilities ? _self._abilities : abilities // ignore: cast_nullable_to_non_nullable
as List<AbilitySlotEntity>?,cries: freezed == cries ? _self.cries : cries // ignore: cast_nullable_to_non_nullable
as CryEntity?,stats: freezed == stats ? _self._stats : stats // ignore: cast_nullable_to_non_nullable
as List<StatEntity>?,sprites: freezed == sprites ? _self.sprites : sprites // ignore: cast_nullable_to_non_nullable
as SpriteEntity?,
  ));
}

/// Create a copy of PokemonEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CryEntityCopyWith<$Res>? get cries {
    if (_self.cries == null) {
    return null;
  }

  return $CryEntityCopyWith<$Res>(_self.cries!, (value) {
    return _then(_self.copyWith(cries: value));
  });
}/// Create a copy of PokemonEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpriteEntityCopyWith<$Res>? get sprites {
    if (_self.sprites == null) {
    return null;
  }

  return $SpriteEntityCopyWith<$Res>(_self.sprites!, (value) {
    return _then(_self.copyWith(sprites: value));
  });
}
}

// dart format on
