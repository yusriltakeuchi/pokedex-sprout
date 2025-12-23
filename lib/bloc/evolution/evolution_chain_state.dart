// Created on 23-12-2025 20:48 by yurapsanjani

part of 'evolution_chain_bloc.dart';

@freezed
class EvolutionChainState with _$EvolutionChainState {
  const factory EvolutionChainState.initial() = _EvolutionChainInitialState;
  const factory EvolutionChainState.loading() = _GetEvolutionChainLoadingState;
  const factory EvolutionChainState.error(String message) = _GetEvolutionChainErrorState;
  const factory EvolutionChainState.loaded({
    required EvolutionChainEntity evolutionChain,
  }) = _GetEvolutionChainLoadedState;
}