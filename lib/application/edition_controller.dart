import 'package:client_register_app/domain/client.dart';
import 'package:client_register_app/domain/core/value_objects.dart';
import 'package:client_register_app/domain/i_repository.dart';
import 'package:client_register_app/presentation/widgets/message.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditionController extends GetxController {
  EditionController(
    this._clientRepository,
    this.client,
  );

  final IClientRepository _clientRepository;
  final Client client;

  final cpf = Rxn<CPF>();
  final email = Rxn<Email>();
  final registrationCode = Rxn<RegistrationCode>();

  final cpfTextEditingController = Rx(TextEditingController());
  final emailTextEditingController = Rx(TextEditingController());
  final registrationCodeTextEditingController = Rx(TextEditingController());
  final showCPFValueFailure = RxBool(false);
  final showEmailValueFailure = RxBool(false);
  final showRegistrationCodeValueFailure = RxBool(false);

  @override
  void onInit() {
    super.onInit();
    cpfTextEditingController.value =
        TextEditingController(text: client.cpf.getOrCrash());
    cpf.value = CPF.fromSafeString(client.cpf.getOrCrash());
    emailTextEditingController.value =
        TextEditingController(text: client.email.getOrCrash());
    email.value = Email.fromSafeString(client.email.getOrCrash());
    registrationCodeTextEditingController.value =
        TextEditingController(text: client.registrationCode.getOrCrash());
    registrationCode.value =
        RegistrationCode.fromSafeString(client.registrationCode.getOrCrash());
  }

  void updateClient() {
    final client = _buildClient();
    updateClientDoc(client);
  }

  Client _buildClient() {
    return Client(
      registrationCode: registrationCode.value!,
      cpf: cpf.value!,
      email: email.value!,
    );
  }

  void _success() {
    cpf.value = null;
    email.value = null;
    registrationCode.value = null;
    cpfTextEditingController.value.clear();
    emailTextEditingController.value.clear();
    registrationCodeTextEditingController.value.clear();
    showMessage(Get.context!,
        title: 'Operação Bem Sucedida',
        message: 'Cliente atualizado no banco de dados',
        color: Colors.green);
  }

  void _failure() {
    showMessage(Get.context!,
        title: 'Algo deu errado',
        message:
            'Tente novamente!\nCPF deve ter 11 dígitos\nMatrícula deve ter 5 dígitos\nEmail deve ser válido',
        color: Colors.red);
  }

  Future<void> updateClientDoc(Client client) async {
    if (client.isValid()) {
      await _clientRepository.update(client).then(
            (value) => value.fold(
              (l) => _failure(),
              (r) => _success(),
            ),
          );
    } else {
      _failure();
    }
  }

  Future<void> deleteClient(Client client) async {
    await _clientRepository.delete(client).then(
          (value) => value.fold(
            (l) => _failure(),
            (r) => _success(),
          ),
        );
  }
}
