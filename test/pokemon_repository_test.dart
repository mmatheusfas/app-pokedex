import 'package:app_pokedex/models/pokemon.dart';
import 'package:app_pokedex/repository/pokemon_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  final PokemonRepository pokemonRep = PokemonRepository();
  
  test("Testar se o metodo getPokemons está funcionando certo", () async{

    final List<Pokemon> pokemons = await pokemonRep.getPokemons();

    expect(pokemons, isNotEmpty);
  });
}