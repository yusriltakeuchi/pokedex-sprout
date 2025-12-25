
import 'package:dartz/dartz.dart';
import 'package:pokedex/core/networks/error_handler.dart';
import 'package:pokedex/domain/entities/machine/machine_entity.dart';
import 'package:pokedex/domain/entities/moves/move_detail_entity.dart';
import 'package:pokedex/domain/entities/pokemon/pokemon_entity.dart';

abstract class PokemonRepository {
  Future<Either<Failure, PokemonEntity>> getPokemon(String name);
  Future<Either<Failure, List<PokemonEntity>>> getPokemons({Map<String, dynamic>? params});
  Future<Either<Failure, MoveDetailEntity>> getMoves(String id);
  Future<Either<Failure, MachineEntity>> getMachine(String id);
  Future<Either<Failure, List<PokemonEntity>>> getFavoritePokemons();
  Future<Either<Failure, void>> addFavoritePokemon(PokemonEntity pokemon);
  Future<Either<Failure, void>> removeFavoritePokemon(PokemonEntity pokemon);
  Future<Either<Failure, bool>> isFavoritePokemon(PokemonEntity pokemon);
}