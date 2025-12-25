// Created on 25-12-2025 08:53 by yurapsanjani

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/entities/pokemon/pokemon_entity.dart';
import 'package:pokedex/domain/repositories/pokemon/pokemon_repository.dart';
import 'package:pokedex/infrastructure/repositories/pokemon/pokemon_repository_impl.dart';
import 'package:pokedex/injection/injector.dart';
import '../../domain/cubit/safe_cubit.dart';

part 'is_favorite_state.dart';

part 'is_favorite_bloc.freezed.dart';

class IsFavoriteBloc extends SafeCubit<IsFavoriteState> {
  IsFavoriteBloc() : super(const IsFavoriteState.initial());
  final PokemonRepository pokemonRepository = inject<PokemonRepositoryImpl>();

  Future<void> checkIsFavorite(PokemonEntity pokemon) async {
    try {
      emit(const IsFavoriteState.loading());
      final either = await pokemonRepository.isFavoritePokemon(pokemon);
      either.fold(
        (failure) {
          emit(IsFavoriteState.error(failure.message));
        },
        (isFavorited) {
          emit(IsFavoriteState.loaded(isFavorited: isFavorited));
        },
      );
    } catch (e) {
      emit(IsFavoriteState.error(e.toString()));
    }
  }
}
