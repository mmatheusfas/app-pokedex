import 'package:app_pokedex/models/pokemon.dart';
import 'package:app_pokedex/repository/pokemon_repository.dart';
import 'package:mobx/mobx.dart';
part 'home_controller_mobx.g.dart';

class HomeControllerMobx = _HomeControllerMobxBase with _$HomeControllerMobx;

abstract class _HomeControllerMobxBase with Store {

  var repository = PokemonRepository();
  
  @observable
  ObservableFuture <List<Pokemon>>? pokemons;

  @observable
  bool loading = true;

  @action
  getPokemons() async{
    try {
      pokemons = ObservableFuture(repository.getPokemons());
    } catch (e) {
      throw Exception();
    }
  }

  @action
  changeLoading() async {
    await Future.delayed(const Duration(seconds: 5));
    getPokemons();
    loading = false;
  }

}