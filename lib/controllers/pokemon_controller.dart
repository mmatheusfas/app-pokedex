import 'package:mobx/mobx.dart';
part 'pokemon_controller.g.dart';

class PokemonController = _PokemonControllerBase with _$PokemonController;

abstract class _PokemonControllerBase with Store {

  @observable
  double padValue = 8;

  @action
  updatePadValue() async{
    await Future.delayed(const Duration(seconds: 2));
    padValue = 65;
  }

  @action
  resetPadValue(){
    padValue = 50;
  }  
}