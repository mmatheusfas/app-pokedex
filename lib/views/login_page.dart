import 'package:app_pokedex/controllers/login_contoller.dart';
import 'package:app_pokedex/services/service_locator.dart';
import 'package:app_pokedex/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class LoginPage extends StatelessWidget {
  
  
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var loginController = getIt<LoginController>();

    return Scaffold(
      appBar: AppBar(
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
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: <Widget> [
            Container(
              child: Lottie.network(
                "https://assets1.lottiefiles.com/packages/lf20_mrg9xhbm.json"
              ),
            ),

            TextField(
              controller: loginController.controllerUsuario,
              decoration:  const InputDecoration(
                //label: const Text("Usuario"),
                labelText: "Ex: mmatheusfas"
              ),
            ),
            TextField(
              controller: loginController.controllerSenha,
              obscureText: true,
              decoration: const InputDecoration(
                //label: const Text("Senha"),
                labelText: "Ex: 123456"
              ),
            ),

            ElevatedButton(
              onPressed: (){
                loginController.setNome();
                  Future navegacao = Navigator.push(
                    context,
                    MaterialPageRoute(builder: ((context) => HomePage())
                    )
                  );
                  navegacao.then((value) => loginController.resetTextsFields());
              }, 
              child: const Text("Login")
            )
          ],
        ),
      ),
    );
  }
}