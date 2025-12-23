// Created on 23-12-2025 14:32 by mac

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/entities/type/type_entity.dart';
import 'package:pokedex/domain/repositories/type/type_repository.dart';
import 'package:pokedex/infrastructure/repositories/type/type_repository_impl.dart';
import 'package:pokedex/injection/injector.dart';
import '../../domain/cubit/safe_cubit.dart';

part 'get_type_defenses_state.dart';

part 'get_type_defenses_bloc.freezed.dart';

class GetTypeDefensesBloc extends SafeCubit<GetTypeDefensesState> {
  GetTypeDefensesBloc() : super(const GetTypeDefensesState.initial());
  final TypeRepository typeRepository = inject<TypeRepositoryImpl>();

  Future<void> getTypeDefenses(List<TypeEntity> types) async {
    try {
      emit(const GetTypeDefensesState.loading());
      List<TypeEntity> vulnerabilities = [];
      List<TypeEntity> resistances = [];
      List<TypeEntity> immunities = [];

      for (var type in types) {
        final either = await typeRepository.getType(type.name.toString());
        either.fold(
          (failure) {
            emit(GetTypeDefensesState.error(failure.message));
          },
          (typeElement) {
            vulnerabilities.addAll(typeElement.damageRelations?.doubleDamageFrom ?? []);
            resistances.addAll(typeElement.damageRelations?.halfDamageFrom ?? []);
            immunities.addAll(typeElement.damageRelations?.noDamageFrom ?? []);
          },
        );
      }

      emit(GetTypeDefensesState.loaded(
        vulnerabilities: vulnerabilities,
        resistances: resistances,
        immunities: immunities,
      ));
    } catch (e) {
      emit(GetTypeDefensesState.error(e.toString()));
    }
  }
}
