
// Created on 23-12-2025 14:32 by mac

part of 'get_type_defenses_bloc.dart';

@freezed
class GetTypeDefensesState with _$GetTypeDefensesState {
  const factory GetTypeDefensesState.initial() = _GetTypeDefensesInitialState;
  const factory GetTypeDefensesState.loading() = _GetGetTypeDefensesLoadingState;
  const factory GetTypeDefensesState.error(String message) = _GetGetTypeDefensesErrorState;

  // changed: use TypeDefenseEntity for UI (name + multiplier)
  const factory GetTypeDefensesState.loaded({
    required List<TypeDefenseEntity> vulnerabilities,
    required List<TypeDefenseEntity> resistances,
    required List<TypeDefenseEntity> immunities,
  }) = _GetGetTypeDefensesLoadedState;
}