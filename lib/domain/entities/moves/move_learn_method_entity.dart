import 'package:freezed_annotation/freezed_annotation.dart';

part 'move_learn_method_entity.freezed.dart';

part 'move_learn_method_entity.g.dart';

@freezed
abstract class MoveLearnMethodEntity with _$MoveLearnMethodEntity {
  const factory MoveLearnMethodEntity({
    @JsonKey(name: 'name') String? name,
  }) = _MoveLearnMethodEntity;

  factory MoveLearnMethodEntity.fromJson(Map<String, dynamic> json) =>
      _$MoveLearnMethodEntityFromJson(json);

}