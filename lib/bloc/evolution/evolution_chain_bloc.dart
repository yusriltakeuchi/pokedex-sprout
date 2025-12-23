// Created on 23-12-2025 20:48 by yurapsanjani

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/entities/evolution/evolution_chain_entity.dart';
import 'package:pokedex/domain/repositories/evolution/evolution_repository.dart';
import 'package:pokedex/infrastructure/repositories/evolution/evolution_repository_impl.dart';
import 'package:pokedex/injection/injector.dart';
import '../../domain/cubit/safe_cubit.dart';

part 'evolution_chain_state.dart';

part 'evolution_chain_bloc.freezed.dart';

class EvolutionChainBloc extends SafeCubit<EvolutionChainState> {
  EvolutionChainBloc() : super(const EvolutionChainState.initial());
  final EvolutionRepository evolutionRepository = inject<EvolutionRepositoryImpl>();

  Future<void> getEvolutionChain(String id) async {
    try {
      emit(const EvolutionChainState.loading());
      final result = await evolutionRepository.getChain(id);
      result.fold(
        (failure) => emit(EvolutionChainState.error(failure.message)),
        (evolutionChain) => emit(EvolutionChainState.loaded(evolutionChain: evolutionChain)),
      );
    } catch (e) {
      emit(EvolutionChainState.error(e.toString()));
    }
  }
}
