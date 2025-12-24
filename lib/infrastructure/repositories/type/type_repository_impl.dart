import 'package:dartz/dartz.dart';
import 'package:pokedex/core/networks/error_handler.dart';
import 'package:pokedex/domain/entities/type/type_element_entity.dart';
import 'package:pokedex/domain/repositories/type/type_repository.dart';
import 'package:pokedex/infrastructure/datasource/type/type_datasource.dart';

class TypeRepositoryImpl implements TypeRepository {
  final TypeDataSource typeDataSource;
  TypeRepositoryImpl(this.typeDataSource);

  @override
  Future<Either<Failure, TypeElementEntity>> getType(String id)
    => typeDataSource.getType(id);
}