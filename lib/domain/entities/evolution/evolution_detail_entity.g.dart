// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evolution_detail_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EvolutionDetailEntity _$EvolutionDetailEntityFromJson(
  Map<String, dynamic> json,
) => _EvolutionDetailEntity(
  minLevel: (json['min_level'] as num?)?.toInt(),
  trigger: json['trigger'] == null
      ? null
      : EvolutionTriggerEntity.fromJson(
          json['trigger'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$EvolutionDetailEntityToJson(
  _EvolutionDetailEntity instance,
) => <String, dynamic>{
  'min_level': instance.minLevel,
  'trigger': instance.trigger,
};
