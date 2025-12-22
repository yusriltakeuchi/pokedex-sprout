import 'package:freezed_annotation/freezed_annotation.dart';

part 'stat_info_entity.freezed.dart';

part 'stat_info_entity.g.dart';

@freezed
abstract class StatInfoEntity with _$StatInfoEntity {
  const factory StatInfoEntity({
    @JsonKey(name: 'name') String? name,
  }) = _StatInfoEntity;

  factory StatInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$StatInfoEntityFromJson(json);

}