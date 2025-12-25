// Created on 25-12-2025 07:29 by yurapsanjani

part of 'get_pokemon_machine_bloc.dart';

@freezed
class GetPokemonMachineState with _$GetPokemonMachineState {
  const factory GetPokemonMachineState.initial() = _GetPokemonMachineInitialState;
  const factory GetPokemonMachineState.loading() = _GetGetPokemonMachineLoadingState;
  const factory GetPokemonMachineState.error(String message) = _GetGetPokemonMachineErrorState;
  const factory GetPokemonMachineState.loaded({
    required List<MachineEntity> machines,
  }) = _GetGetPokemonMachineLoadedState;
}