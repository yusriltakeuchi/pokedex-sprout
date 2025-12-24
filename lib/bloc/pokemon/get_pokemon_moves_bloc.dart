// Created on 24-12-2025 11:21 by mac

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/entities/moves/move_detail_entity.dart';
import 'package:pokedex/domain/repositories/pokemon/pokemon_repository.dart';
import 'package:pokedex/infrastructure/repositories/pokemon/pokemon_repository_impl.dart';
import 'package:pokedex/injection/injector.dart';

import '../../domain/cubit/safe_cubit.dart';

part 'get_pokemon_moves_bloc.freezed.dart';
part 'get_pokemon_moves_state.dart';

class GetPokemonMovesBloc extends SafeCubit<GetPokemonMovesState> {
  GetPokemonMovesBloc() : super(const GetPokemonMovesState.initial());
  final PokemonRepository pokemonRepository = inject<PokemonRepositoryImpl>();

  Future<void> getPokemonMoves(List<String> moveIds) async {
    try {
      emit(const GetPokemonMovesState.loading());
      List<MoveDetailEntity> moves = [];
      for (var id in moveIds) {
        final either = await pokemonRepository.getMoves(id);
        either.fold(
          (failure) {
            /// If failure then continue to next move
            return;
          },
          (moveDetail) {
            moves.add(moveDetail);
          },
        );
      }
      emit(GetPokemonMovesState.loaded(moves: moves));
    } catch (e) {
      emit(GetPokemonMovesState.error(e.toString()));
    }
  }
}
