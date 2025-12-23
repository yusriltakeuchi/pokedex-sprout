
import 'package:dartz/dartz.dart';
import 'package:pokedex/core/networks/error_handler.dart';
import 'package:pokedex/domain/entities/type/type_element_entity.dart';

abstract class TypeRepository {
  Future<Either<Failure, TypeElementEntity>> getType(String id);
}