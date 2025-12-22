import 'package:freezed_annotation/freezed_annotation.dart';

part 'ability_entity.freezed.dart';

part 'ability_entity.g.dart';

@freezed
abstract class AbilityEntity with _$AbilityEntity {
  const factory AbilityEntity({
    @JsonKey(name: 'name') String? name,
  }) = _AbilityEntity;

  factory AbilityEntity.fromJson(Map<String, dynamic> json) =>
      _$AbilityEntityFromJson(json);

}