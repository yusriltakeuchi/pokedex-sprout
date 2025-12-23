import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/entities/type/type_entity.dart';

part 'type_damage_relation_entity.freezed.dart';

part 'type_damage_relation_entity.g.dart';

@freezed
abstract class TypeDamageRelationEntity with _$TypeDamageRelationEntity {
  const factory TypeDamageRelationEntity({
    @JsonKey(name: 'no_damage_to') List<TypeEntity>? noDamageTo,
    @JsonKey(name: 'half_damage_to') List<TypeEntity>? halfDamageTo,
    @JsonKey(name: 'double_damage_to') List<TypeEntity>? doubleDamageTo,
    @JsonKey(name: 'no_damage_from') List<TypeEntity>? noDamageFrom,
    @JsonKey(name: 'half_damage_from') List<TypeEntity>? halfDamageFrom,
    @JsonKey(name: 'double_damage_from') List<TypeEntity>? doubleDamageFrom,
  }) = _TypeDamageRelationEntity;

  factory TypeDamageRelationEntity.fromJson(Map<String, dynamic> json) =>
      _$TypeDamageRelationEntityFromJson(json);

}