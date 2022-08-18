import 'package:app_pokedex/controllers/login_contoller.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

serviceLocator() {
  getIt.registerLazySingleton<LoginController>(() => LoginController());
}