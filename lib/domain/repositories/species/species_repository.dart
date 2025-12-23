
import 'package:dartz/dartz.dart';
import 'package:pokedex/core/networks/error_handler.dart';
import 'package:pokedex/domain/entities/species/species_entity.dart';

abstract class SpeciesRepository {
  Future<Either<Failure, SpeciesEntity>> getSpecies(String id);
}