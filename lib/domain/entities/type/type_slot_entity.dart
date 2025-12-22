import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/entities/type/type_entity.dart';

part 'type_slot_entity.freezed.dart';

part 'type_slot_entity.g.dart';

@freezed
abstract class TypeSlotEntity with _$TypeSlotEntity {
  const factory TypeSlotEntity({
    @JsonKey(name: 'slot') int? slot,
    @JsonKey(name: 'type') TypeEntity? type,
  }) = _TypeSlotEntity;

  factory TypeSlotEntity.fromJson(Map<String, dynamic> json) =>
      _$TypeSlotEntityFromJson(json);

}