import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/entities/moves/move_learn_method_entity.dart';
import 'package:pokedex/domain/entities/moves/move_version_group_entity.dart';

part 'move_version_group_detail_entity.freezed.dart';

part 'move_version_group_detail_entity.g.dart';

@freezed
abstract class MoveVersionGroupDetailEntity with _$MoveVersionGroupDetailEntity {
  const factory MoveVersionGroupDetailEntity({
    @JsonKey(name: 'order') int? order,
    @JsonKey(name: 'level_learned_at') int? levelLearnedAt,
    @JsonKey(name: 'move_learn_method') MoveLearnMethodEntity? moveLearnMethod,
    @JsonKey(name: 'version_group') MoveVersionGroupEntity? versionGroup,
  }) = _MoveVersionGroupDetailEntity;

  factory MoveVersionGroupDetailEntity.fromJson(Map<String, dynamic> json) =>
      _$MoveVersionGroupDetailEntityFromJson(json);

}