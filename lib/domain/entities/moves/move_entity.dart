import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/entities/moves/move_info_entity.dart';
import 'package:pokedex/domain/entities/moves/move_version_group_detail_entity.dart';

part 'move_entity.freezed.dart';

part 'move_entity.g.dart';

@freezed
abstract class MoveEntity with _$MoveEntity {
  const factory MoveEntity({
    @JsonKey(name: 'move') MoveInfoEntity? move,
    @JsonKey(name: 'version_group_details') List<MoveVersionGroupDetailEntity>? versionGroupDetails,
  }) = _MoveEntity;

  factory MoveEntity.fromJson(Map<String, dynamic> json) =>
      _$MoveEntityFromJson(json);

}