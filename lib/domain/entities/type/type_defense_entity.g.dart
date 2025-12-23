// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_defense_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TypeDefenseEntity _$TypeDefenseEntityFromJson(Map<String, dynamic> json) =>
    _TypeDefenseEntity(
      name: json['name'] as String?,
      multiplier: (json['multiplier'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$TypeDefenseEntityToJson(_TypeDefenseEntity instance) =>
    <String, dynamic>{'name': instance.name, 'multiplier': instance.multiplier};
