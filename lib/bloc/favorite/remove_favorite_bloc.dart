// Created on 25-12-2025 08:54 by yurapsanjani

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/entities/pokemon/pokemon_entity.dart';
import 'package:pokedex/domain/repositories/pokemon/pokemon_repository.dart';
import 'package:pokedex/infrastructure/repositories/pokemon/pokemon_repository_impl.dart';
import 'package:pokedex/injection/injector.dart';
import '../../domain/cubit/safe_cubit.dart';

part 'remove_favorite_state.dart';

part 'remove_favorite_bloc.freezed.dart';

class RemoveFavoriteBloc extends SafeCubit<RemoveFavoriteState> {
  RemoveFavoriteBloc() : super(const RemoveFavoriteState.initial());
  final PokemonRepository pokemonRepository = inject<PokemonRepositoryImpl>();

  Future<void> removeFavorite(PokemonEntity pokemon) async {
    try {
      emit(const RemoveFavoriteState.loading());
      final either = await pokemonRepository.removeFavoritePokemon(pokemon);
      either.fold(
        (failure) {
          emit(RemoveFavoriteState.error(failure.message));
        },
        (_) {
          emit(const RemoveFavoriteState.loaded());
        },
      );
    } catch (e) {
      emit(RemoveFavoriteState.error(e.toString()));
    }
  }
}
