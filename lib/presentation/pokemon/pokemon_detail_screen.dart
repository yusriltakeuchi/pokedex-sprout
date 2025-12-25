import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/bloc/evolution/evolution_chain_bloc.dart';
import 'package:pokedex/bloc/favorite/add_favorite_bloc.dart';
import 'package:pokedex/bloc/favorite/add_favorite_bloc.dart';
import 'package:pokedex/bloc/favorite/is_favorite_bloc.dart';
import 'package:pokedex/bloc/favorite/is_favorite_bloc.dart';
import 'package:pokedex/bloc/favorite/remove_favorite_bloc.dart';
import 'package:pokedex/bloc/pokemon/get_pokemon_machine_bloc.dart';
import 'package:pokedex/bloc/pokemon/get_pokemon_moves_bloc.dart';
import 'package:pokedex/bloc/species/get_species_bloc.dart';
import 'package:pokedex/bloc/type/get_type_defenses_bloc.dart';
import 'package:pokedex/config/app_config.dart';
import 'package:pokedex/core/components/button/icon_click_button.dart';
import 'package:pokedex/core/components/click/click_item.dart';
import 'package:pokedex/core/components/dialog/snackbar_item.dart';
import 'package:pokedex/core/components/image/image_cache.dart';
import 'package:pokedex/domain/entities/pokemon/pokemon_entity.dart';
import 'package:pokedex/extension/string_extension.dart';
import 'package:pokedex/gen/assets.gen.dart';
import 'package:pokedex/presentation/pokemon/tab/pokemon_detail_tab_about.dart';
import 'package:pokedex/presentation/pokemon/tab/pokemon_detail_tab_basestat.dart';
import 'package:pokedex/presentation/pokemon/tab/pokemon_detail_tab_evolution.dart';
import 'package:pokedex/presentation/pokemon/tab/pokemon_detail_tab_moves.dart';
import 'package:pokedex/theme/theme.dart';
import 'package:pokedex/utils/helper/helper_utils.dart';

@RoutePage()
class PokemonDetailScreen extends StatelessWidget {
  final PokemonEntity pokemon;

  const PokemonDetailScreen({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    final color = pokemon.types?.first.type?.color ?? Colors.grey;
    return Scaffold(
      backgroundColor: color,
      body: MultiBlocProvider(
        providers: [
          BlocProvider<GetSpeciesBloc>(
            create: (context) => GetSpeciesBloc()
              ..getSpecies(
                HelperUtils.instance.parseUrlId(pokemon.species?.url ?? ""),
              ),
          ),
          BlocProvider<GetTypeDefensesBloc>(
            create: (context) => GetTypeDefensesBloc()
              ..getTypeDefenses(pokemon.types!.map((e) => e.type!).toList()),
          ),
          BlocProvider<EvolutionChainBloc>(
            create: (context) => EvolutionChainBloc(),
          ),
          BlocProvider<GetPokemonMovesBloc>(
            create: (context) => GetPokemonMovesBloc(),
          ),
          BlocProvider<GetPokemonMachineBloc>(
            create: (context) => GetPokemonMachineBloc(),
          ),
          BlocProvider<IsFavoriteBloc>(
            create: (context) => IsFavoriteBloc()..checkIsFavorite(pokemon),
          ),
          BlocProvider<AddFavoriteBloc>(create: (context) => AddFavoriteBloc()),
          BlocProvider<RemoveFavoriteBloc>(
            create: (context) => RemoveFavoriteBloc(),
          ),
        ],
        child: BlocListener<GetSpeciesBloc, GetSpeciesState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              loaded: (species) {
                final evolutionId = HelperUtils.instance.parseUrlId(
                  species.evolutionChain?.url ?? "",
                );
                context.read<EvolutionChainBloc>().getEvolutionChain(
                  evolutionId,
                );
              },
            );
          },
          child: PokemonDetailBody(pokemon: pokemon),
        ),
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
    final isPortrait = AppSetting.isPortrait(context);

    return SafeArea(
      bottom: false,
      child: isPortrait ? _buildPortraitLayout() : _buildLandscapeLayout(),
    );
  }

