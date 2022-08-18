import 'package:app_pokedex/controllers/login_contoller.dart';
import 'package:flutter/material.dart';
class ProfileContainer extends StatelessWidget {

  String nome;

  ProfileContainer(this.nome, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.white,
      padding:const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget> [

          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.black.withOpacity(0.5)
            ),
            child: const Icon(Icons.person, size: 70,),
          ),

          Text(
            nome,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30
            ),
          ),

          ElevatedButton(
            onPressed: (){
              Navigator.of(context).popUntil((route) => route.isFirst);
            }, 
            child: const Text("Logout"),
            style: ElevatedButton.styleFrom(
              primary: Colors.black.withOpacity(0.5)
            )
          )
        ],
      ),
    );
  }
}