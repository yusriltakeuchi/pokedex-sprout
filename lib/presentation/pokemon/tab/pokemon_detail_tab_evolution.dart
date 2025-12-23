import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/bloc/evolution/evolution_chain_bloc.dart';
import 'package:pokedex/config/app_config.dart';
import 'package:pokedex/core/components/loading/loading_grid.dart';
import 'package:pokedex/core/components/pokemon/pokemon_stage_item.dart';
import 'package:pokedex/domain/entities/evolution/evolution_detail_entity.dart';
import 'package:pokedex/domain/entities/evolution/evolution_entity.dart';
import 'package:pokedex/theme/theme.dart';

class PokemonDetailTabBaseEvolution extends StatelessWidget {
  const PokemonDetailTabBaseEvolution({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text(
          "Previous Evolution",
          style: MyTheme.style.title.copyWith(
            fontSize: AppSetting.setFontSize(40),
            color: MyTheme.color.black,
          ),
        ),
        Space.h(40),
        BlocBuilder<EvolutionChainBloc, EvolutionChainState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const SizedBox(),
              loading: () => const LoadingGrid(length: 4, crossAxis: 2),
              loaded: (evolutionChain) {
                final stages = flattenEvolution(evolutionChain.chain);

                return Column(
                  children: List.generate(stages.length - 1, (index) {
                    final from = stages[index];
                    final to = stages[index + 1];

                    return Padding(
                      padding: .only(
                        bottom: index == stages.length - 2
                            ? 0
                            : AppSetting.setHeight(60),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(child: PokemonStageItem(evolution: from)),
                          Expanded(
                            child: _EvolutionArrow(
                              detail: to.evolutionDetails?.first,
                            ),
                          ),
                          Expanded(child: PokemonStageItem(evolution: to)),
                        ],
                      ),
                    );
                  }),
                );
              },
            );
          },
        ),
      ],
    );
  }

  List<EvolutionEntity> flattenEvolution(EvolutionEntity? chain) {
    final List<EvolutionEntity> result = [];

    void traverse(EvolutionEntity? node) {
      if (node == null) return;

      result.add(node);

      if (node.evolvesTo?.isNotEmpty == true) {
        traverse(node.evolvesTo!.first);
      }
    }

    traverse(chain);
    return result;
  }
}

class _EvolutionArrow extends StatelessWidget {
  final EvolutionDetailEntity? detail;

  const _EvolutionArrow({this.detail});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSetting.setWidth(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.arrow_forward, size: 24, color: MyTheme.color.blackWhite),
          if (detail?.minLevel != null) ...[
            const SizedBox(height: 4),
            Text(
              'Lv ${detail!.minLevel}',
              style: MyTheme.style.title.copyWith(
                fontSize: AppSetting.setFontSize(35),
                color: MyTheme.color.blackWhite,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
