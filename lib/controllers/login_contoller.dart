import 'package:flutter/cupertino.dart';

class LoginController {
  var controllerUsuario = TextEditingController();
  var controllerSenha = TextEditingController();
  String nome = '';

  setNome(){
    nome = controllerUsuario.text;
  }

  resetTextsFields(){
    controllerUsuario.text = '';
    controllerSenha.text = '';
  }

}