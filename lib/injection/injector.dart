import 'package:get_it/get_it.dart';
import 'package:pokedex/routing/route.dart';

GetIt inject = GetIt.instance;

Future<void> setupInjector() async {
  /// Route
  inject.registerSingleton<AppRouter>(AppRouter());

  /// Core api client
  // inject.registerLazySingleton(() => ApiClient());

  /// Registering data source
  // inject.registerLazySingleton<ChannelDataSource>(
  //   () => ChannelDataSource(inject<ApiClient>()),
  // );
  /// Register bloc
  // inject.registerLazySingleton<PageBloc>(() => PageBloc()..initPage());

  /// Register repository
  // inject.registerLazySingleton<ChannelRepositoryImpl>(
  //   () => ChannelRepositoryImpl(
  //     inject<ChannelDataSource>(),
  //   ),
  // );
}
