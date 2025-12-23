// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evolution_detail_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EvolutionDetailEntity _$EvolutionDetailEntityFromJson(
  Map<String, dynamic> json,
) => _EvolutionDetailEntity(
  item: json['item'] == null
      ? null
      : ItemEntity.fromJson(json['item'] as Map<String, dynamic>),
  minHappiness: (json['min_happiness'] as num?)?.toInt(),
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
  'item': instance.item,
  'min_happiness': instance.minHappiness,
  'min_level': instance.minLevel,
  'trigger': instance.trigger,
};
