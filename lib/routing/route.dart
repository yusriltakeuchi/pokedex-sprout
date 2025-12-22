import 'package:auto_route/auto_route.dart';
import 'package:pokedex/routing/route.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: PokemonDetailRoute.page),
  ];
  @override
  List<AutoRouteGuard> get guards => [];

}