  Widget _buildPortraitLayout() {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Space.w(100),
        _appBarSection(context),
        Space.h(40),
        _pokemonInfo(),
        _pokemonDetailPortrait(),
      ],
    );
  }

  Widget _buildLandscapeLayout() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final minHeight = AppSetting.deviceHeight;

        return SingleChildScrollView(
          child: Column(
            children: [
              Space.h(20),
              _appBarSection(context),
              Space.h(20),
              ConstrainedBox(
                constraints: BoxConstraints(minHeight: minHeight),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Left side - Pokemon image and info
                    Expanded(
                      flex: 4,
                      child: Column(
                        children: [
                          Hero(
                            tag: 'pokemon_image_${widget.pokemon.id}',
                            child: ImageCaching(
                              imageUrl:
                                  widget
                                      .pokemon
                                      .sprites
                                      ?.other
                                      ?.home
                                      ?.frontDefault ??
                                  "",
                              width: AppSetting.setWidth(500),
                              height: AppSetting.setHeight(500),
                              fit: BoxFit.contain,
                            ),
                          ),
                          Space.h(20),
                          _pokemonInfoLandscape(),
                          Space.h(40),
                        ],
                      ),
                    ),

                    /// Right side - Tabs and content (full height)
                    Expanded(
                      flex: 6,
                      child: Container(
                        constraints: BoxConstraints(minHeight: minHeight),
                        margin: EdgeInsets.only(right: AppSetting.setWidth(20)),
                        decoration: BoxDecoration(
                          color: MyTheme.color.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSetting.setWidth(40),
                          vertical: AppSetting.setHeight(30),
                        ),
                        child: Column(
                          crossAxisAlignment: .start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(tabs.length, (index) {
                                  final tabTitle = tabs[index];
                                  final isSelected = index == selectedTabIndex;
                                  return Padding(
                                    padding: .only(
                                      left: index == 0
                                          ? 0
                                          : AppSetting.setWidth(20),
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
                            Space.h(20),
                            SizedBox(
                              height: minHeight - AppSetting.setHeight(150),
                              child: PageView(
                                controller: _pageController,
                                onPageChanged: onPageChanged,
                                children: [
                                  SingleChildScrollView(
                                    child: Padding(
                                      padding: .only(
                                        top: AppSetting.setHeight(20),
                                      ),
                                      child: PokemonDetailTabAbout(
                                        pokemon: widget.pokemon,
                                      ),
                                    ),
                                  ),
                                  SingleChildScrollView(
                                    child: Padding(
                                      padding: .only(
                                        top: AppSetting.setHeight(20),
                                      ),
                                      child: PokemonDetailTabBaseStat(
                                        stats: widget.pokemon.stats ?? [],
                                      ),
                                    ),
                                  ),
                                  SingleChildScrollView(
                                    child: Padding(
                                      padding: .only(
                                        top: AppSetting.setHeight(20),
                                      ),
                                      child: PokemonDetailTabBaseEvolution(),
                                    ),
                                  ),
                                  SingleChildScrollView(
                                    child: Padding(
                                      padding: .only(
                                        top: AppSetting.setHeight(20),
                                      ),
                                      child: PokemonDetailTabBaseMoves(
                                        move: widget.pokemon.moves,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _pokemonInfoLandscape() {
    return Padding(
      padding: .symmetric(horizontal: AppSetting.setWidth(40)),
      child: Column(
        children: [
          Text(
            widget.pokemon.name?.capitalizeMultipleWords() ?? "Unknown",
            style: MyTheme.style.title.copyWith(
              fontSize: AppSetting.setFontSize(50),
              color: MyTheme.color.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Space.h(10),
          Text(
            "#${widget.pokemon.id.toString().padLeft(4, '0')}",
            style: MyTheme.style.subtitle.copyWith(
              fontSize: AppSetting.setFontSize(35),
              color: MyTheme.color.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Space.h(15),
          Wrap(
            spacing: AppSetting.setWidth(15),
            runSpacing: AppSetting.setHeight(10),
            alignment: WrapAlignment.center,
            children: List.generate(widget.pokemon.types?.length ?? 0, (index) {
              final type = widget.pokemon.types?[index].type?.name ?? "unknown";
              return _typeItem(type);
            }),
          ),
        ],
      ),
    );
  }

  Widget _pokemonDetailPortrait() {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isPortrait = AppSetting.isPortrait(context);
          final imageHeight = isPortrait
              ? AppSetting.setHeight(600)
              : AppSetting.setHeight(400);
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
                                child: PokemonDetailTabBaseMoves(
                                  move: widget.pokemon.moves,
                                ),
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
                      imageUrl:
                          widget.pokemon.sprites?.other?.home?.frontDefault ??
                          "",
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
    final isPortrait = AppSetting.isPortrait(context);
    final fontSize = isPortrait ? 70.0 : 50.0;
    final idFontSize = isPortrait ? 45.0 : 35.0;

    return Padding(
      padding: .symmetric(horizontal: AppSetting.setWidth(50)),
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text(
                  widget.pokemon.name?.capitalizeMultipleWords() ?? "Unknown",
                  style: MyTheme.style.title.copyWith(
                    fontSize: AppSetting.setFontSize(fontSize),
                    color: MyTheme.color.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Space.h(20),
                Wrap(
                  spacing: AppSetting.setWidth(15),
                  runSpacing: AppSetting.setHeight(10),
                  children: List.generate(widget.pokemon.types?.length ?? 0, (
                    index,
                  ) {
                    final type =
                        widget.pokemon.types?[index].type?.name ?? "unknown";
                    return _typeItem(type);
                  }),
                ),
              ],
            ),
          ),
          Text(
            "#${widget.pokemon.id.toString().padLeft(4, '0')}",
            style: MyTheme.style.subtitle.copyWith(
              fontSize: AppSetting.setFontSize(idFontSize),
              color: MyTheme.color.white,
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
          BlocBuilder<IsFavoriteBloc, IsFavoriteState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => Image.asset(
                  Assets.icons.iconFavorite.path,
                  width: AppSetting.setWidth(60),
                  height: AppSetting.setHeight(60),
                  color: Colors.white,
                ),
                loaded: (isFavorited) {
                  return GestureDetector(
                    onTap: () {
                      if (isFavorited) {
                        context.read<RemoveFavoriteBloc>().removeFavorite(
                          widget.pokemon,
                        );
                      } else {
                        context.read<AddFavoriteBloc>().addFavorite(
                          widget.pokemon,
                        );
                      }
                    },
                    child: MultiBlocListener(
                      listeners: [
                        BlocListener<AddFavoriteBloc, AddFavoriteState>(
                          listener: (context, state) {
                            state.maybeWhen(
                              orElse: () {},
                              loaded: () {
                                context.read<IsFavoriteBloc>().checkIsFavorite(
                                  widget.pokemon,
                                );
                              },
                              error: (message) {
                                showSnackbar(
                                  title: message,
                                  color: MyTheme.color.danger,
                                );
                              },
                            );
                          },
                        ),
                        BlocListener<RemoveFavoriteBloc, RemoveFavoriteState>(
                          listener: (context, state) {
                            state.maybeWhen(
                              orElse: () {},
                              loaded: () {
                                context.read<IsFavoriteBloc>().checkIsFavorite(
                                  widget.pokemon,
                                );
                              },
                              error: (message) {
                                showSnackbar(
                                  title: message,
                                  color: MyTheme.color.danger,
                                );
                              },
                            );
                          },
                        ),
                      ],
                      child: Image.asset(
                        isFavorited
                            ? Assets.icons.iconFavoriteFilled.path
                            : Assets.icons.iconFavorite.path,
                        width: AppSetting.setWidth(60),
                        height: AppSetting.setHeight(60),
                        color: Colors.white,
                      ),
                    ),
                  );
                },
              );
            },
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
    final isPortrait = AppSetting.isPortrait(context);
    final heightPercentage = isPortrait ? 0.5 : 0.8;

    return SizedBox(
      height: AppSetting.deviceHeight * heightPercentage,
      width: AppSetting.deviceWidth,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: isPortrait ? 0 : -50,
            child: Assets.icons.iconPokeball.image(
              width: isPortrait
                  ? AppSetting.deviceWidth * 0.5
                  : AppSetting.deviceWidth * 0.3,
              color: Colors.white.withValues(alpha: 0.3),
            ),
          ),
        ],
      ),
    );
  }
}
