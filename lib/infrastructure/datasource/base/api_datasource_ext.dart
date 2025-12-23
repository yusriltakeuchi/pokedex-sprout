
import 'package:pokedex/core/networks/api_client.dart';
import 'package:pokedex/domain/entities/pokemon/pokemon_entity.dart';
import 'package:pokedex/domain/entities/species/species_entity.dart';
import 'package:pokedex/domain/entities/type/type_element_entity.dart';
import 'package:pokedex/domain/entities/type/type_element_entity.dart';
import 'package:pokedex/domain/entities/type/type_element_entity.dart';
import 'package:pokedex/infrastructure/datasource/base/api_datasource.dart';

extension APIExtension on ApiClient {
  /// POKEMON ENTITY
  ApiDataSource<PokemonEntity> get pokemon =>
      ApiDataSource<PokemonEntity>(this, PokemonEntity.fromJson);
  /// SPECIES ENTITY
  ApiDataSource<SpeciesEntity> get species =>
      ApiDataSource<SpeciesEntity>(this, SpeciesEntity.fromJson);
  /// TYPE ENTITY
  ApiDataSource<TypeElementEntity> get type =>
      ApiDataSource<TypeElementEntity>(this, TypeElementEntity.fromJson);
}