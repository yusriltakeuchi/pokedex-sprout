// Created on 22-12-2025 22:24 by yurapsanjani

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/entities/species/species_entity.dart';
import 'package:pokedex/domain/repositories/pokemon/pokemon_repository.dart';
import 'package:pokedex/infrastructure/repositories/pokemon/pokemon_repository_impl.dart';
import 'package:pokedex/injection/injector.dart';
import '../../domain/cubit/safe_cubit.dart';

part 'get_species_state.dart';

part 'get_species_bloc.freezed.dart';

class GetSpeciesBloc extends SafeCubit<GetSpeciesState> {
  GetSpeciesBloc() : super(const GetSpeciesState.initial());
  final PokemonRepository pokemonRepository = inject<PokemonRepositoryImpl>();

  Future<void> getSpecies(String id) async {
    try {
      emit(const GetSpeciesState.loading());
      final either = await pokemonRepository.getSpecies(id);
      either.fold(
        (failure) {
          emit(GetSpeciesState.error(failure.message));
        },
        (species) {
          emit(GetSpeciesState.loaded(
            species: species,
          ));
        },
      );
    } catch (e) {
      emit(GetSpeciesState.error(e.toString()));
    }
  }
}
