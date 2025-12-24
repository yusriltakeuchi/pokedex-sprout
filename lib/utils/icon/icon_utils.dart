import 'package:pokedex/gen/assets.gen.dart';

class IconUtils {
  static final IconUtils _instance = IconUtils._internal();

  // Private constructor
  IconUtils._internal();

  // Public getter for accessing the instance
  static IconUtils get instance => _instance;

  String mapIconType(String name) {
    /// Using lucide_icons_flutter
    // LucideIcons.
    switch (name.toLowerCase()) {
      case 'normal':
        return Assets.icons.pokemonsTypes.fighting.path;
      case 'fighting':
        return Assets.icons.pokemonsTypes.fighting.path;
      case 'flying':
        return Assets.icons.pokemonsTypes.flying.path;
      case 'poison':
        return Assets.icons.pokemonsTypes.poison.path;
      case 'ground':
        return Assets.icons.pokemonsTypes.ground.path;
      case 'rock':
        return Assets.icons.pokemonsTypes.rock.path;
      case 'bug':
        return Assets.icons.pokemonsTypes.bug.path;
      case 'ghost':
        return Assets.icons.pokemonsTypes.ghost.path;
      case 'steel':
        return Assets.icons.pokemonsTypes.steel.path;
      case 'fire':
        return Assets.icons.pokemonsTypes.fire.path;
      case 'water':
        return Assets.icons.pokemonsTypes.water.path;
      case 'grass':
        return Assets.icons.pokemonsTypes.grass.path;
      case 'electric':
        return Assets.icons.pokemonsTypes.electric.path;
      case 'psychic':
        return Assets.icons.pokemonsTypes.psychic.path;
      case 'ice':
        return Assets.icons.pokemonsTypes.ice.path;
      case 'dragon':
        return Assets.icons.pokemonsTypes.dragon.path;
      case 'dark':
        return Assets.icons.pokemonsTypes.dark.path;
      case 'fairy':
        return Assets.icons.pokemonsTypes.fairy.path;
      case 'stellar':
        return Assets.icons.pokemonsTypes.stellar.path;
      case 'unknown':
        return Assets.icons.pokemonsTypes.unknown.path;
      case 'shadow':
        return Assets.icons.pokemonsTypes.shadow.path;
      default:
        return Assets.icons.pokemonsTypes.fighting.path;
    }
  }
}