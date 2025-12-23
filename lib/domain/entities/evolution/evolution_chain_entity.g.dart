// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evolution_chain_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EvolutionChainEntity _$EvolutionChainEntityFromJson(
  Map<String, dynamic> json,
) => _EvolutionChainEntity(
  id: (json['id'] as num?)?.toInt(),
  url: json['url'] as String?,
  chain: json['chain'] == null
      ? null
      : EvolutionEntity.fromJson(json['chain'] as Map<String, dynamic>),
);

Map<String, dynamic> _$EvolutionChainEntityToJson(
  _EvolutionChainEntity instance,
) => <String, dynamic>{
  'id': instance.id,
  'url': instance.url,
  'chain': instance.chain,
};
