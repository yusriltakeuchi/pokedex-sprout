// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evolution_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EvolutionEntity _$EvolutionEntityFromJson(Map<String, dynamic> json) =>
    _EvolutionEntity(
      evolutionDetails: (json['evolution_details'] as List<dynamic>?)
          ?.map(
            (e) => EvolutionDetailEntity.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      evolvesTo: (json['evolves_to'] as List<dynamic>?)
          ?.map((e) => EvolutionEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      isBaby: json['is_baby'] as bool?,
      species: json['species'] == null
          ? null
          : SpeciesEntity.fromJson(json['species'] as Map<String, dynamic>),
      detailPokemon: json['pokemon'] == null
          ? null
          : PokemonEntity.fromJson(json['pokemon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EvolutionEntityToJson(_EvolutionEntity instance) =>
    <String, dynamic>{
      'evolution_details': instance.evolutionDetails,
      'evolves_to': instance.evolvesTo,
      'is_baby': instance.isBaby,
      'species': instance.species,
      'pokemon': instance.detailPokemon,
    };
