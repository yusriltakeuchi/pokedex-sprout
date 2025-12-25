import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/entities/machine/machine_entity.dart';

part 'move_machine_entity.freezed.dart';

part 'move_machine_entity.g.dart';

@freezed
abstract class MoveMachineEntity with _$MoveMachineEntity {
  const factory MoveMachineEntity({
    @JsonKey(name: 'machine') MachineEntity? machine,
  }) = _MoveMachineEntity;

  factory MoveMachineEntity.fromJson(Map<String, dynamic> json) =>
      _$MoveMachineEntityFromJson(json);

}