import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/bloc/type/get_type_defenses_bloc.dart';
import 'package:pokedex/config/app_config.dart';
import 'package:pokedex/core/components/loading/loading_listview.dart';
import 'package:pokedex/domain/entities/stat/stat_entity.dart';
import 'package:pokedex/domain/entities/type/type_defense_entity.dart';
import 'package:pokedex/extension/string_extension.dart';
import 'package:pokedex/theme/theme.dart';

class PokemonDetailTabBaseStat extends StatelessWidget {
  final List<StatEntity> stats;

  const PokemonDetailTabBaseStat({super.key, required this.stats});

  String normalizeStat(String text) {
    return text
        .replaceAll("Special-attack", "Sp. Atk")
        .replaceAll("Special-defense", "Sp. Def")
        .replaceAll("Hp", "HP");
  }

  Color colorByStat(String statName) {
    switch (statName.toLowerCase()) {
      case "hp":
        return MyTheme.color.danger;
      case "attack":
        return MyTheme.color.success;
      case "defense":
        return MyTheme.color.danger;
      case "special-attack":
        return MyTheme.color.success;
      case "special-defense":
        return MyTheme.color.success;
      case "speed":
        return MyTheme.color.danger;
      default:
        return MyTheme.color.primary;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        ListView.builder(
          shrinkWrap: true,
          padding: .zero,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: stats.length,
          itemBuilder: (context, index) {
            final stat = stats[index];
            return Padding(
              padding: EdgeInsets.only(bottom: AppSetting.setHeight(20)),
              child: _LabelStats(
                title: normalizeStat(
                  stat.stat?.name?.capitalizeMultipleWords() ?? "-",
                ),
                value: stat.baseStat?.toString() ?? '-',
                suffix: Padding(
                  padding: EdgeInsets.only(left: AppSetting.setWidth(40)),
                  child: _ProgressStat(
                    value: stat.baseStat?.toDouble() ?? 0,

                    /// As per pokemon games, the maximum base stat value is 255
                    maxValue: 255,
                    color: colorByStat(stat.stat?.name ?? ""),
                  ),
                ),
              ),
            );
          },
        ),
        Space.h(70),
        Text(
          "Type Defenses",
          style: MyTheme.style.title.copyWith(
            color: MyTheme.color.blackWhite,
            fontSize: AppSetting.setFontSize(50),
          ),
        ),
        Space.h(30),
        Text(
          "Type defenses information will be available soon.",
          style: MyTheme.style.subtitle.copyWith(
            color: MyTheme.color.blackWhite.withValues(alpha: 0.6),
            fontSize: AppSetting.setFontSize(40),
          ),
        ),
        BlocBuilder<GetTypeDefensesBloc, GetTypeDefensesState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const SizedBox(),
              loading: () => LoadingListView(length: 3),
              loaded: (vulnerabilities, resistances, immunities) {
                return Column(
                  crossAxisAlignment: .start,
                  children: [
                    _DefensesCard(
                      title: "Vulnerable to",
                      color: MyTheme.color.danger,
                      types: vulnerabilities,
                    ),
                    Space.h(30),
                    _DefensesCard(
                      title: "Resistant to",
                      color: MyTheme.color.success,
                      types: resistances,
                    ),
                    Space.h(30),
                    _DefensesCard(
                      title: "Immune to",
                      color: MyTheme.color.blackWhite,
                      types: immunities,
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

class _DefensesCard extends StatelessWidget {
  final String title;
  final Color color;
  final List<TypeDefenseEntity> types;

  const _DefensesCard({
    required this.title,
    required this.color,
    required this.types,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: .circular(10),
        color: MyTheme.color.white,
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Container(
            color: color,
            child: Padding(
              padding: .symmetric(
                vertical: AppSetting.setHeight(20),
                horizontal: AppSetting.setWidth(30),
              ),
              child: Text(
                title,
                style: MyTheme.style.title.copyWith(
                  color: MyTheme.color.white,
                  fontSize: AppSetting.setFontSize(40),
                ),
              ),
            ),
          ),
          Padding(
            padding: .symmetric(
              vertical: AppSetting.setHeight(20),
              horizontal: AppSetting.setWidth(30),
            ),
            child: Wrap(
              children: types
                  .map(
                    (e) => Container(
                      margin: EdgeInsets.only(
                        right: AppSetting.setWidth(10),
                        bottom: AppSetting.setHeight(10),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: AppSetting.setHeight(10),
                        horizontal: AppSetting.setWidth(15),
                      ),
                      decoration: BoxDecoration(
                        color: MyTheme.color.primary.withValues(alpha: 0.1),
                        borderRadius: .circular(30),
                      ),
                      child: Text(
                        e.name?.capitalizeMultipleWords() ?? "-",
                        style: MyTheme.style.subtitle.copyWith(
                          color: MyTheme.color.primary,
                          fontSize: AppSetting.setFontSize(35),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class _ProgressStat extends StatelessWidget {
  final double value;
  final double maxValue;
  final Color color;

  const _ProgressStat({
    required this.value,
    required this.maxValue,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: AppSetting.setHeight(10),
          decoration: BoxDecoration(
            color: MyTheme.color.blackWhite.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(AppSetting.setHeight(15)),
          ),
        ),
        Container(
          width: (value / maxValue) * AppSetting.deviceWidth,
          height: AppSetting.setHeight(10),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(AppSetting.setHeight(15)),
          ),
        ),
      ],
    );
  }
}

class _LabelStats extends StatelessWidget {
  final String title;
  final String value;
  final Widget suffix;

  const _LabelStats({
    required this.title,
    required this.value,
    required this.suffix,
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
          child: Row(
            children: [
              Text(
                value,
                style: MyTheme.style.subtitle.copyWith(
                  color: MyTheme.color.blackWhite,
                  fontSize: AppSetting.setFontSize(40),
                ),
              ),
              Expanded(child: suffix),
            ],
          ),
        ),
      ],
    );
  }
}
