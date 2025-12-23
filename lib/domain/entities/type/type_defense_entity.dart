import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'type_defense_entity.freezed.dart';

part 'type_defense_entity.g.dart';

@freezed
abstract class TypeDefenseEntity with _$TypeDefenseEntity {
  const factory TypeDefenseEntity({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'multiplier') double? multiplier,
  }) = _TypeDefenseEntity;

  factory TypeDefenseEntity.fromJson(Map<String, dynamic> json) =>
      _$TypeDefenseEntityFromJson(json);
}