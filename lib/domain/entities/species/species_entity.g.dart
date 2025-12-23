// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'species_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SpeciesEntity _$SpeciesEntityFromJson(Map<String, dynamic> json) =>
    _SpeciesEntity(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      url: json['url'] as String?,
      genderRate: (json['gender_rate'] as num?)?.toInt(),
      eggGroups: (json['egg_groups'] as List<dynamic>?)
          ?.map((e) => EggGroupEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      hatchCounter: (json['hatch_counter'] as num?)?.toInt(),
      evolutionChain: json['evolution_chain'] == null
          ? null
          : EvolutionChainEntity.fromJson(
              json['evolution_chain'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$SpeciesEntityToJson(_SpeciesEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'gender_rate': instance.genderRate,
      'egg_groups': instance.eggGroups,
      'hatch_counter': instance.hatchCounter,
      'evolution_chain': instance.evolutionChain,
    };
