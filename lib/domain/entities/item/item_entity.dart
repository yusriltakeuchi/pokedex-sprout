import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_entity.freezed.dart';

part 'item_entity.g.dart';

@freezed
abstract class ItemEntity with _$ItemEntity {
  const factory ItemEntity({
    @JsonKey(name: 'name') String? name,
  }) = _ItemEntity;

  factory ItemEntity.fromJson(Map<String, dynamic> json) =>
      _$ItemEntityFromJson(json);

}