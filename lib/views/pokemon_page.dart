import 'package:app_pokedex/controllers/pokemon_controller.dart';
import 'package:app_pokedex/models/pokemon.dart';
import 'package:app_pokedex/widgets/custom_container.dart';
import 'package:app_pokedex/widgets/type_wiget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class PokemonPage extends StatefulWidget {

  final Pokemon pokemon;
  const PokemonPage(this.pokemon , {Key? key}) : super(key: key);
  
  @override
  State<PokemonPage> createState() => _PokemonPageState();
}

class _PokemonPageState extends State<PokemonPage> {

    var pokemonController = PokemonController();

    @override
  void initState() {  
    pokemonController.updatePadValue();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height - AppBar().preferredSize.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.pokemon.baseColor,
        title: Text(
          widget.pokemon.name,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
      ) ,
      body: Stack(
        children: <Widget> [
          
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.topCenter,
            color: Colors.white,
          ),
        
          Padding(
            padding: const EdgeInsets.only(top: 170),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: widget.pokemon.baseColor
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget> [
                  Column(
                    children: <Widget> [
                      Container(
                        height: height * 0.35,
                        width: width * 0.27,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.white.withOpacity(0.8)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget> [
                            const Text("Type:", style: TextStyle(fontWeight: FontWeight.bold)),
                            for(var type in widget.pokemon.type) Text(
                              type, 
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                                )
                              ),
                          ],
                        ),
                      ),
                      SizedBox(height: height * 0.03,),
                      CustomContainer(child: "Height: ${widget.pokemon.height}",
                        color: Colors.white.withOpacity(0.7),
                      ),
                      SizedBox(height:  height * 0.03,),
                      CustomContainer(child: "Weight: ${widget.pokemon.weight}",
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ]
                  ),

                  Column(
                    children: <Widget> [
                      Container(
                        height: height * 0.35,
                        width: width * 0.27,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.white.withOpacity(0.8)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget> [
                            const Text("Weaknesses:", style: TextStyle(fontWeight: FontWeight.bold)),
                            for(var weak in widget.pokemon.weaknesses) Text(
                              weak, 
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                                )
                              ),
                          ],
                        ),
                      ),
                      SizedBox(height:  height * 0.03,),
                      CustomContainer(child: "Spawn: ${widget.pokemon.spawnChance}",
                        color: Colors.white.withOpacity(0.7),
                      ),
                      SizedBox(height:  height * 0.03,),
                      CustomContainer(child: "Avg Spawn: ${widget.pokemon.avgSpawns}",
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ]
                  )
                ],
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Observer(
                 builder: (_) => 
                AnimatedPadding(
                  padding: EdgeInsets.only(top: pokemonController.padValue), 
                  duration: const Duration(seconds: 2),
                  curve: Curves.bounceOut,
                  child: Container(
                    height: height * 0.25,
                    width: width * 0.43,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(image: NetworkImage(widget.pokemon.image)),
                      borderRadius: BorderRadius.circular(70)
                    ),
                  ),
                )
              ),
            ],
          ),


        ],
      )
    );
  }
}