// Created on 22-12-2025 22:24 by yurapsanjani

part of 'get_species_bloc.dart';

@freezed
class GetSpeciesState with _$GetSpeciesState {
  const factory GetSpeciesState.initial() = _GetSpeciesInitialState;
  const factory GetSpeciesState.loading() = _GetGetSpeciesLoadingState;
  const factory GetSpeciesState.error(String message) = _GetGetSpeciesErrorState;
  const factory GetSpeciesState.loaded({
    required SpeciesEntity species,
  }) = _GetGetSpeciesLoadedState;
}