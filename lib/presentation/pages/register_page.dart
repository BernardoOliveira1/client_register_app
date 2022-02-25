import 'package:client_register_app/application/register_controller.dart';
import 'package:client_register_app/domain/core/value_objects.dart';
import 'package:client_register_app/domain/i_repository.dart';
import 'package:client_register_app/presentation/widgets/register_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

class RegisterPage extends HookWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final _controller =
        Get.put(RegisterController(GetIt.I.get<IClientRepository>()));
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Center(child: Text('Cadastro')),
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(
                height: 40,
              ),
              Obx(
                () => RegisterTextField(
                  labelText: 'Matrícula',
                  hintText: 'Digite a Matrícula',
                  maxLength: 5,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(5),
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                  ],
                  controller:
                      _controller.registrationCodeTextEditingController.value,
                  onChanged: (value) => _controller.registrationCode.value =
                      RegistrationCode.fromSafeString(value),
                  onFieldSubmitted: (_) {
                    _controller.showRegistrationCodeValueFailure.value = true;
                  },
                  validator: _controller.registrationCode.value != null
                      ? _controller.registrationCode.value!.value.fold(
                          (f) => 'Deve conter 5 dígitos',
                          (_) => null,
                        )
                      : null,
                  autoValidate:
                      _controller.showRegistrationCodeValueFailure.value
                          ? AutovalidateMode.always
                          : AutovalidateMode.disabled,
                ),
              ),
              Obx(
                () => RegisterTextField(
                  labelText: 'CPF',
                  hintText: 'Digite o CPF',
                  maxLength: 11,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(11),
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                  ],
                  keyboardType: TextInputType.number,
                  controller: _controller.cpfTextEditingController.value,
                  onChanged: (value) =>
                      _controller.cpf.value = CPF.fromSafeString(value),
                  onFieldSubmitted: (_) {
                    _controller.showCPFValueFailure.value = true;
                  },
                  validator: _controller.cpf.value != null
                      ? _controller.cpf.value!.value.fold(
                          (f) => 'Deve conter 11 dígitos',
                          (_) => null,
                        )
                      : null,
                  autoValidate: _controller.showCPFValueFailure.value
                      ? AutovalidateMode.always
                      : AutovalidateMode.disabled,
                ),
              ),
              Obx(
                () => RegisterTextField(
                  labelText: 'E-mail',
                  hintText: 'Digite o E-mail',
                  maxLength: 50,
                  keyboardType: TextInputType.emailAddress,
                  controller: _controller.emailTextEditingController.value,
                  onChanged: (value) =>
                      _controller.email.value = Email.fromSafeString(value),
                  onFieldSubmitted: (_) {
                    _controller.showEmailValueFailure.value = true;
                  },
                  validator: _controller.email.value != null
                      ? _controller.email.value!.value.fold(
                          (f) =>
                              'Deve conter um email válido. Ex: josesilva@gmail.com',
                          (_) => null,
                        )
                      : null,
                  autoValidate: _controller.showEmailValueFailure.value
                      ? AutovalidateMode.always
                      : AutovalidateMode.disabled,
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(
                        BorderSide(
                          width: mediaQuery.size.width * (1.2 / 360),
                          color: Colors.blue,
                        ),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(mediaQuery.size.width * (9 / 360)),
                          ),
                        ),
                      ),
                    ),
                    onPressed: () async {
                      _controller.finishRegister();
                    },
                    child: SizedBox(
                      height: mediaQuery.size.width * 0.1,
                      child: Center(
                        child: Text(
                          'Cadastrar',
                          style: TextStyle(
                            fontSize: mediaQuery.size.width * (18 / 360),
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Flexible(
                child: SizedBox(
                  height: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
