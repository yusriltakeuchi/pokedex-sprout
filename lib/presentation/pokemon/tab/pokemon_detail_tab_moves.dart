import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_table_view/material_table_view.dart';
import 'package:pokedex/bloc/pokemon/get_pokemon_moves_bloc.dart';
import 'package:pokedex/config/app_config.dart';
import 'package:pokedex/core/components/expandable/expandable_item.dart';
import 'package:pokedex/core/components/loading/loading_listview.dart';
import 'package:pokedex/domain/entities/moves/move_detail_entity.dart';
import 'package:pokedex/domain/entities/moves/move_entity.dart';
import 'package:pokedex/extension/string_extension.dart';
import 'package:pokedex/theme/theme.dart';
import 'package:pokedex/utils/color/color_utils.dart';
import 'package:pokedex/utils/helper/helper_utils.dart';
import 'package:pokedex/utils/icon/icon_utils.dart';

class PokemonDetailTabBaseMoves extends StatefulWidget {
  final List<MoveEntity>? move;

  const PokemonDetailTabBaseMoves({super.key, required this.move});

  @override
  State<PokemonDetailTabBaseMoves> createState() =>
      _PokemonDetailTabBaseMovesState();
}

class _PokemonDetailTabBaseMovesState extends State<PokemonDetailTabBaseMoves> {
  int selectedIndex = 0;

  void onChangeIndex(int index) {
    setState(() {
      selectedIndex = index == selectedIndex ? -1 : index;
    });
  }

  List<MoveEntity> getMovesByName(String name) {
    final filteredMoves = widget.move
            ?.where(
              (move) =>
                  move.versionGroupDetails?.any(
                    (detail) => detail.moveLearnMethod?.name == name,
                  ) ??
                  false,
            )
            .toList() ??
        [];
    
    // Sort by level for "level-up" moves
    if (name == "level-up") {
      filteredMoves.sort((a, b) {
        final levelA = a.versionGroupDetails?.first.levelLearnedAt ?? 0;
        final levelB = b.versionGroupDetails?.first.levelLearnedAt ?? 0;
        return levelA.compareTo(levelB);
      });
    }
    
    return filteredMoves;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        ExpandableItem(
          title: "Moves learnt by level up",
          onClick: () => onChangeIndex(0),
          isExpand: selectedIndex == 0,
          child: _MoveSections(
            moves: getMovesByName("level-up"),
            type: "level-up",
          ),
        ),
        ExpandableItem(
          title: "Moves learnt by Technical Machines",
          onClick: () => onChangeIndex(1),
          isExpand: selectedIndex == 1,
          child: _MoveSections(
            moves: getMovesByName("machine"),
            type: "machine",
          ),
        ),
        ExpandableItem(
          title: "Moves learnt by breeding",
          onClick: () => onChangeIndex(2),
          isExpand: selectedIndex == 2,
          child: _MoveSections(moves: getMovesByName("egg"), type: "egg"),
        ),
        ExpandableItem(
          title: "Moves learnt from Move Tutor",
          onClick: () => onChangeIndex(3),
          isExpand: selectedIndex == 3,
          child: _MoveSections(moves: getMovesByName("tutor"), type: "tutor"),
        ),
        ExpandableItem(
          title: "Moves learnt by form change",
          onClick: () => onChangeIndex(4),
          isExpand: selectedIndex == 4,
          child: _MoveSections(
            moves: getMovesByName("form-change"),
            type: "form-change",
          ),
        ),
      ],
    );
  }
}

class _MoveSections extends StatefulWidget {
  final String type;
  final List<MoveEntity> moves;

  const _MoveSections({required this.moves, required this.type});

  @override
  State<_MoveSections> createState() => _MoveSectionsState();
}

class _MoveSectionsState extends State<_MoveSections> {
  String _mapColumnHeaderLevel(int index) {
    switch (index) {
      case 0:
        return 'Lv';
      case 1:
        return 'Move';
      case 2:
        return 'Type';
      case 3:
        return 'Cat.';
      case 4:
        return 'Power';
      case 5:
        return 'Acc.';
      default:
        return '';
    }
  }

