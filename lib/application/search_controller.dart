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
  final _clientsFromRepository =
      Rxn<Either<ClientFailure, List<Either<ClientFailure, Client>>>>();
  final clientList = Rxn<List<Either<ClientFailure, Client>>>();

  @override
  void onInit() {
    super.onInit();
    change(null, status: RxStatus.loading());
    _clientsFromRepository.bindStream(_clientRepository.watchAll());
    ever(
      _clientsFromRepository,
      (_) => change(
        _clientsFromRepository.value,
        status: _clientsFromRepository.value != null
            ? _clientsFromRepository.value!.fold(
                (l) => l == const ClientFailure.clientNotFound()
                    ? RxStatus.empty()
                    : RxStatus.error(l.toString()),
                (clients) {
                  clientList.value = clients;
                  return RxStatus.success();
                },
              )
            : RxStatus.error(const ClientFailure.unknownError().toString()),
      ),
    );
  }
}
