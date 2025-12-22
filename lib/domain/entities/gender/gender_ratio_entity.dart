import 'package:freezed_annotation/freezed_annotation.dart';

part 'gender_ratio_entity.freezed.dart';

part 'gender_ratio_entity.g.dart';

@freezed
abstract class GenderRatioEntity with _$GenderRatioEntity {
  const factory GenderRatioEntity({
    @JsonKey(name: 'male') double? male,
    @JsonKey(name: 'female') double? female,
    @JsonKey(name: 'genderless') bool? genderless,

  }) = _GenderRatioEntity;

  factory GenderRatioEntity.fromJson(Map<String, dynamic> json) =>
      _$GenderRatioEntityFromJson(json);

}