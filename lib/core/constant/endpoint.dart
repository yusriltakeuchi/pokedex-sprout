class Endpoint {

  /// BASE URL
  static const baseUrl = "https://pokeapi.co/api/v2";

  /// POKEMON ENDPOINT
  static const getPokemons = "/pokemon";
  static const getPokemon = "/pokemon/{name}";
  /// SPECIES ENDPOINT
  static const getSpecies = "/pokemon-species/{id}";
  /// TYPE ENDPOINT
  static const getType = "/type/{id}";
  /// EVOLUTION CHAIN ENDPOINT
  static const getEvolutionChain = "/evolution-chain/{id}";
}