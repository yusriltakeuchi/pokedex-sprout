import 'package:freezed_annotation/freezed_annotation.dart';

part 'move_version_group_entity.freezed.dart';

part 'move_version_group_entity.g.dart';

@freezed
abstract class MoveVersionGroupEntity with _$MoveVersionGroupEntity {
  const factory MoveVersionGroupEntity({
    @JsonKey(name: 'name') String? name,
  }) = _MoveVersionGroupEntity;

  factory MoveVersionGroupEntity.fromJson(Map<String, dynamic> json) =>
      _$MoveVersionGroupEntityFromJson(json);

}