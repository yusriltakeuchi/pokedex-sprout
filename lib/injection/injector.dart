import 'package:get_it/get_it.dart';
import 'package:pokedex/core/networks/api_client.dart';
import 'package:pokedex/infrastructure/datasource/pokemon/pokemon_datasource.dart';
import 'package:pokedex/infrastructure/datasource/species/species_datasource.dart';
import 'package:pokedex/infrastructure/datasource/type/type_datasource.dart';
import 'package:pokedex/infrastructure/datasource/type/type_datasource.dart';
import 'package:pokedex/infrastructure/repositories/pokemon/pokemon_repository_impl.dart';
import 'package:pokedex/infrastructure/repositories/species/species_repository_impl.dart';
import 'package:pokedex/infrastructure/repositories/type/type_repository_impl.dart';
import 'package:pokedex/infrastructure/repositories/type/type_repository_impl.dart';
import 'package:pokedex/routing/route.dart';

GetIt inject = GetIt.instance;

Future<void> setupInjector() async {
  /// Route
  inject.registerSingleton<AppRouter>(AppRouter());

  /// Core api client
  inject.registerLazySingleton(() => ApiClient());

  /// Registering data source
  inject.registerLazySingleton<PokemonDataSource>(
    () => PokemonDataSource(inject<ApiClient>()),
  );
  inject.registerLazySingleton<SpeciesDataSource>(
    () => SpeciesDataSource(inject<ApiClient>()),
  );
  inject.registerLazySingleton<TypeDataSource>(
    () => TypeDataSource(inject<ApiClient>()),
  );
  /// Register bloc
  // inject.registerLazySingleton<PageBloc>(() => PageBloc()..initPage());

  /// Register repository
  inject.registerLazySingleton<PokemonRepositoryImpl>(
    () => PokemonRepositoryImpl(
      inject<PokemonDataSource>(),
    ),
  );
  inject.registerLazySingleton<SpeciesRepositoryImpl>(
    () => SpeciesRepositoryImpl(
      inject<SpeciesDataSource>(),
    ),
  );
  inject.registerLazySingleton<TypeRepositoryImpl>(
    () => TypeRepositoryImpl(
      inject<TypeDataSource>(),
    ),
  );
}
