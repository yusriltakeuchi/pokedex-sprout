import 'package:dartz/dartz.dart';
import 'package:pokedex/core/networks/error_handler.dart';
import 'package:pokedex/domain/entities/machine/machine_entity.dart';
import 'package:pokedex/domain/entities/moves/move_detail_entity.dart';
import 'package:pokedex/domain/entities/pokemon/pokemon_entity.dart';
import 'package:pokedex/domain/repositories/pokemon/pokemon_repository.dart';
import 'package:pokedex/infrastructure/datasource/pokemon/pokemon_datasource.dart';
import 'package:pokedex/infrastructure/datasource/pokemon/pokemon_local_datasource.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  final PokemonDataSource pokemonDataSource;
  final PokemonLocalDatasource pokemonLocalDatasource;
  PokemonRepositoryImpl(this.pokemonDataSource, this.pokemonLocalDatasource);

  @override
  Future<Either<Failure, PokemonEntity>> getPokemon(String name)
    => pokemonDataSource.getPokemon(name);

  @override
  Future<Either<Failure, List<PokemonEntity>>> getPokemons({Map<String, dynamic>? params})
    => pokemonDataSource.getPokemons(params: params);

  @override
  Future<Either<Failure, MoveDetailEntity>> getMoves(String id)
    => pokemonDataSource.getMoves(id);

  @override
  Future<Either<Failure, MachineEntity>> getMachine(String id)
    => pokemonDataSource.getMachine(id);

  @override
  Future<Either<Failure, void>> addFavoritePokemon(PokemonEntity pokemon) {
    pokemonLocalDatasource.addFavoritePokemon(pokemon);
    return Future.value(const Right(null));
  }

  @override
  Future<Either<Failure, List<PokemonEntity>>> getFavoritePokemons() async {
    final favorites = await pokemonLocalDatasource.getFavoritePokemons();
    return Future.value(Right(favorites));
  }

  @override
  Future<Either<Failure, void>> removeFavoritePokemon(PokemonEntity pokemon) {
    pokemonLocalDatasource.removeFavoritePokemon(pokemon);
    return Future.value(const Right(null));
  }

  @override
  Future<Either<Failure, bool>> isFavoritePokemon(PokemonEntity pokemon) {
    return pokemonLocalDatasource.isFavoritePokemon(pokemon)
      .then((isFavorite) => Right(isFavorite));
  }
}