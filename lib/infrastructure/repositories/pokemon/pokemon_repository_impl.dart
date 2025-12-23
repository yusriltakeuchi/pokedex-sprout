import 'package:dartz/dartz.dart';
import 'package:pokedex/core/networks/error_handler.dart';
import 'package:pokedex/domain/entities/pokemon/pokemon_entity.dart';
import 'package:pokedex/domain/repositories/pokemon/pokemon_repository.dart';
import 'package:pokedex/infrastructure/datasource/pokemon/pokemon_datasource.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  final PokemonDataSource pokemonDataSource;
  PokemonRepositoryImpl(this.pokemonDataSource);

  @override
  Future<Either<Failure, PokemonEntity>> getPokemon(String name)
    => pokemonDataSource.getPokemon(name);

  @override
  Future<Either<Failure, List<PokemonEntity>>> getPokemons({Map<String, dynamic>? params})
    => pokemonDataSource.getPokemons(params: params);

}