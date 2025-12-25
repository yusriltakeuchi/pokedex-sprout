// Created on 25-12-2025 08:53 by yurapsanjani

part of 'is_favorite_bloc.dart';

@freezed
class IsFavoriteState with _$IsFavoriteState {
  const factory IsFavoriteState.initial() = _IsFavoriteInitialState;
  const factory IsFavoriteState.loading() = _GetIsFavoriteLoadingState;
  const factory IsFavoriteState.error(String message) = _GetIsFavoriteErrorState;
  const factory IsFavoriteState.loaded({
    required bool isFavorited,
  }) = _GetIsFavoriteLoadedState;
}