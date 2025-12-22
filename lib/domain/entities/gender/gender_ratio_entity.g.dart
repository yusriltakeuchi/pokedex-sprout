// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gender_ratio_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GenderRatioEntity _$GenderRatioEntityFromJson(Map<String, dynamic> json) =>
    _GenderRatioEntity(
      male: (json['male'] as num?)?.toDouble(),
      female: (json['female'] as num?)?.toDouble(),
      genderless: json['genderless'] as bool?,
    );

Map<String, dynamic> _$GenderRatioEntityToJson(_GenderRatioEntity instance) =>
    <String, dynamic>{
      'male': instance.male,
      'female': instance.female,
      'genderless': instance.genderless,
    };
