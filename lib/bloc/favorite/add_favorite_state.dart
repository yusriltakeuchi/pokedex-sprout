// Created on 25-12-2025 08:54 by yurapsanjani

part of 'add_favorite_bloc.dart';

@freezed
class AddFavoriteState with _$AddFavoriteState {
  const factory AddFavoriteState.initial() = _AddFavoriteInitialState;
  const factory AddFavoriteState.loading() = _GetAddFavoriteLoadingState;
  const factory AddFavoriteState.error(String message) = _GetAddFavoriteErrorState;
  const factory AddFavoriteState.loaded() = _GetAddFavoriteLoadedState;
}