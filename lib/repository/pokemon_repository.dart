import 'dart:convert';
import 'package:app_pokedex/models/pokemon.dart';
import 'package:http/http.dart' as htpp;

const URL_BASE ="https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";

class PokemonRepository {

  Future <List<Pokemon>> getPokemons() async{

    var url = Uri.parse(URL_BASE);
    var response = await htpp.get(url, headers: {
      'Content-type': 'application/json; charset=UTF-8',
    });

    if (response.statusCode == 200){
      
      Map <String, dynamic> dadosJson= jsonDecode(response.body);

      try {
        List <Pokemon> pokemons = dadosJson["pokemon"].map<Pokemon>(
          (map){
            return Pokemon.fromJson(map);
          }
        ).toList();

        return pokemons;

      } catch (e) {
        throw Exception();
      }
    }

    throw Exception();

  }
  
}