import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/config/app_config.dart';
import 'package:pokedex/domain/entities/pokemon/pokemon_entity.dart';
import 'package:pokedex/extension/string_extension.dart';
import 'package:pokedex/gen/assets.gen.dart';
import 'package:pokedex/theme/theme.dart';

@RoutePage()
class PokemonDetailScreen extends StatelessWidget {
  final PokemonEntity pokemon;

  const PokemonDetailScreen({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    final color = pokemon.types?.first.type?.color ?? Colors.grey;
    return Scaffold(
      backgroundColor: color,
      body: PokemonDetailBody(pokemon: pokemon),
    );
  }
}

class PokemonDetailBody extends StatelessWidget {
  final PokemonEntity pokemon;

  const PokemonDetailBody({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _BackgroundSection(),
        _ContentSection(pokemon: pokemon),
      ],
    );
  }
}

class _ContentSection extends StatelessWidget {
  final PokemonEntity pokemon;

  const _ContentSection({required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: .symmetric(horizontal: AppSetting.setWidth(50)),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Space.w(100),
            _appBarSection(),
            Space.h(40),
            _pokemonInfo(),
            _pokemonImage(),
          ],
        ),
      ),
    );
  }

  Widget _pokemonImage() {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final imageHeight = AppSetting.setHeight(600);
          final whiteContainerHeight = AppSetting.setHeight(100);

          return Stack(
            children: [
              Positioned(
                top: imageHeight - whiteContainerHeight,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: MyTheme.color.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppSetting.setWidth(50)),
                      topRight: Radius.circular(AppSetting.setWidth(50)),
                    )
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Hero(
                  tag: 'pokemon_image_${pokemon.id}',
                  child: Image.network(
                    pokemon.sprites?.other?.home?.frontDefault ?? "",
                    width: AppSetting.setWidth(700),
                    height: imageHeight,
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) {
                      return Assets.images.logoFullWhite.image(
                        width: AppSetting.setWidth(300),
                        height: AppSetting.setHeight(300),
                        fit: BoxFit.contain,
                      );
                    },
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _pokemonInfo() {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              pokemon.name?.capitalizeMultipleWords() ?? "Unknown",
              style: TextStyle(
                fontSize: AppSetting.setFontSize(70),
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Space.h(20),
            Row(
              children: List.generate(pokemon.types?.length ?? 0, (index) {
                final type = pokemon.types?[index].type?.name ?? "unknown";
                return Padding(
                  padding: EdgeInsets.only(right: AppSetting.setWidth(20)),
                  child: _typeItem(type),
                );
              }),
            ),
          ],
        ),
        Text(
          "#${pokemon.id.toString().padLeft(3, '0')}",
          style: TextStyle(
            fontSize: AppSetting.setFontSize(45),
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _typeItem(String type) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSetting.setWidth(30),
        vertical: AppSetting.setHeight(5),
      ),
      decoration: BoxDecoration(
        color: MyTheme.color.white.withValues(alpha: 0.3),
        borderRadius: .circular(10),
      ),
      child: Text(
        type.capitalize(),
        style: MyTheme.style.subtitle.copyWith(
          fontSize: AppSetting.setFontSize(30),
          color: MyTheme.color.white,
        ),
      ),
    );
  }

  Widget _appBarSection() {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Assets.icons.iconArrowLeft.image(
          width: AppSetting.setWidth(70),
          height: AppSetting.setHeight(70),
          color: Colors.white,
        ),
        Image.asset(
          Assets.icons.iconFavorite.path,
          width: AppSetting.setWidth(60),
          height: AppSetting.setHeight(60),
          color: Colors.white,
        ),
      ],
    );
  }
}

class _BackgroundSection extends StatelessWidget {
  const _BackgroundSection();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSetting.deviceHeight / 2,
      width: AppSetting.deviceWidth,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            child: Assets.icons.iconPokeball.image(
              width: AppSetting.deviceWidth * 0.5,
              color: Colors.white.withValues(alpha: 0.3),
            ),
          ),
        ],
      ),
    );
  }
}
