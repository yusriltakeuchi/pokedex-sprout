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
          title: "Moves learn by level up",
          onClick: () => onChangeIndex(0),
          isExpand: selectedIndex == 0,
          child: _MoveSections(
            moves: getMovesByName("level-up"),
            type: "level-up",
          ),
        ),
        ExpandableItem(
          title: "Moves learn by Technical Machines",
          onClick: () => onChangeIndex(1),
          isExpand: selectedIndex == 1,
          child: _MoveSections(
            moves: getMovesByName("machine"),
            type: "machine",
          ),
        ),
        ExpandableItem(
          title: "Moves learn by breeding",
          onClick: () => onChangeIndex(2),
          isExpand: selectedIndex == 2,
          child: _MoveSections(moves: getMovesByName("egg"), type: "egg"),
        ),
        ExpandableItem(
          title: "Moves learn from Move Tutor",
          onClick: () => onChangeIndex(3),
          isExpand: selectedIndex == 3,
          child: _MoveSections(moves: getMovesByName("tutor"), type: "tutor"),
        ),
        ExpandableItem(
          title: "Moves learn by form change",
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
    final padding = AppSetting.setWidth(30);
    final tableWidth = screenWidth - (padding * 2);

    if (widget.type == "level-up" || widget.type == "machine") {
      // Lv/TM | Move | Type | Cat | Power | Acc
      return [
        TableColumn(width: tableWidth * 0.12), // Lv/TM - smaller
        TableColumn(width: tableWidth * 0.26), // Move name - reduced
        TableColumn(width: tableWidth * 0.12), // Type
        TableColumn(width: tableWidth * 0.16), // Category
        TableColumn(width: tableWidth * 0.14), // Power
        TableColumn(width: tableWidth * 0.14), // Accuracy
      ];
    } else {
      // Move | Type | Cat | Power | Acc
      return [
        TableColumn(width: tableWidth * 0.30), // Move name - reduced
        TableColumn(width: tableWidth * 0.18), // Type
        TableColumn(width: tableWidth * 0.20), // Category
        TableColumn(width: tableWidth * 0.16), // Power
        TableColumn(width: tableWidth * 0.16), // Accuracy
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
          loaded: (loadedMoves) {
            // Validasi: pastikan bloc sudah selesai fetch semua moves
            // Jika loadedMoves kosong, berarti masih loading atau semua gagal
            if (loadedMoves.isEmpty) {
              return const LoadingListView();
            }
            
            // Create a map for quick lookup of move details by ID
            final moveDetailsMap = <String, MoveDetailEntity>{};
            for (var detail in loadedMoves) {
              if (detail.id != null) {
                moveDetailsMap[detail.id.toString()] = detail;
              }
            }
            
            // Combine widget.moves with their corresponding details
            // Only include moves that have successfully loaded details
            final List<({MoveEntity move, MoveDetailEntity detail})> combinedMoves = [];
            
            for (var move in widget.moves) {
              final moveId = HelperUtils.instance.parseUrlId(move.move?.url ?? "");
              final moveDetail = moveDetailsMap[moveId];
              
              // Only add if we have the detail data
              if (moveDetail != null && moveDetail.id != null) {
                combinedMoves.add((move: move, detail: moveDetail));
              }
            }
            
            // If no moves loaded successfully after processing, show empty state
            if (combinedMoves.isEmpty) {
              return Center(
                child: Padding(
                  padding: EdgeInsets.all(AppSetting.setWidth(40)),
                  child: Text(
                    'No moves available',
                    style: MyTheme.style.subtitle.copyWith(
                      color: MyTheme.color.blackWhite,
                    ),
                  ),
                ),
              );
            }
            
            return TableView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrapVertical: true,
              columns: getTableColumn(),
              rowCount: combinedMoves.length + 1, /// +1 untuk header
              rowHeight: AppSetting.setHeight(90), // Reduced from 130 for compact view
              rowBuilder: (context, row, contentBuilder) {
                return Material(
                  type: MaterialType.transparency,
                  child: Container(
                    decoration: BoxDecoration(
                      color: row == 0
                          ? MyTheme.color.primary
                          : (row % 2 == 0 
                              ? MyTheme.color.containerColor 
                              : MyTheme.color.containerColor.withValues(alpha: 0.5)),
                      borderRadius: row == 0 
                          ? BorderRadius.only(
                              topLeft: Radius.circular(AppSetting.setWidth(24)),
                              topRight: Radius.circular(AppSetting.setWidth(24)),
                            )
                          : null,
                      border: Border(
                        bottom: BorderSide(
                          color: AppSetting.isDark
                              ? MyTheme.color.white.withValues(alpha: 0.05)
                              : Colors.grey[300]!,
                          width: 0.5,
                        ),
                      ),
                    ),
                    child: contentBuilder(context, (context, column) {
                      /// Header row
                      if (row == 0) {
                        return Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: AppSetting.setWidth(20),
                            vertical: AppSetting.setHeight(15),
                          ),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            mapColumnHeader(column),
                            style: MyTheme.style.title.copyWith(
                              color: MyTheme.color.white,
                              fontSize: AppSetting.setFontSize(28),
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.5,
                            ),
                          ),
                        );
                      }
                      /// Data rows
                      else {
                        final dataIndex = row - 1;
                        
                        if (dataIndex < combinedMoves.length) {
                          final combinedData = combinedMoves[dataIndex];
                          final move = combinedData.move;
                          final moveDetail = combinedData.detail;
                          
                          String text = mapValueText(
                            move,
                            moveDetail,
                            column,
                          );
                          if (column == (widget.type == "level-up" || widget.type == "machine" ? 2 : 1)) {
                            /// IMAGE TYPE column - Modern compact design
                            return Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: AppSetting.setWidth(8),
                              ),
                              alignment: Alignment.centerLeft,
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: ColorUtils.instance.mapTypeColor(text),
                                  boxShadow: [
                                    BoxShadow(
                                      color: ColorUtils.instance.mapTypeColor(text).withValues(alpha: 0.3),
                                      blurRadius: 4,
                                      offset: const Offset(0, 2),
                                    ),
                                  ],
                                ),
                                padding: EdgeInsets.all(AppSetting.setWidth(18)),
                                child: Image.asset(
                                  IconUtils.instance.mapIconType(text),
                                  width: AppSetting.setWidth(42),
                                  height: AppSetting.setHeight(42),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            );
                          } else {
                            /// OTHER COLUMNS - Compact and readable
                            return Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: AppSetting.setWidth(20),
                                vertical: AppSetting.setHeight(12),
                              ),
                              alignment: column == 0 || column == 1 
                                  ? Alignment.centerLeft 
                                  : Alignment.center,
                              child: Text(
                                text,
                                style: MyTheme.style.subtitle.copyWith(
                                  color: MyTheme.color.blackWhite,
                                  fontSize: AppSetting.setFontSize(28),
                                  fontWeight: FontWeight.w500,
                                  height: 1.2,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
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
