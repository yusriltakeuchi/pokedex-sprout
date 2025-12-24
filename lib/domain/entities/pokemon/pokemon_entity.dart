import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/entities/ability/ability_slot_entity.dart';
import 'package:pokedex/domain/entities/cry/cry_entity.dart';
import 'package:pokedex/domain/entities/moves/move_entity.dart';
import 'package:pokedex/domain/entities/species/species_entity.dart';
import 'package:pokedex/domain/entities/sprite/sprite_entity.dart';
import 'package:pokedex/domain/entities/stat/stat_entity.dart';
import 'package:pokedex/domain/entities/type/type_slot_entity.dart';

part 'pokemon_entity.freezed.dart';

part 'pokemon_entity.g.dart';

@freezed
abstract class PokemonEntity with _$PokemonEntity {
  const factory PokemonEntity({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'weight') int? weight,
    @JsonKey(name: 'order') int? order,
    @JsonKey(name: 'height') int? height,
    @JsonKey(name: 'base_experience') int? baseExperience,
    @JsonKey(name: 'types') List<TypeSlotEntity>? types,
    @JsonKey(name: 'abilities') List<AbilitySlotEntity>? abilities,
    @JsonKey(name: 'cries') CryEntity? cries,
    @JsonKey(name: 'stats') List<StatEntity>? stats,
    @JsonKey(name: 'sprites') SpriteEntity? sprites,
    @JsonKey(name: 'species') SpeciesEntity? species,
    @JsonKey(name: 'moves') MoveEntity? moves,
  }) = _PokemonEntity;

  factory PokemonEntity.fromJson(Map<String, dynamic> json) =>
      _$PokemonEntityFromJson(json);

}