// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'machine_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MachineEntity _$MachineEntityFromJson(Map<String, dynamic> json) =>
    _MachineEntity(
      id: (json['id'] as num?)?.toInt(),
      url: json['url'] as String?,
      item: json['item'] == null
          ? null
          : ItemEntity.fromJson(json['item'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MachineEntityToJson(_MachineEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'item': instance.item,
    };
