// Created on 25-12-2025 08:50 by yurapsanjani

part of 'get_favorite_bloc.dart';

@freezed
class GetFavoriteState with _$GetFavoriteState {
  const factory GetFavoriteState.initial() = _GetFavoriteInitialState;
  const factory GetFavoriteState.loading() = _GetGetFavoriteLoadingState;
  const factory GetFavoriteState.error(String message) = _GetGetFavoriteErrorState;

  const factory GetFavoriteState.loaded({
    required List<PokemonEntity> pokemons,
  }) = _GetGetFavoriteLoadedState;
}