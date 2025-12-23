import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/bloc/species/get_species_bloc.dart';
import 'package:pokedex/bloc/type/get_type_defenses_bloc.dart';
import 'package:pokedex/config/app_config.dart';
import 'package:pokedex/core/components/button/icon_click_button.dart';
import 'package:pokedex/core/components/click/click_item.dart';
import 'package:pokedex/core/components/image/image_cache.dart';
import 'package:pokedex/domain/entities/pokemon/pokemon_entity.dart';
import 'package:pokedex/extension/string_extension.dart';
import 'package:pokedex/gen/assets.gen.dart';
import 'package:pokedex/presentation/pokemon/tab/pokemon_detail_tab_about.dart';
import 'package:pokedex/presentation/pokemon/tab/pokemon_detail_tab_basestat.dart';
import 'package:pokedex/presentation/pokemon/tab/pokemon_detail_tab_evolution.dart';
import 'package:pokedex/presentation/pokemon/tab/pokemon_detail_tab_moves.dart';
import 'package:pokedex/theme/theme.dart';

@RoutePage()
class PokemonDetailScreen extends StatelessWidget {
  final PokemonEntity pokemon;

  const PokemonDetailScreen({super.key, required this.pokemon});

  String parseId() {
    /// there is value like this url "https://pokeapi.co/api/v2/pokemon-species/4/"
    /// i want to get the id "4" from this url
    final url = pokemon.species?.url ?? "";
    final segments = url.split('/');
    if (segments.length >= 2) {
      return segments[segments.length - 2];
    }
    return "0";
  }

  @override
  Widget build(BuildContext context) {
    final color = pokemon.types?.first.type?.color ?? Colors.grey;
    return Scaffold(
      backgroundColor: color,
      body: MultiBlocProvider(
        providers: [
          BlocProvider<GetSpeciesBloc>(
            create: (context) => GetSpeciesBloc()..getSpecies(parseId()),
          ),
          BlocProvider<GetTypeDefensesBloc>(
            create: (context) => GetTypeDefensesBloc()
              ..getTypeDefenses(pokemon.types!.map((e) => e.type!).toList()),
          ),
        ],
        child: PokemonDetailBody(pokemon: pokemon),
      ),
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

class _ContentSection extends StatefulWidget {
  final PokemonEntity pokemon;

  const _ContentSection({required this.pokemon});

  @override
  State<_ContentSection> createState() => _ContentSectionState();
}

class _ContentSectionState extends State<_ContentSection> {
  List<String> tabs = ["About", "Base Stats", "Evolution", "Moves"];
  int selectedTabIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: selectedTabIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void onTabSelected(int index) {
    setState(() {
      selectedTabIndex = index;
    });
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void onPageChanged(int index) {
    setState(() {
      selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Space.w(100),
          _appBarSection(context),
          Space.h(40),
          _pokemonInfo(),
          _pokemonDetail(),
        ],
      ),
    );
  }

  Widget _pokemonDetail() {
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
                    ),
                  ),
                  padding: .only(
                    top: AppSetting.setHeight(130),
                    left: AppSetting.setWidth(50),
                    right: AppSetting.setWidth(50),
                  ),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      /// I want the tab is scrollable if the screen is small
                      /// and the tab items are more than the screen width
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(tabs.length, (index) {
                            final tabTitle = tabs[index];
                            final isSelected = index == selectedTabIndex;
                            return Padding(
                              padding: .only(
                                left: index == 0 ? 0 : AppSetting.setWidth(20),
                              ),
                              child: _TabItem(
                                title: tabTitle,
                                isSelected: isSelected,
                                onClick: () => onTabSelected(index),
                              ),
                            );
                          }),
                        ),
                      ),

                      /// Content tab - now swipeable with PageView
                      Expanded(
                        child: PageView(
                          controller: _pageController,
                          onPageChanged: onPageChanged,
                          children: [
                            SingleChildScrollView(
                              child: Padding(
                                padding: .only(top: AppSetting.setHeight(30)),
                                child: PokemonDetailTabAbout(
                                  pokemon: widget.pokemon,
                                ),
                              ),
                            ),
                            SingleChildScrollView(
                              child: Padding(
                                padding: .only(top: AppSetting.setHeight(30)),
                                child: PokemonDetailTabBaseStat(
                                  stats: widget.pokemon.stats ?? [],
                                ),
                              ),
                            ),
                            SingleChildScrollView(
                              child: Padding(
                                padding: .only(top: AppSetting.setHeight(30)),
                                child: PokemonDetailTabBaseEvolution(),
                              ),
                            ),
                            SingleChildScrollView(
                              child: Padding(
                                padding: .only(top: AppSetting.setHeight(30)),
                                child: PokemonDetailTabBaseMoves(),
                              ),
                            ),
                          ],
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
                child: Padding(
                  padding: .symmetric(horizontal: AppSetting.setWidth(50)),
                  child: Hero(
                    tag: 'pokemon_image_${widget.pokemon.id}',
                    child: ImageCaching(
                      imageUrl: widget.pokemon.sprites?.other?.home?.frontDefault ?? "",
                      width: AppSetting.setWidth(700),
                      height: imageHeight,
                      fit: BoxFit.contain,
                    ),
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
    return Padding(
      padding: .symmetric(horizontal: AppSetting.setWidth(50)),
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          Column(
            crossAxisAlignment: .start,
            children: [
              Text(
                widget.pokemon.name?.capitalizeMultipleWords() ?? "Unknown",
                style: TextStyle(
                  fontSize: AppSetting.setFontSize(70),
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Space.h(20),
              Row(
                children: List.generate(widget.pokemon.types?.length ?? 0, (
                  index,
                ) {
                  final type =
                      widget.pokemon.types?[index].type?.name ?? "unknown";
                  return Padding(
                    padding: EdgeInsets.only(right: AppSetting.setWidth(20)),
                    child: _typeItem(type),
                  );
                }),
              ),
            ],
          ),
          Text(
            "#${widget.pokemon.id.toString().padLeft(4, '0')}",
            style: TextStyle(
              fontSize: AppSetting.setFontSize(45),
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
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

  Widget _appBarSection(BuildContext context) {
    return Padding(
      padding: .symmetric(horizontal: AppSetting.setWidth(50)),
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          IconClickButton(
            icon: Assets.icons.iconArrowLeft.image(
              width: AppSetting.setWidth(70),
              height: AppSetting.setHeight(70),
              color: Colors.white,
            ),
            onClick: () => context.router.maybePop(),
          ),
          Image.asset(
            Assets.icons.iconFavorite.path,
            width: AppSetting.setWidth(60),
            height: AppSetting.setHeight(60),
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class _TabItem extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onClick;

  const _TabItem({
    required this.title,
    required this.isSelected,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Clickable(
      onClick: () => onClick(),
      borderRadius: .circular(10),
      child: Padding(
        padding: .symmetric(
          horizontal: AppSetting.setWidth(20),
          vertical: AppSetting.setHeight(10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: MyTheme.style.subtitle.copyWith(
                fontSize: AppSetting.setFontSize(40),
                color: isSelected
                    ? MyTheme.color.blackWhite
                    : MyTheme.color.greyDark.withValues(alpha: 0.5),
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
            Space.h(20),
            Container(
              height: AppSetting.setHeight(5),
              width: AppSetting.setWidth(100),
              decoration: BoxDecoration(
                color: isSelected ? MyTheme.color.primary : Colors.transparent,
                borderRadius: .circular(2.5),
              ),
            ),
          ],
        ),
      ),
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
