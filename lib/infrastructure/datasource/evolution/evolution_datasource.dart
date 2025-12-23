import 'package:dartz/dartz.dart';
import 'package:pokedex/core/constant/endpoint.dart';
import 'package:pokedex/core/networks/api_client.dart';
import 'package:pokedex/core/networks/error_handler.dart';
import 'package:pokedex/domain/entities/evolution/evolution_chain_entity.dart';
import 'package:pokedex/infrastructure/datasource/base/api_datasource_ext.dart';

class EvolutionDataSource {
  final ApiClient apiClient;
  EvolutionDataSource(this.apiClient);

  Future<Either<Failure, EvolutionChainEntity>> getChain(String id) async
    => apiClient.evolutionChain.get(Endpoint.getEvolutionChain.replaceAll("{id}", id));
}