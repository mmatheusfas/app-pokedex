import 'package:app_pokedex/models/pokemon.dart';
import 'package:app_pokedex/views/pokemon_page.dart';
import 'package:app_pokedex/widgets/type_wiget.dart';
import 'package:flutter/material.dart';

class PokemonCustomCard extends StatelessWidget {
   
  Pokemon pokemon;
  
  PokemonCustomCard(this.pokemon, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height -  AppBar().preferredSize.height;
     

    return GestureDetector(
        onTap: (){
          Navigator.push(
            context, 
            MaterialPageRoute(builder: (context) => PokemonPage(pokemon))
          );
        },
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: pokemon.baseColor!.withOpacity(0.8),
                borderRadius: BorderRadius.circular(16)
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(3, 16, 0, 16),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          pokemon.name,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),

                        Text(
                          ("#${pokemon.num}"),
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 13),
                        ),
                      ],
                    ),

                    SizedBox(height: height * 0.025,),

                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            for(var type in pokemon.type) TypeWidget(type),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              right: 2,
              bottom: 12,
              child: Image(image: NetworkImage(pokemon.image), height: height * 0.17,)
            )
          ]
        ) ,
      );
  }
}