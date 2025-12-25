
import 'dart:convert';

import 'package:pokedex/domain/entities/pokemon/pokemon_entity.dart';
import 'package:pokedex/utils/manager/shared_manager.dart';

class PokemonLocalDatasource {

  /// Fetches a list of favorite Pokémon from shared preferences
  /// using SharedManager
  Future<List<PokemonEntity>> getFavoritePokemons() async {
    try {
      final SharedManager sharedManager = SharedManager<String>();
      /// do the json decoding
      final String rawFavorite = await sharedManager.read("pokemon_favorite_items");
      if (rawFavorite.isEmpty) {
        return [];
      }
      final Map<String, dynamic> decodedMap = jsonDecode(rawFavorite);
      final List<dynamic> data = decodedMap['data'] as List;
      final List<PokemonEntity> favoritePokemons = data
          .map((e) => PokemonEntity.fromJson(e as Map<String, dynamic>))
          .toList();
      return favoritePokemons;
    } catch (e) {
      return [];
    }
  }

  /// Add new favorite Pokémon to shared preferences
  Future<void> addFavoritePokemon(PokemonEntity pokemon) async {
    final SharedManager sharedManager = SharedManager<String>();
    final List<PokemonEntity> currentFavorites = await getFavoritePokemons();
    currentFavorites.add(pokemon);
    final Map<String, dynamic> dataMap = {
      "data": currentFavorites.map((e) => e.toJson()).toList(),
    };
    final String encodedFavorites = jsonEncode(dataMap);
    await sharedManager.store("pokemon_favorite_items", encodedFavorites);
  }

  /// Remove favorite Pokémon from shared preferences
  Future<void> removeFavoritePokemon(PokemonEntity pokemon) async {
    final SharedManager sharedManager = SharedManager<String>();
    final List<PokemonEntity> currentFavorites = await getFavoritePokemons();
    currentFavorites.removeWhere((element) => element.id == pokemon.id);
    final Map<String, dynamic> dataMap = {
      "data": currentFavorites.map((e) => e.toJson()).toList(),
    };
    final String encodedFavorites = jsonEncode(dataMap);
    await sharedManager.store("pokemon_favorite_items", encodedFavorites);
  }

  Future<bool> isFavoritePokemon(PokemonEntity pokemon) async {
    final List<PokemonEntity> currentFavorites = await getFavoritePokemons();
    if (currentFavorites.isEmpty) {
      return false;
    }
    return currentFavorites.any((element) => element.id == pokemon.id);
  }
}