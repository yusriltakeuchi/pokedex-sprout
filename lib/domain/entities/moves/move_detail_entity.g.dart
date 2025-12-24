// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'move_detail_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MoveDetailEntity _$MoveDetailEntityFromJson(Map<String, dynamic> json) =>
    _MoveDetailEntity(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      accuracy: (json['accuracy'] as num?)?.toInt(),
      pp: (json['pp'] as num?)?.toInt(),
      priority: (json['priority'] as num?)?.toInt(),
      power: (json['power'] as num?)?.toInt(),
      damageClass: json['damage_class'] == null
          ? null
          : MoveDamageClassEntity.fromJson(
              json['damage_class'] as Map<String, dynamic>,
            ),
      type: json['type'] == null
          ? null
          : TypeEntity.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MoveDetailEntityToJson(_MoveDetailEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'accuracy': instance.accuracy,
      'pp': instance.pp,
      'priority': instance.priority,
      'power': instance.power,
      'damage_class': instance.damageClass,
      'type': instance.type,
    };