  String _mapColumnHeaderMachines(int index) {
    switch (index) {
      case 0:
        return 'TM';
      case 1:
        return 'Move';
      case 2:
        return 'Type';
      case 3:
        return 'Cat.';
      case 4:
        return 'Power';
      case 5:
        return 'Acc.';
      default:
        return '';
    }
  }

  String _mapColumnHeaderStandard(int index) {
    switch (index) {
      case 0:
        return 'Move';
      case 1:
        return 'Type';
      case 2:
        return 'Cat.';
      case 3:
        return 'Power';
      case 4:
        return 'Acc.';
      default:
        return '';
    }
  }

  String mapColumnHeader(int index) {
    switch (widget.type) {
      case "level-up":
        return _mapColumnHeaderLevel(index);
      case "machine":
        return _mapColumnHeaderMachines(index);
      case "egg":
        return _mapColumnHeaderStandard(index);
      case "tutor":
        return _mapColumnHeaderStandard(index);
      case "form-change":
        return _mapColumnHeaderStandard(index);
      default:
        return "";
    }
  }

  String _mapValueLevel(
    MoveEntity move,
    MoveDetailEntity moveDetail,
    int column,
  ) {
    switch (column) {
      case 0:
        return move.versionGroupDetails != null &&
                move.versionGroupDetails!.isNotEmpty
            ? move.versionGroupDetails!.first.levelLearnedAt.toString()
            : "-";
      case 1:
        return move.move?.name?.replaceAll("-", " ").capitalizeMultipleWords() ?? "";
      case 2:
        return moveDetail.type?.name ?? "";
      case 3:
        return moveDetail.damageClass?.name?.capitalizeMultipleWords() ?? "";
      case 4:
        return moveDetail.power?.toString() ?? "-";
      case 5:
        return moveDetail.accuracy?.toString() ?? "-";
      default:
        return "";
    }
  }

  String _mapValueMachine(
    MoveEntity move,
    MoveDetailEntity moveDetail,
    int column,
  ) {
    switch (column) {
      case 0:
        return "TM";
      case 1:
        return move.move?.name?.replaceAll("-", " ").capitalizeMultipleWords() ?? "";
      case 2:
        return moveDetail.type?.name ?? "";
      case 3:
        return moveDetail.damageClass?.name?.capitalizeMultipleWords() ?? "";
      case 4:
        return moveDetail.power?.toString() ?? "-";
      case 5:
        return moveDetail.accuracy?.toString() ?? "-";
      default:
        return "";
    }
  }

  String _moveValueStandard(
    MoveEntity move,
    MoveDetailEntity moveDetail,
    int column,
  ) {
    switch (column) {
      case 0:
        return move.move?.name?.replaceAll("-", " ").capitalizeMultipleWords() ?? "";
      case 1:
        return moveDetail.type?.name ?? "";
      case 2:
        return moveDetail.damageClass?.name?.capitalizeMultipleWords() ?? "";
      case 3:
        return moveDetail.power?.toString() ?? "-";
      case 4:
        return moveDetail.accuracy?.toString() ?? "-";
      default:
        return "";
    }
  }

  String mapValueText(
    MoveEntity move,
    MoveDetailEntity moveDetail,
    int column,
  ) {
    switch (widget.type) {
      case "level-up":
        return _mapValueLevel(move, moveDetail, column);
      case "machine":
        return _mapValueMachine(move, moveDetail, column);
      case "egg":
        return _moveValueStandard(move, moveDetail, column);
      case "tutor":
        return _moveValueStandard(move, moveDetail, column);
      case "form-change":
        return _moveValueStandard(move, moveDetail, column);
      default:
        return "";
    }
  }

  void loadMoveDetail() async {
    final List<String> moveIds = widget.moves
        .map((e) => HelperUtils.instance.parseUrlId(e.move?.url ?? ""))
        .toList();
    context.read<GetPokemonMovesBloc>().getPokemonMoves(moveIds);
  }

