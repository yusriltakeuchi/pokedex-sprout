
import 'package:dartz/dartz.dart';
import 'package:pokedex/core/networks/error_handler.dart';
import 'package:pokedex/domain/entities/evolution/evolution_chain_entity.dart';

abstract class EvolutionRepository {
  Future<Either<Failure, EvolutionChainEntity>> getChain(String id);
}