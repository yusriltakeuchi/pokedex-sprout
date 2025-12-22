import 'package:flutter/material.dart';
import 'package:pokedex/config/app_config.dart';
import 'package:pokedex/core/components/click/click_item.dart';
import 'package:pokedex/domain/entities/pokemon/pokemon_entity.dart';
import 'package:pokedex/extension/string_extension.dart';
import 'package:pokedex/gen/assets.gen.dart';
import 'package:pokedex/theme/theme.dart';

class PokemonItem extends StatelessWidget {
  final PokemonEntity pokemon;
  final VoidCallback onClick;

  const PokemonItem({super.key, required this.pokemon, required this.onClick});

  @override
  Widget build(BuildContext context) {
    final color = pokemon.types?.first.type?.color ?? Colors.grey;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: .circular(20), color: color),
      child: Clickable(
        onClick: () => onClick(),
        borderRadius: .circular(20),
        child: Stack(
          children: [
            Padding(
              padding: .symmetric(
                vertical: AppSetting.setHeight(60),
                horizontal: AppSetting.setWidth(40),
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: .start,
                    children: [
                      Text(
                        pokemon.name?.capitalizeMultipleWords() ?? "Unknown",
                        style: MyTheme.style.title.copyWith(
                          fontSize: AppSetting.setFontSize(40),
                          color: MyTheme.color.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Space.h(10),
                      Column(
                        crossAxisAlignment: .start,
                        children: List.generate(pokemon.types?.length ?? 0, (
                          index,
                        ) {
                          final type =
                              pokemon.types?[index].type?.name ?? "unknown";
                          return Padding(
                            padding: EdgeInsets.only(
                              bottom: AppSetting.setHeight(15),
                            ),
                            child: _typeItem(type),
                          );
                        }),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: -20,
              right: -15,
              child: Assets.icons.iconPokeball.image(
                width: AppSetting.setWidth(280),
                height: AppSetting.setHeight(280),
                color: Colors.white.withValues(alpha: 0.3),
              ),
            ),

            /// Show pokemon images from sprites other home
            Positioned(
              bottom: 0,
              right: 0,
              child: pokemon.sprites?.other?.home?.frontDefault != null
                  ? Hero(
                      tag: "pokemon_image_${pokemon.id}",
                      child: Image.network(
                        pokemon.sprites?.other?.home?.frontDefault ?? "",
                        width: AppSetting.setWidth(260),
                        height: AppSetting.setHeight(260),
                      ),
                    )
                  : SizedBox(
                      width: AppSetting.setWidth(150),
                      height: AppSetting.setHeight(150),
                      child: Center(
                        child: Text(
                          "No Image",
                          style: MyTheme.style.subtitle.copyWith(
                            fontSize: AppSetting.setFontSize(20),
                            color: MyTheme.color.white,
                          ),
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
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
}
