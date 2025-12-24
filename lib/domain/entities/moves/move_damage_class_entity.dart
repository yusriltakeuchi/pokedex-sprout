import 'package:freezed_annotation/freezed_annotation.dart';

part 'move_damage_class_entity.freezed.dart';

part 'move_damage_class_entity.g.dart';

@freezed
abstract class MoveDamageClassEntity with _$MoveDamageClassEntity {
  const factory MoveDamageClassEntity({
    @JsonKey(name: 'name') String? name,
  }) = _MoveDamageClassEntity;

  factory MoveDamageClassEntity.fromJson(Map<String, dynamic> json) =>
      _$MoveDamageClassEntityFromJson(json);

}