  List<TableColumn> getTableColumn() {
    final screenWidth = MediaQuery.of(context).size.width;
    final padding = AppSetting.setWidth(40);
    final tableWidth = screenWidth - (padding * 2);
    final columnWidth = tableWidth / 5;

    if (widget.type == "level-up" || widget.type == "machine") {
      return [
        TableColumn(
          width: columnWidth,
        ),
        TableColumn(
          width: columnWidth + 80,
        ),
        TableColumn(
          width: columnWidth,
        ),
        TableColumn(
          width: columnWidth + 20,
        ),
        TableColumn(
          width: columnWidth,
        ),
        TableColumn(
          width: columnWidth,
        ),
      ];
    } else {
      return [
        TableColumn(
          width: columnWidth + 80,
        ),
        TableColumn(
          width: columnWidth,
        ),
        TableColumn(
          width: columnWidth + 20,
        ),
        TableColumn(
          width: columnWidth,
        ),
        TableColumn(
          width: columnWidth,
        ),
      ];
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      loadMoveDetail();
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetPokemonMovesBloc, GetPokemonMovesState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const LoadingListView(),
          loading: () => const LoadingListView(),
          loaded: (moves) {
            return TableView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrapVertical: true,
              columns: getTableColumn(),
              rowCount: widget.moves.length + 1,

              /// +1 untuk header
              rowHeight: AppSetting.setHeight(130),
              rowBuilder: (context, row, contentBuilder) {
                return Material(
                  type: MaterialType.transparency,
                  child: Container(
                    decoration: BoxDecoration(
                      color: row == 0
                          ? MyTheme.color.primary
                          : MyTheme.color.containerColor,
                      border: Border(
                        bottom: BorderSide(
                          color: AppSetting.isDark
                              ? MyTheme.color.white.withValues(alpha: 0.1)
                              : Colors.grey[200]!,
                          width: 1,
                        ),
                      ),
                    ),
                    child: contentBuilder(context, (context, column) {
                      /// Header row
                      if (row == 0) {
                        return Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: AppSetting.setWidth(40),
                            vertical: AppSetting.setHeight(20),
                          ),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            mapColumnHeader(column),
                            style: MyTheme.style.title.copyWith(
                              color: MyTheme.color.white,
                              fontSize: AppSetting.setFontSize(35),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      }
                      /// Data rows
                      else {
                        final dataIndex = row - 1;
                        
                        if (dataIndex < widget.moves.length) {
                          final move = widget.moves[dataIndex];
                          
                          // Find the corresponding move detail by matching move name/url
                          final moveId = HelperUtils.instance.parseUrlId(move.move?.url ?? "");
                          final moveDetail = moves.firstWhere(
                            (detail) => detail.id.toString() == moveId,
                            orElse: () {
                              return MoveDetailEntity();
                            },
                          );
                          String text = mapValueText(
                            move,
                            moveDetail,
                            column,
                          );
                          if (column == (widget.type == "level-up" || widget.type == "machine" ? 2 : 1)) {
                            /// IMAGE TYPE column
                            return FittedBox(
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: ColorUtils.instance.mapTypeColor(text),
                                ),
                                margin: .symmetric(
                                  horizontal: AppSetting.setWidth(10),
                                  vertical: AppSetting.setHeight(10),
                                ),
                                alignment: Alignment.centerLeft,
                                child: Center(
                                  child: Padding(
                                    padding: .symmetric(
                                      horizontal: AppSetting.setWidth(30),
                                      vertical: AppSetting.setHeight(30),
                                    ),
                                    child: Image.asset(
                                      IconUtils.instance.mapIconType(text),
                                      width: AppSetting.setWidth(60),
                                      height: AppSetting.setHeight(60),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          } else {
                            /// OTHER COLUMNS
                            return Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: AppSetting.setWidth(40),
                                vertical: AppSetting.setHeight(20),
                              ),
                              child: Text(
                                text,
                                style: MyTheme.style.subtitle.copyWith(
                                  color: MyTheme.color.blackWhite,
                                  fontSize: AppSetting.setFontSize(35),
                                ),
                              ),
                            );
                          }
                        }
                      }

                      return Container();
                    }),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
