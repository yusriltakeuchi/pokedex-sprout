
import 'package:dartz/dartz.dart';
import 'package:pokedex/core/networks/error_handler.dart';
import 'package:pokedex/domain/entities/pokemon/pokemon_entity.dart';

abstract class PokemonRepository {
  Future<Either<Failure, PokemonEntity>> getPokemon(String id);
  Future<Either<Failure, List<PokemonEntity>>> getPokemons({Map<String, dynamic>? params});
}