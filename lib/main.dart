import 'package:app_pokedex/services/service_locator.dart';
import 'package:app_pokedex/views/login_page.dart';
import 'package:flutter/material.dart';

void main() {

  serviceLocator();

  runApp(
    const MaterialApp(
      home:LoginPage(),
      debugShowCheckedModeBanner: false,
    )
  );
}