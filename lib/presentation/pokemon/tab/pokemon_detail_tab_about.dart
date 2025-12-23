import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/bloc/species/get_species_bloc.dart';
import 'package:pokedex/config/app_config.dart';
import 'package:pokedex/core/components/loading/loading_listview.dart';
import 'package:pokedex/domain/entities/gender/gender_ratio_entity.dart';
import 'package:pokedex/domain/entities/pokemon/pokemon_entity.dart';
import 'package:pokedex/extension/string_extension.dart';
import 'package:pokedex/gen/assets.gen.dart';
import 'package:pokedex/theme/theme.dart';

class PokemonDetailTabAbout extends StatefulWidget {
  final PokemonEntity pokemon;

  const PokemonDetailTabAbout({super.key, required this.pokemon});

  @override
  State<PokemonDetailTabAbout> createState() => _PokemonDetailTabAboutState();
}

class _PokemonDetailTabAboutState extends State<PokemonDetailTabAbout> {
  GenderRatioEntity calculateGenderRatio(int genderRate) {
    /// Genderless Pokémon
    if (genderRate == -1) {
      return const GenderRatioEntity(male: 0, female: 0, genderless: true);
    }

    /// Calculate male and female percentage
    /// female% = (gender_rate / 8) * 100
    /// male%   = 100 - female%
    final double female = (genderRate / 8.0) * 100;
    final double male = 100 - female;

    return GenderRatioEntity(male: male, female: female, genderless: false);
  }

  /// Calculate egg steps required to hatch
  /// Formula: (hatch_counter + 1) * 255
  int calculateEggSteps(int hatchCounter) {
    return (hatchCounter + 1) * 255;
  }

  /// Convert weight from hectograms to pounds
  /// 1 hectogram = 0.220462 pounds
  double weightToLbs(int weightHg) {
    return weightHg * 0.220462;
  }

  /// Convert height from decimeters to feet and inches
  /// 1 decimeter = 3.28084 feet
  /// 1 foot = 12 inches
  /// 1 inch = 2.54 cm
  /// Formula: height (dm) -> cm -> inches -> feet + inches
  /// Example: 17 dm -> 170 cm -> 66.9291 inches -> 5 feet 6.9 inches
  /// Return format: 5'6.9"
  String heightToFeetInches(int heightDm) {
    /// dm -> cm
    final double cm = heightDm * 10.0;

    /// cm -> inches
    final double totalInches = cm / 2.54;

    /// inches -> feet + inches
    final int feet = totalInches ~/ 12;
    final double inches = totalInches % 12;

    return "$feet'${inches.toStringAsFixed(1)}\"";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        _LabelHorizontal(
          title: "Species",
          value: widget.pokemon.species?.name?.capitalizeMultipleWords() ?? "-",
        ),
        Space.h(30),
        _LabelHorizontal(
          title: "Height",
          value: "${heightToFeetInches(widget.pokemon.height ?? 0)} (${(widget.pokemon.height ?? 0) / 10} m)",
        ),
        Space.h(30),
        _LabelHorizontal(
          title: "Weight",
          value: "${weightToLbs(widget.pokemon.weight ?? 0).toStringAsFixed(1)} lbs (${(widget.pokemon.weight ?? 0) / 10} kg)",
        ),
        Space.h(30),
        _LabelHorizontal(
          title: "Abilities",
          value:
              widget.pokemon.abilities != null &&
                  widget.pokemon.abilities!.isNotEmpty
              ? widget.pokemon.abilities!
                    .map(
                      (ability) =>
                          ability.ability?.name?.capitalizeMultipleWords() ??
                          "-",
                    )
                    .join(", ")
              : "-",
        ),
        Space.h(70),
        Text(
          "Breeding",
          style: MyTheme.style.title.copyWith(
            color: MyTheme.color.blackWhite,
            fontSize: AppSetting.setFontSize(50),
          ),
        ),
        Space.h(30),
        BlocBuilder<GetSpeciesBloc, GetSpeciesState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const SizedBox(),
              loading: () => LoadingListView(
                height: 50,
                length: 3,
              ),
              loaded: (species) {
                final GenderRatioEntity genderRatio = calculateGenderRatio(
                  species.genderRate!,
                );
                return Column(
                  crossAxisAlignment: .start,
                  children: [
                    _LabelHorizontal(
                      title: "Gender",
                      value: "",
                      customValue: genderRatio.genderless == false
                          ? Row(
                              children: [
                                Row(
                                  children: [
                                    Assets.icons.iconMale.image(
                                      width: AppSetting.setWidth(40),
                                      height: AppSetting.setHeight(40),
                                    ),
                                    Space.w(10),
                                    Text(
                                      "${genderRatio.male}%",
                                      style: MyTheme.style.subtitle.copyWith(
                                        color: MyTheme.color.blackWhite,
                                        fontSize: AppSetting.setFontSize(40),
                                      ),
                                    ),
                                  ],
                                ),
                                Space.w(40),
                                Row(
                                  children: [
                                    Assets.icons.iconFemale.image(
                                      width: AppSetting.setWidth(40),
                                      height: AppSetting.setHeight(40),
                                    ),
                                    Space.w(10),
                                    Text(
                                      "${genderRatio.female}%",
                                      style: MyTheme.style.subtitle.copyWith(
                                        color: MyTheme.color.blackWhite,
                                        fontSize: AppSetting.setFontSize(40),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          : Text(
                              "Genderless",
                              style: MyTheme.style.subtitle.copyWith(
                                color: MyTheme.color.blackWhite,
                                fontSize: AppSetting.setFontSize(40),
                              ),
                            ),
                    ),
                    Space.h(30),
                    _LabelHorizontal(
                      title: "Egg Groups",
                      value:
                          species.eggGroups != null &&
                              species.eggGroups!.isNotEmpty
                          ? species.eggGroups!
                                .map(
                                  (eggGroup) =>
                                      eggGroup.name
                                          ?.capitalizeMultipleWords() ??
                                      "-",
                                )
                                .join(", ")
                          : "-",
                    ),
                    Space.h(30),
                    _LabelHorizontal(
                      title: "Egg Cycle",
                      value: "${species.hatchCounter} (${calculateEggSteps(species.hatchCounter!)} steps)",
                    ),
                  ],
                );
              },
            );
          },
        ),
      ],
    );
  }
}

class _LabelHorizontal extends StatelessWidget {
  final String title;
  final String value;
  final Widget? customValue;

  const _LabelHorizontal({
    required this.title,
    required this.value,
    this.customValue,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            title,
            style: MyTheme.style.subtitle.copyWith(
              color: MyTheme.color.blackWhite.withValues(alpha: 0.6),
              fontSize: AppSetting.setFontSize(40),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child:
              customValue ??
              Text(
                value,
                style: MyTheme.style.subtitle.copyWith(
                  color: MyTheme.color.blackWhite,
                  fontSize: AppSetting.setFontSize(40),
                ),
              ),
        ),
      ],
    );
  }
}
