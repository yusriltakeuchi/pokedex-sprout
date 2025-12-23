import 'package:freezed_annotation/freezed_annotation.dart';

part 'evolution_trigger_entity.freezed.dart';

part 'evolution_trigger_entity.g.dart';

@freezed
abstract class EvolutionTriggerEntity with _$EvolutionTriggerEntity {
  const factory EvolutionTriggerEntity({
    @JsonKey(name: 'name') String? name,
  }) = _EvolutionTriggerEntity;

  factory EvolutionTriggerEntity.fromJson(Map<String, dynamic> json) =>
      _$EvolutionTriggerEntityFromJson(json);

}