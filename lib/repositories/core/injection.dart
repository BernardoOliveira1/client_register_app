import 'package:client_register_app/application/register_controller.dart';
import 'package:client_register_app/domain/i_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';

import '../repository.dart';

class Inject {
  static initialize() {
    GetIt getIt = GetIt.instance;

    getIt.registerLazySingleton<IClientRepository>(
        () => ClientRepository(getIt()));
    getIt.registerLazySingleton<RegisterController>(
        () => RegisterController(getIt()));
    getIt.registerLazySingleton<FirebaseFirestore>(
        () => FirebaseFirestore.instance);
  }
}
