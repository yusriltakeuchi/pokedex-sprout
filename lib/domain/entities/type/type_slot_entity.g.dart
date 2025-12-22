// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_slot_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TypeSlotEntity _$TypeSlotEntityFromJson(Map<String, dynamic> json) =>
    _TypeSlotEntity(
      slot: (json['slot'] as num?)?.toInt(),
      type: json['type'] == null
          ? null
          : TypeEntity.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TypeSlotEntityToJson(_TypeSlotEntity instance) =>
    <String, dynamic>{'slot': instance.slot, 'type': instance.type};
