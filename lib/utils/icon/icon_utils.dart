import 'package:flutter/cupertino.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class IconUtils {
  static final IconUtils _instance = IconUtils._internal();

  // Private constructor
  IconUtils._internal();

  // Public getter for accessing the instance
  static IconUtils get instance => _instance;

  IconData mapIconType(String name) {
    /// Using lucide_icons_flutter
    // LucideIcons.
    switch (name.toLowerCase()) {
      case 'normal':
        return LucideIcons.circle;
      case 'fighting':
        return LucideIcons.handFist;
      case 'flying':
        return LucideIcons.feather;
      case 'poison':
        return LucideIcons.skull;
      case 'ground':
        return LucideIcons.mountain;
      case 'rock':
        return LucideIcons.circle;
      case 'bug':
        return LucideIcons.bug;
      case 'ghost':
        return LucideIcons.ghost;
      case 'steel':
        return LucideIcons.shield;
      case 'fire':
        return LucideIcons.flame;
      case 'water':
        return LucideIcons.droplet;
      case 'grass':
        return LucideIcons.leaf;
      case 'electric':
        return LucideIcons.zap;
      case 'psychic':
        return LucideIcons.brain;
      case 'ice':
        return LucideIcons.snowflake;
      case 'dragon':
        return LucideIcons.pawPrint;
      case 'dark':
        return LucideIcons.moon;
      case 'fairy':
        return LucideIcons.wand;
      case 'stellar':
        return LucideIcons.star;
      case 'unknown':
        return LucideIcons.badgeQuestionMark;
      case 'shadow':
        return LucideIcons.eyeOff;
      default:
        return LucideIcons.badgeQuestionMark;
    }
  }
}