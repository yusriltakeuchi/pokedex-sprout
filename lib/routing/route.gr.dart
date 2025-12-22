// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:pokedex/domain/entities/pokemon/pokemon_entity.dart' as _i6;
import 'package:pokedex/presentation/home/home_screen.dart' as _i1;
import 'package:pokedex/presentation/pokemon/pokemon_detail_screen.dart' as _i2;
import 'package:pokedex/presentation/splash/splash_screen.dart' as _i3;

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomeScreen();
    },
  );
}

/// generated route for
/// [_i2.PokemonDetailScreen]
class PokemonDetailRoute extends _i4.PageRouteInfo<PokemonDetailRouteArgs> {
  PokemonDetailRoute({
    _i5.Key? key,
    required _i6.PokemonEntity pokemon,
    List<_i4.PageRouteInfo>? children,
  }) : super(
         PokemonDetailRoute.name,
         args: PokemonDetailRouteArgs(key: key, pokemon: pokemon),
         initialChildren: children,
       );

  static const String name = 'PokemonDetailRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PokemonDetailRouteArgs>();
      return _i2.PokemonDetailScreen(key: args.key, pokemon: args.pokemon);
    },
  );
}

class PokemonDetailRouteArgs {
  const PokemonDetailRouteArgs({this.key, required this.pokemon});

  final _i5.Key? key;

  final _i6.PokemonEntity pokemon;

  @override
  String toString() {
    return 'PokemonDetailRouteArgs{key: $key, pokemon: $pokemon}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PokemonDetailRouteArgs) return false;
    return key == other.key && pokemon == other.pokemon;
  }

  @override
  int get hashCode => key.hashCode ^ pokemon.hashCode;
}

/// generated route for
/// [_i3.SplashScreen]
class SplashRoute extends _i4.PageRouteInfo<void> {
  const SplashRoute({List<_i4.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.SplashScreen();
    },
  );
}
