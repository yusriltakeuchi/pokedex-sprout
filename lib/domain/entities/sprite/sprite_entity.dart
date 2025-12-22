import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/entities/sprite/sprite_other_entity.dart';

part 'sprite_entity.freezed.dart';

part 'sprite_entity.g.dart';

@freezed
abstract class SpriteEntity with _$SpriteEntity {
  const factory SpriteEntity({
    @JsonKey(name: 'back_default') String? backDefault,
    @JsonKey(name: 'back_female') String? backFemale,
    @JsonKey(name: 'back_shiny') String? backShiny,
    @JsonKey(name: 'back_shiny_female') String? backShinyFemale,
    @JsonKey(name: 'front_default') String? frontDefault,
    @JsonKey(name: 'front_female') String? frontFemale,
    @JsonKey(name: 'front_shiny') String? frontShiny,
    @JsonKey(name: 'front_shiny_female') String? frontShinyFemale,
    @JsonKey(name: 'other') SpriteOtherEntity? other,
  }) = _SpriteEntity;

  factory SpriteEntity.fromJson(Map<String, dynamic> json) =>
      _$SpriteEntityFromJson(json);

}