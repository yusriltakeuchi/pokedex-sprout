// Created on 25-12-2025 08:54 by yurapsanjani

part of 'remove_favorite_bloc.dart';

@freezed
class RemoveFavoriteState with _$RemoveFavoriteState {
  const factory RemoveFavoriteState.initial() = _RemoveFavoriteInitialState;
  const factory RemoveFavoriteState.loading() = _GetRemoveFavoriteLoadingState;
  const factory RemoveFavoriteState.error(String message) = _GetRemoveFavoriteErrorState;
  const factory RemoveFavoriteState.loaded() = _GetRemoveFavoriteLoadedState;
}