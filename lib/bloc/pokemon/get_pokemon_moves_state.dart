// Created on 24-12-2025 11:21 by mac

part of 'get_pokemon_moves_bloc.dart';

@freezed
class GetPokemonMovesState with _$GetPokemonMovesState {
  const factory GetPokemonMovesState.initial() = _GetPokemonMovesInitialState;
  const factory GetPokemonMovesState.loading() = _GetGetPokemonMovesLoadingState;
  const factory GetPokemonMovesState.error(String message) = _GetGetPokemonMovesErrorState;

  const factory GetPokemonMovesState.loaded({
    required List<MoveDetailEntity> moves,
  }) = _GetGetPokemonMovesLoadedState;
}