import 'package:client_register_app/domain/client.dart';
import 'package:client_register_app/domain/core/value_objects.dart';
import 'package:client_register_app/domain/i_repository.dart';
import 'package:client_register_app/presentation/widgets/message.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  RegisterController(
    this._clientRepository,
  );

  final IClientRepository _clientRepository;

  final cpf = Rxn<CPF>();
  final email = Rxn<Email>();
  final registrationCode = Rxn<RegistrationCode>();
  final cpfTextEditingController = Rx(TextEditingController());
  final emailTextEditingController = Rx(TextEditingController());
  final registrationCodeTextEditingController = Rx(TextEditingController());
  final showCPFValueFailure = RxBool(false);
  final showEmailValueFailure = RxBool(false);
  final showRegistrationCodeValueFailure = RxBool(false);

  void finishRegister() {
    final client = _buildClient();
    createClientDoc(client);
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
        message: 'Cliente adicionado ao banco de dados',
        color: Colors.green);
  }

  void _failure() {
    showMessage(Get.context!,
        title: 'Algo deu errado',
        message:
            'Tente novamente!\nCPF deve ter 11 dígitos\nMatrícula deve ter 5 dígitos\nEmail deve ser válido',
        color: Colors.red);
  }

  Future<void> createClientDoc(Client client) async {
    if (client.isValid()) {
      await _clientRepository.create(client).then(
            (value) => value.fold(
              (l) => _failure(),
              (r) => _success(),
            ),
          );
    } else {
      _failure();
    }
  }
}
