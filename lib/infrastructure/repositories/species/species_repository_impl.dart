import 'package:dartz/dartz.dart';
import 'package:pokedex/core/networks/error_handler.dart';
import 'package:pokedex/domain/entities/species/species_entity.dart';
import 'package:pokedex/domain/repositories/species/species_repository.dart';
import 'package:pokedex/infrastructure/datasource/species/species_datasource.dart';

class SpeciesRepositoryImpl implements SpeciesRepository {
  final SpeciesDataSource speciesDataSource;
  SpeciesRepositoryImpl(this.speciesDataSource);

  @override
  Future<Either<Failure, SpeciesEntity>> getSpecies(String id)
    => speciesDataSource.getSpecies(id);
}