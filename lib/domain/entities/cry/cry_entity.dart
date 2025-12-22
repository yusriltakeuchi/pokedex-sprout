import 'package:freezed_annotation/freezed_annotation.dart';

part 'cry_entity.freezed.dart';

part 'cry_entity.g.dart';

@freezed
abstract class CryEntity with _$CryEntity {
  const factory CryEntity({
    @JsonKey(name: 'latest') String? latest,
    @JsonKey(name: 'legacy') String? legacy,
  }) = _CryEntity;

  factory CryEntity.fromJson(Map<String, dynamic> json) =>
      _$CryEntityFromJson(json);

}