// Created on 25-12-2025 08:50 by yurapsanjani

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/entities/pokemon/pokemon_entity.dart';
import 'package:pokedex/domain/repositories/pokemon/pokemon_repository.dart';
import 'package:pokedex/infrastructure/repositories/pokemon/pokemon_repository_impl.dart';
import 'package:pokedex/injection/injector.dart';
import '../../domain/cubit/safe_cubit.dart';

part 'get_favorite_state.dart';

part 'get_favorite_bloc.freezed.dart';

class GetFavoriteBloc extends SafeCubit<GetFavoriteState> {
  GetFavoriteBloc() : super(const GetFavoriteState.initial());
  final PokemonRepository pokemonRepository = inject<PokemonRepositoryImpl>();

  Future<void> getFavorites() async {
    try {
      emit(const GetFavoriteState.loading());
      final either = await pokemonRepository.getFavoritePokemons();
      either.fold(
        (failure) {
          emit(GetFavoriteState.error(failure.message));
        },
        (pokemons) {
          emit(GetFavoriteState.loaded(pokemons: pokemons));
        },
      );
    } catch (e) {
      emit(GetFavoriteState.error(e.toString()));
    }
  }
}
