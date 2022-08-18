import 'package:app_pokedex/models/pokemon.dart';
import 'package:app_pokedex/repository/pokemon_repository.dart';

class HomeController {
  
  var pokemonRep = PokemonRepository();


  Future<List<Pokemon>> getApi() async{
    try {
      await Future.delayed(const Duration(seconds: 7));
      return pokemonRep.getPokemons();
    } catch (e) {
      throw Exception();
    }
  }


}