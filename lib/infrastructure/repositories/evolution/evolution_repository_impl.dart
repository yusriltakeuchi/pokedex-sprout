import 'package:dartz/dartz.dart';
import 'package:pokedex/core/networks/error_handler.dart';
import 'package:pokedex/domain/entities/evolution/evolution_chain_entity.dart';
import 'package:pokedex/domain/repositories/evolution/evolution_repository.dart';
import 'package:pokedex/infrastructure/datasource/evolution/evolution_datasource.dart';

class EvolutionRepositoryImpl implements EvolutionRepository {
  final EvolutionDataSource evolutionDataSource;
  EvolutionRepositoryImpl(this.evolutionDataSource);

  @override
  Future<Either<Failure, EvolutionChainEntity>> getChain(String id)
    => evolutionDataSource.getChain(id);

}