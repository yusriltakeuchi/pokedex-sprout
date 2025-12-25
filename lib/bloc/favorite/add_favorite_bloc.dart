// Created on 25-12-2025 08:54 by yurapsanjani

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/entities/pokemon/pokemon_entity.dart';
import 'package:pokedex/domain/repositories/pokemon/pokemon_repository.dart';
import 'package:pokedex/infrastructure/repositories/pokemon/pokemon_repository_impl.dart';
import 'package:pokedex/injection/injector.dart';
import '../../domain/cubit/safe_cubit.dart';

part 'add_favorite_state.dart';

part 'add_favorite_bloc.freezed.dart';

class AddFavoriteBloc extends SafeCubit<AddFavoriteState> {
  AddFavoriteBloc() : super(const AddFavoriteState.initial());
  final PokemonRepository pokemonRepository = inject<PokemonRepositoryImpl>();

  Future<void> addFavorite(PokemonEntity pokemon) async {
    try {
      emit(const AddFavoriteState.loading());
      final either = await pokemonRepository.addFavoritePokemon(pokemon);
      either.fold(
        (failure) {
          emit(AddFavoriteState.error(failure.message));
        },
        (_) {
          emit(const AddFavoriteState.loaded());
        },
      );
    } catch (e) {
      emit(AddFavoriteState.error(e.toString()));
    }
  }
}
