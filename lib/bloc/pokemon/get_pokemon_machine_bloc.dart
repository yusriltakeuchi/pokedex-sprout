// Created on 25-12-2025 07:29 by yurapsanjani

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/entities/machine/machine_entity.dart';
import 'package:pokedex/domain/repositories/pokemon/pokemon_repository.dart';
import 'package:pokedex/infrastructure/repositories/pokemon/pokemon_repository_impl.dart';
import 'package:pokedex/injection/injector.dart';
import '../../domain/cubit/safe_cubit.dart';

part 'get_pokemon_machine_state.dart';

part 'get_pokemon_machine_bloc.freezed.dart';

class GetPokemonMachineBloc extends SafeCubit<GetPokemonMachineState> {
  GetPokemonMachineBloc() : super(const GetPokemonMachineState.initial());
  final PokemonRepository pokemonRepository = inject<PokemonRepositoryImpl>();

  Future<void> getMachines(List<int> machinesId) async {
    try {
      emit(const GetPokemonMachineState.loading());
      List<MachineEntity> machines = [];
      for (var id in machinesId) {
        final either = await pokemonRepository.getMachine(id.toString());
        either.fold(
          (failure) {
            /// If failure then continue to next machine
            return;
          },
          (machineDetail) {
            machines.add(machineDetail);
          },
        );
      }
      emit(GetPokemonMachineState.loaded(machines: machines));
    } catch (e) {
      emit(GetPokemonMachineState.error(e.toString()));
    }
  }
}
