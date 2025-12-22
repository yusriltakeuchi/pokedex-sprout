import 'package:freezed_annotation/freezed_annotation.dart';

part 'egg_group_entity.freezed.dart';

part 'egg_group_entity.g.dart';

@freezed
abstract class EggGroupEntity with _$EggGroupEntity {
  const factory EggGroupEntity({
    @JsonKey(name: 'name') String? name,
  }) = _EggGroupEntity;

  factory EggGroupEntity.fromJson(Map<String, dynamic> json) =>
      _$EggGroupEntityFromJson(json);

}