import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:pokedex/bloc/favorite/get_favorite_bloc.dart';
import 'package:pokedex/config/app_config.dart';
import 'package:pokedex/core/components/button/icon_click_button.dart';
import 'package:pokedex/core/components/idle/idle_item.dart';
import 'package:pokedex/core/components/loading/loading_grid.dart';
import 'package:pokedex/core/components/pokemon/pokemon_item.dart';
import 'package:pokedex/gen/assets.gen.dart';
import 'package:pokedex/routing/route.gr.dart';
import 'package:pokedex/theme/theme.dart';

@RoutePage()
class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<GetFavoriteBloc>(
        create: (context) => GetFavoriteBloc()..getFavorites(),
        child: FavoriteBody(),
      ),
    );
  }
}

class FavoriteBody extends StatefulWidget {
  const FavoriteBody({super.key});

  @override
  State<FavoriteBody> createState() => _FavoriteBodyState();
}

class _FavoriteBodyState extends State<FavoriteBody> {
  bool isOnTop = true;
  ScrollController? _scrollController;

  void _scrollListener() {
    /// Handle on top or scroll
    if (_scrollController!.position.pixels > 0) {
      if (isOnTop) {
        setState(() {
          isOnTop = false;
        });
      }
    } else {
      if (!isOnTop) {
        setState(() {
          isOnTop = true;
        });
      }
    }
  }

  @override
  void dispose() {
    if (mounted) {
      _scrollController?.removeListener(_scrollListener);
      _scrollController?.dispose();
    }
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _scrollController = .new();
    _scrollController?.addListener(_scrollListener);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        RefreshIndicator(
          onRefresh: () => context.read<GetFavoriteBloc>().getFavorites(),
          child: SingleChildScrollView(
            controller: _scrollController,
            physics: const BouncingScrollPhysics(),
            child: Stack(
              children: [
                _BackgroundHeaderColor(),
                SafeArea(
                  child: Padding(
                    padding: .symmetric(
                      horizontal: AppSetting.setWidth(40),
                      vertical: AppSetting.setHeight(20),
                    ),
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        _AppBarContent(),
                        Space.h(30),
                        _PokemonSections(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: _AppBarCustom(isOnTop: isOnTop),
        ),
      ],
    );
  }
}

class _AppBarContent extends StatelessWidget {
  const _AppBarContent();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconClickButton(
          icon: Assets.icons.iconArrowLeft.image(
            width: AppSetting.setWidth(80),
            height: AppSetting.setHeight(80),
            color: Colors.white,
          ),
          onClick: () => context.router.maybePop(),
        ),
        Space.w(20),
        Text(
          "Favorites",
          style: MyTheme.style.title.copyWith(
            fontSize: AppSetting.setFontSize(60),
            color: MyTheme.color.white,
          ),
        ),
      ],
    );
  }
}

class _AppBarCustom extends StatelessWidget {
  final bool isOnTop;

  const _AppBarCustom({required this.isOnTop});

  @override
  Widget build(BuildContext context) {
    if (isOnTop) {
      return const SizedBox();
    }
    return Container(
      decoration: BoxDecoration(
        color: MyTheme.color.primary,
        boxShadow: [
          BoxShadow(
            color: Colors.black12.withValues(alpha: 0.05),
            blurRadius: 5,
            spreadRadius: 3,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: .symmetric(
            horizontal: AppSetting.setWidth(40),
            vertical: AppSetting.setHeight(15),
          ),
          child: _AppBarContent(),
        ),
      ),
    );
  }
}

class _PokemonSections extends StatelessWidget {
  const _PokemonSections();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetFavoriteBloc, GetFavoriteState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox(),
          error: (message) => IdleNoItemCenter(
            title: "Something went wrong",
            iconPath: Assets.images.illustration404.path,
            color: MyTheme.color.blackWhite,
            useCenterText: true,
            onRefresh: () => context.read<GetFavoriteBloc>().getFavorites(),
          ),
          loading: () {
            final crossAxisCount = AppSetting.isPortrait(context) ? 2 : 4;
            return LoadingGrid(
              crossAxis: crossAxisCount,
              height: 300,
              length: crossAxisCount * 4,
            );
          },
          loaded: (pokemons) {
            if (pokemons.isEmpty) {
              return IdleNoItemCenter(
                title: "No Pokemons Found",
                iconPath: Assets.images.illustration404.path,
                color: MyTheme.color.blackWhite,
                useCenterText: true,
                onRefresh: () => context.read<GetFavoriteBloc>().getFavorites(),
              );
            }

            final crossAxisCount = AppSetting.isPortrait(context) ? 2 : 4;
            return AlignedGridView.count(
              crossAxisCount: crossAxisCount,
              padding: const EdgeInsets.all(0),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: pokemons.length,
              shrinkWrap: true,
              mainAxisSpacing: AppSetting.setHeight(40),
              crossAxisSpacing: AppSetting.setWidth(40),
              itemBuilder: (context, index) {
                final pokemon = pokemons[index];
                return PokemonItem(
                  pokemon: pokemon,
                  onClick: () async {
                    await context.router.push(PokemonDetailRoute(pokemon: pokemon));
                    context.read<GetFavoriteBloc>().getFavorites();
                  },
                );
              },
            );
          },
        );
      },
    );
  }
}

class _BackgroundHeaderColor extends StatelessWidget {
  const _BackgroundHeaderColor();

  @override
  Widget build(BuildContext context) {
    final heightPercentage = AppSetting.isPortrait(context) ? 0.2 : 0.35;

    return Container(
      width: double.infinity,
      height: AppSetting.deviceHeight * heightPercentage,
      color: MyTheme.color.primary,
    );
  }
}
