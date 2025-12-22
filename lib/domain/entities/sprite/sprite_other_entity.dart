import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/entities/sprite/sprite_other_home_entity.dart';

part 'sprite_other_entity.freezed.dart';

part 'sprite_other_entity.g.dart';

@freezed
abstract class SpriteOtherEntity with _$SpriteOtherEntity {
  const factory SpriteOtherEntity({
    @JsonKey(name: 'home') SpriteOtherHomeEntity? home,
  }) = _SpriteOtherEntity;

  factory SpriteOtherEntity.fromJson(Map<String, dynamic> json) =>
      _$SpriteOtherEntityFromJson(json);

}