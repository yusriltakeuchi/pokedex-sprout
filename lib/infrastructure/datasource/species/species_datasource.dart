import 'package:dartz/dartz.dart';
import 'package:pokedex/core/constant/endpoint.dart';
import 'package:pokedex/core/networks/api_client.dart';
import 'package:pokedex/core/networks/error_handler.dart';
import 'package:pokedex/domain/entities/species/species_entity.dart';
import 'package:pokedex/infrastructure/datasource/base/api_datasource_ext.dart';

class SpeciesDataSource {
  final ApiClient apiClient;
  SpeciesDataSource(this.apiClient);

  Future<Either<Failure, SpeciesEntity>> getSpecies(String id) async
    => apiClient.species.get(Endpoint.getSpecies.replaceAll("{id}", id));
}