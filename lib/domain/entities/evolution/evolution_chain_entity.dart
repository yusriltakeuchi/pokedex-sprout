import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/entities/evolution/evolution_entity.dart';

part 'evolution_chain_entity.freezed.dart';

part 'evolution_chain_entity.g.dart';

@freezed
abstract class EvolutionChainEntity with _$EvolutionChainEntity {
  const factory EvolutionChainEntity({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'chain') EvolutionEntity? chain,
  }) = _EvolutionChainEntity;

  factory EvolutionChainEntity.fromJson(Map<String, dynamic> json) =>
      _$EvolutionChainEntityFromJson(json);

}