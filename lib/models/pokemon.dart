

import 'package:flutter/material.dart';

class Pokemon {

  String num;
  String name;
  String image;
  List <String> type;
  String height;
  String weight;
  double spawnChance;
  double avgSpawns;
  List <String> weaknesses;

  Pokemon(
    this.num,
    this.name,
    this.image,
    this.type,
    this.height,
    this.weight,
    this.spawnChance,
    this.avgSpawns,
    this.weaknesses
  );

  //Getter que chama o _color passando o primeiro tipo
  Color? get baseColor => _color(type: type[0]);

  factory Pokemon.fromJson(Map <String, dynamic> json){

    if (json["name"] == "Nidoran ♀ (Female)"){
      json["name"] = "Nidoran ♀";
    }

     if (json["name"] == "Nidoran ♂ (Male)"){
      json["name"] = "Nidoran ♂ ";
    }

    

    return Pokemon(
      json["num"], 
      json["name"], 
      json["img"], 
      (json['type'] as List<dynamic>)
          .map(
            (element) => element as String,
          )
          .toList(),
      json["height"],
      json["weight"],
      json["spawn_chance"] * 1.0,
      json["avg_spawns"] *1.0,
      (json["weaknesses"] as List<dynamic>)
        .map(
          (e) => e as String
        ).toList()
    );
  }

/*json["height"],
      json["weight"],
      json["spawn_chance"],
      (json["weaknesses"] as List<dynamic>)
        .map(
          (e) => e as String
        ).toList()*/

  static Color? _color({required String type}) {
    switch (type) {
      case 'Normal':
        return Colors.brown[400];
      case 'Fire':
        return Colors.red;
      case 'Water':
        return Colors.blue;
      case 'Grass':
        return Colors.green;
      case 'Electric':
        return Colors.amber;
      case 'Ice':
        return Colors.cyanAccent[400];
      case 'Fighting':
        return Colors.orange;
      case 'Poison':
        return Colors.purple;
      case 'Ground':
        return Colors.orange[300];
      case 'Flying':
        return Colors.indigo[200];
      case 'Psychic':
        return Colors.pink;
      case 'Bug':
        return Colors.lightGreen[500];
      case 'Rock':
        return Colors.grey;
      case 'Ghost':
        return Colors.indigo[400];
      case 'Dark':
        return Colors.brown;
      case 'Dragon':
        return Colors.indigo[800];
      case 'Steel':
        return Colors.blueGrey;
      case 'Fairy':
        return Colors.pinkAccent[100];
      default:
        return Colors.grey;
      }
    }
  
}