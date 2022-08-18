import 'package:app_pokedex/controllers/home_controller_mobx.dart';
import 'package:app_pokedex/controllers/login_contoller.dart';
import 'package:app_pokedex/models/pokemon.dart';
import 'package:app_pokedex/services/service_locator.dart';
import 'package:app_pokedex/widgets/pokemon_custom_card.dart';
import 'package:app_pokedex/widgets/profile_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lottie/lottie.dart';
import 'package:mobx/mobx.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var homeController = HomeControllerMobx();
  var loginController = getIt<LoginController>();

  @override
  void initState() {
    homeController.changeLoading();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height - AppBar().preferredSize.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              showModalBottomSheet(
                context: context, 
                builder: (context){
                  return ProfileContainer(loginController.nome);
                }
              );
            }, 
            icon: const Icon(Icons.person, size: 35, color: Colors.black,)
          ),
        elevation: 0,
        title: const Text(
          "POKEDEX",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
        ) ,
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Observer(
        builder:(context){

          if (homeController.loading){
            return Center(child: Container(
              height: height * 0.3,
              width: width * 0.3,
              child: Lottie.network(
                "https://assets3.lottiefiles.com/packages/lf20_iwmd6pyr.json"
                )
              )
            );
          }else{
            
            if (homeController.pokemons!.status == FutureStatus.rejected){
               return Center( child: Text("Errror"),);
            }

            if (homeController.pokemons!.status == FutureStatus.fulfilled){
              return Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12 
                  ),
                  itemCount: homeController.pokemons!.value!.length, 
                  itemBuilder: (context, index){
                    Pokemon pokemon = homeController.pokemons!.value![index];
                    return PokemonCustomCard(pokemon);
                  }
                ),
              );      
            }  
          }
            
        return const Text("");
      
        }
      )
    );
  }
      
      /*  FutureBuilder <List<Pokemon>>(
        future: homeController.getApi(),
        builder: ((context, snapshot) {

          if (snapshot.hasError){
            return const Center( child: Text("Errror"),);
          }

          if (!snapshot.hasData) {
            return Center(child: Container(
              height: 100,
              width: 100,
              child: Lottie.network(
                "https://assets3.lottiefiles.com/packages/lf20_iwmd6pyr.json"
              )
            ));
          }

          List<Pokemon>? pokemons = snapshot.data;

          return Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12 
              ),
              itemCount: pokemons!.length, 
              itemBuilder: (context, index){
                Pokemon pokemon = pokemons[index];
                return PokemonCustomCard(pokemon);
              }
            ),
          );

         })
      ) */
 
}