import 'package:flutter/material.dart';
import 'package:pokedex/config/app_config.dart';
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
              width: AppSetting.setWidth(80),
              height: AppSetting.setWidth(80),
              color: Colors.grey.withValues(alpha: 0.2),
            ),
            Image.asset(
              Assets.icons.iconFemale.path,
              width: AppSetting.setWidth(20),
              height: AppSetting.setWidth(20),
            ),
          ],
        ),
        Space.h(10),
        Text(
          "${evolution.species?.name?.capitalizeMultipleWords()}",
          style: MyTheme.style.subtitle.copyWith(
            fontSize: AppSetting.setFontSize(35),
            color: MyTheme.color.black,
          ),
        )
      ],
    );
  }
}
