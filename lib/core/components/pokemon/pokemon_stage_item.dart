import 'package:flutter/material.dart';
import 'package:pokedex/config/app_config.dart';
import 'package:pokedex/core/components/image/image_cache.dart';
import 'package:pokedex/domain/entities/evolution/evolution_entity.dart';
import 'package:pokedex/extension/string_extension.dart';
import 'package:pokedex/gen/assets.gen.dart';
import 'package:pokedex/theme/theme.dart';

class PokemonStageItem extends StatelessWidget {
  final EvolutionEntity evolution;

  const PokemonStageItem({super.key, required this.evolution});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Assets.icons.iconPokeball.image(
              width: AppSetting.setWidth(200),
              height: AppSetting.setWidth(200),
              color: Colors.grey.withValues(alpha: 0.2),
            ),
            ImageCaching(
              imageUrl:
                  evolution.detailPokemon?.sprites?.other?.home?.frontDefault ??
                  "",
              width: AppSetting.setWidth(230),
              height: AppSetting.setHeight(230),
              fit: BoxFit.contain,
            ),
          ],
        ),
        Text(
          "${evolution.species?.name?.capitalizeMultipleWords()}",
          style: MyTheme.style.subtitle.copyWith(
            fontSize: AppSetting.setFontSize(35),
            color: MyTheme.color.black,
          ),
        ),
        Text(
          "#${evolution.detailPokemon?.id.toString().padLeft(4, '0')}",
          style: MyTheme.style.subtitle.copyWith(
            fontSize: AppSetting.setFontSize(30),
            color: MyTheme.color.grey,
          ),
        ),
      ],
    );
  }
}
