import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/entities/evolution/evolution_trigger_entity.dart';

part 'evolution_detail_entity.freezed.dart';

part 'evolution_detail_entity.g.dart';

@freezed
abstract class EvolutionDetailEntity with _$EvolutionDetailEntity {
  const factory EvolutionDetailEntity({
    @JsonKey(name: 'min_level') int? minLevel,
    @JsonKey(name: 'trigger') EvolutionTriggerEntity? trigger,
  }) = _EvolutionDetailEntity;

  factory EvolutionDetailEntity.fromJson(Map<String, dynamic> json) =>
      _$EvolutionDetailEntityFromJson(json);

}