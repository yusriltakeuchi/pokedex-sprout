// Created on 23-12-2025 20:48 by yurapsanjani

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/entities/evolution/evolution_chain_entity.dart';
import 'package:pokedex/domain/entities/evolution/evolution_entity.dart';
import 'package:pokedex/domain/repositories/evolution/evolution_repository.dart';
import 'package:pokedex/domain/repositories/pokemon/pokemon_repository.dart';
import 'package:pokedex/infrastructure/repositories/evolution/evolution_repository_impl.dart';
import 'package:pokedex/infrastructure/repositories/pokemon/pokemon_repository_impl.dart';
import 'package:pokedex/injection/injector.dart';

import '../../domain/cubit/safe_cubit.dart';

part 'evolution_chain_bloc.freezed.dart';
part 'evolution_chain_state.dart';

class EvolutionChainBloc extends SafeCubit<EvolutionChainState> {
  EvolutionChainBloc() : super(const EvolutionChainState.initial());
  final EvolutionRepository evolutionRepository = inject<EvolutionRepositoryImpl>();
  final PokemonRepository pokemonRepository = inject<PokemonRepositoryImpl>();

  Future<void> getEvolutionChain(String id) async {
    try {
      emit(const EvolutionChainState.loading());
      final result = await evolutionRepository.getChain(id);
      result.fold(
        (failure) => emit(EvolutionChainState.error(failure.message)),
        (evolutionChain) async {
          final updatedChain = await _populatePokemonDetails(evolutionChain.chain);
          final finalChain = evolutionChain.copyWith(chain: updatedChain);
          emit(EvolutionChainState.loaded(evolutionChain: finalChain));
        },
      );
    } catch (e) {
      emit(EvolutionChainState.error(e.toString()));
    }
  }

  /// Recursively populate pokemon details for all evolutions in the chain
  Future<EvolutionEntity?> _populatePokemonDetails(EvolutionEntity? evolution) async {
    if (evolution == null) return null;

    final speciesName = evolution.species?.name;
    EvolutionEntity updatedEvolution = evolution;

    if (speciesName != null && speciesName.isNotEmpty) {
      final detailEither = await pokemonRepository.getPokemon(speciesName);
      detailEither.fold(
        (failure) {
          /// If failure, keep the evolution without detail
        },
        (detailedPokemon) {
          updatedEvolution = evolution.copyWith(detailPokemon: detailedPokemon);
        },
      );
    }

    if (updatedEvolution.evolvesTo != null && updatedEvolution.evolvesTo!.isNotEmpty) {
      List<EvolutionEntity> updatedEvolvesTo = [];
      for (var evolve in updatedEvolution.evolvesTo!) {
        final populatedEvolve = await _populatePokemonDetails(evolve);
        if (populatedEvolve != null) {
          updatedEvolvesTo.add(populatedEvolve);
        }
      }
      updatedEvolution = updatedEvolution.copyWith(evolvesTo: updatedEvolvesTo);
    }
    return updatedEvolution;
  }
}
