import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_filter_dto.freezed.dart';

part 'base_filter_dto.g.dart';

@Freezed(fromJson: false, toJson: true)
abstract class BaseFilterDTO with _$BaseFilterDTO {
  const factory BaseFilterDTO({
    @JsonKey(name: 'offset') int? offset,
    @JsonKey(name: 'limit') int? limit,
  }) = _BaseFilterDTO;
}