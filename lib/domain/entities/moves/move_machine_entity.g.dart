// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'move_machine_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MoveMachineEntity _$MoveMachineEntityFromJson(Map<String, dynamic> json) =>
    _MoveMachineEntity(
      machine: json['machine'] == null
          ? null
          : MachineEntity.fromJson(json['machine'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MoveMachineEntityToJson(_MoveMachineEntity instance) =>
    <String, dynamic>{'machine': instance.machine};
