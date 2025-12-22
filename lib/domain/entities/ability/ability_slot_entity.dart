import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/entities/ability/ability_entity.dart';

part 'ability_slot_entity.freezed.dart';

part 'ability_slot_entity.g.dart';

@freezed
abstract class AbilitySlotEntity with _$AbilitySlotEntity {
  const factory AbilitySlotEntity({
    @JsonKey(name: 'slot') int? slot,
    @JsonKey(name: 'is_hidden') bool? isHidden,
    @JsonKey(name: 'ability') AbilityEntity? ability,
  }) = _AbilitySlotEntity;

  factory AbilitySlotEntity.fromJson(Map<String, dynamic> json) =>
      _$AbilitySlotEntityFromJson(json);

}