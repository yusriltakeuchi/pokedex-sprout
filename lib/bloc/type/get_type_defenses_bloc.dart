// Created on 23-12-2025 14:32 by mac

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/entities/type/type_defense_entity.dart';
import 'package:pokedex/domain/entities/type/type_element_entity.dart';
import 'package:pokedex/domain/entities/type/type_entity.dart';
import 'package:pokedex/domain/repositories/type/type_repository.dart';
import 'package:pokedex/infrastructure/repositories/type/type_repository_impl.dart';
import 'package:pokedex/injection/injector.dart';
import '../../domain/cubit/safe_cubit.dart';

part 'get_type_defenses_bloc.freezed.dart';
part 'get_type_defenses_state.dart';


class GetTypeDefensesBloc extends SafeCubit<GetTypeDefensesState> {
  GetTypeDefensesBloc() : super(const GetTypeDefensesState.initial());
  final TypeRepository typeRepository = inject<TypeRepositoryImpl>();

  Future<void> getTypeDefenses(List<TypeEntity> types) async {
    try {
      emit(const GetTypeDefensesState.loading());

      if (types.isEmpty) {
        emit(GetTypeDefensesState.loaded(
          vulnerabilities: [],
          resistances: [],
          immunities: [],
        ));
        return;
      }

      /// fetch all type details in parallel
      final futures = types
          .map((t) => typeRepository.getType(t.name.toString()))
          .toList();

      final results = await Future.wait(futures);

      /// check for failures and stop early (emit once below)
      final firstFailure = results
          .map((e) => e.fold((l) => l, (r) => null))
          .firstWhere((f) => f != null, orElse: () => null);

      if (firstFailure != null) {
        /// emit a single error and return
        emit(GetTypeDefensesState.error(firstFailure.message));
        return;
      }

      /// collect successful TypeElementEntity results
      final List<TypeElementEntity> typeElements = results
          .map((e) => e.fold((l) => null, (r) => r))
          .whereType<TypeElementEntity>()
          .toList();

      /// multiplier map keyed by attack type name (lowercase) with default 1.0
      final Map<String, double> multipliers = {};

      for (var te in typeElements) {
        final dr = te.damageRelations;
        if (dr == null) continue;

        /// First: immunities (no damage) should set multiplier to 0
        for (var atk in dr.noDamageFrom ?? []) {
          final name = atk.name?.toLowerCase() ?? '';
          if (name.isEmpty) continue;
          multipliers[name] = 0.0;
        }

        /// Double damage: multiply by 2, unless already immune (0)
        for (var atk in dr.doubleDamageFrom ?? []) {
          final name = atk.name?.toLowerCase() ?? '';
          if (name.isEmpty) continue;
          final current = multipliers[name] ?? 1.0;
          if (current == 0.0) continue;
          multipliers[name] = current * 2.0;
        }

        /// Half damage: multiply by 0.5, unless already immune (0)
        for (var atk in dr.halfDamageFrom ?? []) {
          final name = atk.name?.toLowerCase() ?? '';
          if (name.isEmpty) continue;
          final current = multipliers[name] ?? 1.0;
          if (current == 0.0) continue;
          multipliers[name] = current * 0.5;
        }
      }

      /// Build lists of TypeDefenseEntity for UI
      final vulnerabilities = <TypeDefenseEntity>[];
      final resistances = <TypeDefenseEntity>[];
      final immunities = <TypeDefenseEntity>[];

      multipliers.forEach((name, value) {
        final entity = TypeDefenseEntity(name: name, multiplier: value);
        if (value == 0.0) {
          immunities.add(entity);
        } else if (value > 1.0) {
          vulnerabilities.add(entity);
        } else if (value < 1.0) {
          resistances.add(entity);
        }
      });

      /// optional: sort by multiplier desc (vulnerable), asc (resistances), name (immunities)
      vulnerabilities.sort((a, b) => b.multiplier!.compareTo(a.multiplier ?? 0));
      resistances.sort((a, b) => a.multiplier!.compareTo(b.multiplier?? 0));
      immunities.sort((a, b) => a.name!.compareTo(b.name ?? ""));

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
