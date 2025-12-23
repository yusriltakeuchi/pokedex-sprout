// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_damage_relation_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TypeDamageRelationEntity _$TypeDamageRelationEntityFromJson(
  Map<String, dynamic> json,
) => _TypeDamageRelationEntity(
  noDamageTo: (json['no_damage_to'] as List<dynamic>?)
      ?.map((e) => TypeEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  halfDamageTo: (json['half_damage_to'] as List<dynamic>?)
      ?.map((e) => TypeEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  doubleDamageTo: (json['double_damage_to'] as List<dynamic>?)
      ?.map((e) => TypeEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  noDamageFrom: (json['no_damage_from'] as List<dynamic>?)
      ?.map((e) => TypeEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  halfDamageFrom: (json['half_damage_from'] as List<dynamic>?)
      ?.map((e) => TypeEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  doubleDamageFrom: (json['double_damage_from'] as List<dynamic>?)
      ?.map((e) => TypeEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$TypeDamageRelationEntityToJson(
  _TypeDamageRelationEntity instance,
) => <String, dynamic>{
  'no_damage_to': instance.noDamageTo,
  'half_damage_to': instance.halfDamageTo,
  'double_damage_to': instance.doubleDamageTo,
  'no_damage_from': instance.noDamageFrom,
  'half_damage_from': instance.halfDamageFrom,
  'double_damage_from': instance.doubleDamageFrom,
};
