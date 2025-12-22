import 'package:freezed_annotation/freezed_annotation.dart';

part 'sprite_other_home_entity.freezed.dart';

part 'sprite_other_home_entity.g.dart';

@freezed
abstract class SpriteOtherHomeEntity with _$SpriteOtherHomeEntity {
  const factory SpriteOtherHomeEntity({
    @JsonKey(name: 'front_default') String? frontDefault,
    @JsonKey(name: 'front_female') String? frontFemale,
    @JsonKey(name: 'front_shiny') String? frontShiny,
    @JsonKey(name: 'front_shiny_female') String? frontShinyFemale,
  }) = _SpriteOtherHomeEntity;

  factory SpriteOtherHomeEntity.fromJson(Map<String, dynamic> json) =>
      _$SpriteOtherHomeEntityFromJson(json);

}
