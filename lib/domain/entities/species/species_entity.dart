import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/entities/egg_group/egg_group_entity.dart';

part 'species_entity.freezed.dart';

part 'species_entity.g.dart';

@freezed
abstract class SpeciesEntity with _$SpeciesEntity {
  const factory SpeciesEntity({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'gender_rate') int? genderRate,
    @JsonKey(name: 'egg_groups') List<EggGroupEntity>? eggGroups,
    @JsonKey(name: 'hatch_counter') int? hatchCounter,
  }) = _SpeciesEntity;

  factory SpeciesEntity.fromJson(Map<String, dynamic> json) =>
      _$SpeciesEntityFromJson(json);

}