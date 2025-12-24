// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'move_version_group_detail_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MoveVersionGroupDetailEntity _$MoveVersionGroupDetailEntityFromJson(
  Map<String, dynamic> json,
) => _MoveVersionGroupDetailEntity(
  order: (json['order'] as num?)?.toInt(),
  levelLearnedAt: (json['level_learned_at'] as num?)?.toInt(),
  moveLearnMethod: json['move_learn_method'] == null
      ? null
      : MoveLearnMethodEntity.fromJson(
          json['move_learn_method'] as Map<String, dynamic>,
        ),
  versionGroup: json['version_group'] == null
      ? null
      : MoveVersionGroupEntity.fromJson(
          json['version_group'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$MoveVersionGroupDetailEntityToJson(
  _MoveVersionGroupDetailEntity instance,
) => <String, dynamic>{
  'order': instance.order,
  'level_learned_at': instance.levelLearnedAt,
  'move_learn_method': instance.moveLearnMethod,
  'version_group': instance.versionGroup,
};
