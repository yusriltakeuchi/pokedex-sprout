import 'package:dartz/dartz.dart';
import 'package:pokedex/core/constant/endpoint.dart';
import 'package:pokedex/core/networks/api_client.dart';
import 'package:pokedex/core/networks/error_handler.dart';
import 'package:pokedex/domain/entities/type/type_element_entity.dart';
import 'package:pokedex/infrastructure/datasource/base/api_datasource_ext.dart';

class TypeDataSource {
  final ApiClient apiClient;
  TypeDataSource(this.apiClient);

  Future<Either<Failure, TypeElementEntity>> getType(String id) async
    => apiClient.type.get(Endpoint.getType.replaceAll("{id}", id));
}