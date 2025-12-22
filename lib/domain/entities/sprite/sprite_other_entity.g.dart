// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sprite_other_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SpriteOtherEntity _$SpriteOtherEntityFromJson(Map<String, dynamic> json) =>
    _SpriteOtherEntity(
      home: json['home'] == null
          ? null
          : SpriteOtherHomeEntity.fromJson(
              json['home'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$SpriteOtherEntityToJson(_SpriteOtherEntity instance) =>
    <String, dynamic>{'home': instance.home};
