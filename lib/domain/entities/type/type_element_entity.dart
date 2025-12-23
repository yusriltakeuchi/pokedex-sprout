import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/entities/type/type_damage_relation_entity.dart';

part 'type_element_entity.freezed.dart';

part 'type_element_entity.g.dart';

@freezed
abstract class TypeElementEntity with _$TypeElementEntity {
  const factory TypeElementEntity({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'damage_relations') TypeDamageRelationEntity? damageRelations,
  }) = _TypeElementEntity;

  factory TypeElementEntity.fromJson(Map<String, dynamic> json) =>
      _$TypeElementEntityFromJson(json);

}