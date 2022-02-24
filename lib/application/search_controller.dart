import 'package:client_register_app/domain/client.dart';
import 'package:client_register_app/domain/core/failure.dart';
import 'package:client_register_app/domain/i_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';

class SearchController extends GetxController with StateMixin {
  SearchController(
    this._clientRepository,
  );

  final IClientRepository _clientRepository;

  final clients = Rxn<List<Either<ClientFailure, Client>>>();

  @override
  void onInit() {
    super.onInit();
    _getAllData();
  }

  void _getAllData() async {
    final clientList = await _clientRepository.getAll();
    clientList.fold(
      (l) => null,
      (r) => clients.value = r,
    );
  }
}
