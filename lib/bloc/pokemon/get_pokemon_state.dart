// Created on 22-12-2025 19:44 by yurapsanjani

part of 'get_pokemon_bloc.dart';

@freezed
class GetPokemonState with _$GetPokemonState {
  const factory GetPokemonState.initial() = _GetPokemonInitialState;
  const factory GetPokemonState.loading() = _GetGetPokemonLoadingState;
  const factory GetPokemonState.error(String message) = _GetGetPokemonErrorState;
  const factory GetPokemonState.loaded({
    required List<PokemonEntity> pokemons,
    required int offset,
    required int limit,
    required bool hasReachedMax,
    required bool onLoadMore,
  }) = _GetGetPokemonLoadedState;
}