// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PokemonEntity _$PokemonEntityFromJson(Map<String, dynamic> json) =>
    _PokemonEntity(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      weight: (json['weight'] as num?)?.toInt(),
      order: (json['order'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      baseExperience: (json['base_experience'] as num?)?.toInt(),
      types: (json['types'] as List<dynamic>?)
          ?.map((e) => TypeSlotEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      abilities: (json['abilities'] as List<dynamic>?)
          ?.map((e) => AbilitySlotEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      cries: json['cries'] == null
          ? null
          : CryEntity.fromJson(json['cries'] as Map<String, dynamic>),
      stats: (json['stats'] as List<dynamic>?)
          ?.map((e) => StatEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      sprites: json['sprites'] == null
          ? null
          : SpriteEntity.fromJson(json['sprites'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PokemonEntityToJson(_PokemonEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'weight': instance.weight,
      'order': instance.order,
      'height': instance.height,
      'base_experience': instance.baseExperience,
      'types': instance.types,
      'abilities': instance.abilities,
      'cries': instance.cries,
      'stats': instance.stats,
      'sprites': instance.sprites,
    };
