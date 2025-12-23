// Created on 22-12-2025 22:24 by yurapsanjani

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/entities/species/species_entity.dart';
import 'package:pokedex/domain/repositories/species/species_repository.dart';
import 'package:pokedex/infrastructure/repositories/species/species_repository_impl.dart';
import 'package:pokedex/injection/injector.dart';

import '../../domain/cubit/safe_cubit.dart';

part 'get_species_bloc.freezed.dart';
part 'get_species_state.dart';

class GetSpeciesBloc extends SafeCubit<GetSpeciesState> {
  GetSpeciesBloc() : super(const GetSpeciesState.initial());
  final SpeciesRepository speciesRepository = inject<SpeciesRepositoryImpl>();

  Future<void> getSpecies(String id) async {
    try {
      emit(const GetSpeciesState.loading());
      final either = await speciesRepository.getSpecies(id);
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
