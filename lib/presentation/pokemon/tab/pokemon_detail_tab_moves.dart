import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_table_view/material_table_view.dart';
import 'package:pokedex/bloc/pokemon/get_pokemon_moves_bloc.dart';
import 'package:pokedex/config/app_config.dart';
import 'package:pokedex/core/components/expandable/expandable_item.dart';
import 'package:pokedex/core/components/loading/loading_listview.dart';
import 'package:pokedex/domain/entities/moves/move_detail_entity.dart';
import 'package:pokedex/domain/entities/moves/move_entity.dart';
import 'package:pokedex/theme/theme.dart';
import 'package:pokedex/utils/helper/helper_utils.dart';

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
      selectedIndex = index;
    });
  }

  List<MoveEntity> getMovesByName(String name) =>
      widget.move
          ?.where(
            (move) =>
                move.versionGroupDetails?.any(
                  (detail) => detail.moveLearnMethod?.name == name,
                ) ??
                false,
          )
          .toList() ??
      [];

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
        return move.move?.name ?? "";
      case 2:
        return moveDetail.type?.name ?? "";
      case 3:
        return moveDetail.damageClass?.name ?? "";
      case 4:
        return moveDetail.power.toString();
      case 5:
        return moveDetail.accuracy.toString();
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
        return move.move?.name ?? "";
      case 2:
        return moveDetail.type?.name ?? "";
      case 3:
        return moveDetail.damageClass?.name ?? "";
      case 4:
        return moveDetail.power.toString();
      case 5:
        return moveDetail.accuracy.toString();
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
      case 1:
        return move.move?.name ?? "";
      case 2:
        return moveDetail.type?.name ?? "";
      case 3:
        return moveDetail.damageClass?.name ?? "";
      case 4:
        return moveDetail.power.toString();
      case 5:
        return moveDetail.accuracy.toString();
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
              columns: [
                TableColumn(
                  width: AppSetting.setWidth(210),
                  freezePriority: 100,
                ),
                TableColumn(
                  width: AppSetting.setWidth(340),
                  freezePriority: 90,
                ),
                TableColumn(
                  width: AppSetting.setWidth(330),
                  freezePriority: 80,
                ),
                TableColumn(
                  width: AppSetting.setWidth(300),
                  freezePriority: 70,
                ),
                TableColumn(
                  width: AppSetting.setWidth(320),
                  freezePriority: 60,
                ),
                TableColumn(
                  width: AppSetting.setWidth(320),
                  freezePriority: 60,
                ),
              ],

              rowCount: widget.moves.length + 1,

              /// +1 untuk header
              rowHeight: AppSetting.setHeight(130),
              rowBuilder: (context, row, contentBuilder) {
                return Material(
                  type: MaterialType.transparency,
                  child: Container(
                    decoration: BoxDecoration(
                      color: row == 0
                          ? MyTheme.color.primary.withValues(alpha: 0.2)
                          : MyTheme.color.containerColor,
                      border: Border(
                        bottom: BorderSide(
                          color: AppSetting.isDark
                              ? MyTheme.color.blackWhite.withValues(alpha: 0.1)
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
                              color: MyTheme.color.blackWhite,
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
                          final moveDetail = moves[dataIndex];

                          if (column == 2) {
                            /// IMAGE TYPE column
                            return Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: AppSetting.setWidth(40),
                                vertical: AppSetting.setHeight(20),
                              ),
                              alignment: Alignment.centerLeft,
                              color: MyTheme.color.greyDark,
                            );
                          } else {
                            /// OTHER COLUMNS
                            String text = mapValueText(
                              move,
                              moveDetail,
                              column,
                            );
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
