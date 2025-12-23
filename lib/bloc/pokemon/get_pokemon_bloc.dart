// Created on 22-12-2025 19:44 by yurapsanjani

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/dto/base_filter/base_filter_dto.dart';
import 'package:pokedex/domain/entities/pokemon/pokemon_entity.dart';
import 'package:pokedex/domain/repositories/pokemon/pokemon_repository.dart';
import 'package:pokedex/infrastructure/repositories/pokemon/pokemon_repository_impl.dart';
import 'package:pokedex/injection/injector.dart';

import '../../domain/cubit/safe_cubit.dart';

part 'get_pokemon_bloc.freezed.dart';
part 'get_pokemon_state.dart';

class GetPokemonBloc extends SafeCubit<GetPokemonState> {
  GetPokemonBloc() : super(const GetPokemonState.initial());
  final PokemonRepository pokemonRepository = inject<PokemonRepositoryImpl>();

  /// Get pokemon lists from pokemonRepository.getPokemons, after get the list with name
  /// You must looping the lists and get the detail of each pokemon using pokemonRepository.getPokemon
  ///  with parameter name. For this method default offset = 0 and limit = 20
  Future<void> getPokemons(BaseFilterDTO filter) async {
    try {
      emit(const GetPokemonState.loading());
      final either = await pokemonRepository.getPokemons(params: filter.toJson());
      either.fold(
        (failure) {
          emit(GetPokemonState.error(failure.message));
        },
        (pokemonList) async {

          /// Looping to get detail of each pokemon
          List<PokemonEntity> detailedPokemons = [];
          for (var pokemon in pokemonList) {
            final detailEither = await pokemonRepository.getPokemon(pokemon.name ?? "");
            detailEither.fold(
              (failure) {
                // If failure then continue to next pokemon
                return;
              },
              (detailedPokemon) {
                detailedPokemons.add(detailedPokemon);
              },
            );
          }
          emit(GetPokemonState.loaded(
            pokemons: detailedPokemons,
            offset: 0,
            limit: filter.limit ?? 0,
            hasReachedMax: detailedPokemons.length < (filter.limit ?? 0),
            onLoadMore: false,
          ));
        },
      );
    } catch (e) {
      emit(GetPokemonState.error(e.toString()));
    }
  }

  bool _isLoadingMore = false;
  Future<void> loadMore({BaseFilterDTO? filter}) async {
    if (_isLoadingMore) return;

    state.maybeWhen(
      orElse: () {},
      loaded: (pokemons, offset, limit, hasReachedMax, onLoadMore) async {
        if (hasReachedMax || onLoadMore) return;

        // Set flag loading
        _isLoadingMore = true;

        emit(GetPokemonState.loaded(
          pokemons: pokemons,
          offset: offset,
          limit: limit,
          hasReachedMax: hasReachedMax,
          onLoadMore: true,
        ));

        final newOffset = offset + limit;
        final either = await pokemonRepository.getPokemons(
          params: {
            'offset': newOffset,
            'limit': limit,
            ...?filter?.toJson(),
          },
        );
        either.fold(
          (failure) {
            emit(GetPokemonState.error(failure.message));
          },
          (pokemonList) async {
            List<PokemonEntity> detailedPokemons = List.from(pokemons);
            for (var pokemon in pokemonList) {
              final detailEither = await pokemonRepository.getPokemon(pokemon.name ?? "");
              detailEither.fold(
                (failure) {
                  return;
                },
                (detailedPokemon) {
                  detailedPokemons.add(detailedPokemon);
                },
              );
            }
            emit(GetPokemonState.loaded(
              pokemons: detailedPokemons,
              offset: newOffset,
              limit: limit,
              hasReachedMax: detailedPokemons.isEmpty,
              onLoadMore: false,
            ));
          },
        );

        // Reset flag loading
        _isLoadingMore = false;
      },
    );
  }

}
