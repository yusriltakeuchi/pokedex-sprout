// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_element_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TypeElementEntity _$TypeElementEntityFromJson(Map<String, dynamic> json) =>
    _TypeElementEntity(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      damageRelations: json['damage_relations'] == null
          ? null
          : TypeDamageRelationEntity.fromJson(
              json['damage_relations'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$TypeElementEntityToJson(_TypeElementEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'damage_relations': instance.damageRelations,
    };
