// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ability_slot_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AbilitySlotEntity _$AbilitySlotEntityFromJson(Map<String, dynamic> json) =>
    _AbilitySlotEntity(
      slot: (json['slot'] as num?)?.toInt(),
      isHidden: json['is_hidden'] as bool?,
      ability: json['ability'] == null
          ? null
          : AbilityEntity.fromJson(json['ability'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AbilitySlotEntityToJson(_AbilitySlotEntity instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'is_hidden': instance.isHidden,
      'ability': instance.ability,
    };
