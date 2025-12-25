import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/entities/item/item_entity.dart';
import 'package:pokedex/domain/entities/moves/move_info_entity.dart';

part 'machine_entity.freezed.dart';

part 'machine_entity.g.dart';

@freezed
abstract class MachineEntity with _$MachineEntity {
  const factory MachineEntity({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'item') ItemEntity? item,
    @JsonKey(name: 'move') MoveInfoEntity? move,
    x
  }) = _MachineEntity;

  factory MachineEntity.fromJson(Map<String, dynamic> json) =>
      _$MachineEntityFromJson(json);

}