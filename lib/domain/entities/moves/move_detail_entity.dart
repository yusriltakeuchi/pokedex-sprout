import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/entities/machine/machine_entity.dart';
import 'package:pokedex/domain/entities/moves/move_damage_class_entity.dart';
import 'package:pokedex/domain/entities/type/type_entity.dart';

part 'move_detail_entity.freezed.dart';

part 'move_detail_entity.g.dart';

@freezed
abstract class MoveDetailEntity with _$MoveDetailEntity {
  const factory MoveDetailEntity({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'accuracy') int? accuracy,
    @JsonKey(name: 'pp') int? pp,
    @JsonKey(name: 'priority') int? priority,
    @JsonKey(name: 'power') int? power,
    @JsonKey(name: 'damage_class') MoveDamageClassEntity? damageClass,
    @JsonKey(name: 'type') TypeEntity? type,
    @JsonKey(name: 'machines') List<MachineEntity>? machines,
  }) = _MoveDetailEntity;

  factory MoveDetailEntity.fromJson(Map<String, dynamic> json) =>
      _$MoveDetailEntityFromJson(json);

}