
import 'package:pokedex/core/networks/api_client.dart';
import 'package:pokedex/domain/entities/pokemon/pokemon_entity.dart';
import 'package:pokedex/infrastructure/datasource/base/api_datasource.dart';

extension APIExtension on ApiClient {
  /// POKEMON ENTITY
  ApiDataSource<PokemonEntity> get pokemon =>
      ApiDataSource<PokemonEntity>(this, PokemonEntity.fromJson);
}