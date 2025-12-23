import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/entities/evolution/evolution_detail_entity.dart';
import 'package:pokedex/domain/entities/pokemon/pokemon_entity.dart';
import 'package:pokedex/domain/entities/species/species_entity.dart';

part 'evolution_entity.freezed.dart';

part 'evolution_entity.g.dart';

@freezed
abstract class EvolutionEntity with _$EvolutionEntity {
  const factory EvolutionEntity({
    @JsonKey(name: 'evolution_details') List<EvolutionDetailEntity>? evolutionDetails,
    @JsonKey(name: 'evolves_to') List<EvolutionEntity>? evolvesTo,
    @JsonKey(name: 'is_baby') bool? isBaby,
    @JsonKey(name: 'species') SpeciesEntity? species,
    @JsonKey(name: 'pokemon') PokemonEntity? detailPokemon,
  }) = _EvolutionEntity;

  factory EvolutionEntity.fromJson(Map<String, dynamic> json) =>
      _$EvolutionEntityFromJson(json);

}