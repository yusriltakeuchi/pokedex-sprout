import 'package:dartz/dartz.dart';
import 'package:pokedex/core/constant/endpoint.dart';
import 'package:pokedex/core/networks/api_client.dart';
import 'package:pokedex/core/networks/error_handler.dart';
import 'package:pokedex/domain/entities/pokemon/pokemon_entity.dart';
import 'package:pokedex/infrastructure/datasource/base/api_datasource_ext.dart';

class PokemonDataSource {
  final ApiClient apiClient;
  PokemonDataSource(this.apiClient);

  Future<Either<Failure, List<PokemonEntity>>> getPokemons({Map<String, dynamic>? params}) async
    => apiClient.pokemon.getList(Endpoint.getPokemons, queryParams: params);

  Future<Either<Failure, PokemonEntity>> getPokemon(String id) async
    => apiClient.pokemon.get(Endpoint.getPokemon.replaceAll("{id}", id));
}