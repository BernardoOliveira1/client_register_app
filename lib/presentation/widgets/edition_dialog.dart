import 'package:client_register_app/application/edition_controller.dart';
import 'package:client_register_app/domain/client.dart';
import 'package:client_register_app/domain/core/value_objects.dart';
import 'package:client_register_app/domain/i_repository.dart';
import 'package:client_register_app/presentation/widgets/buttons.dart';
import 'package:client_register_app/presentation/widgets/register_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

class EditionDialog extends HookWidget {
  const EditionDialog({
    Key? key,
    required this.client,
  }) : super(key: key);

  final Client client;

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context);
    final _controller =
        Get.put(EditionController(GetIt.I.get<IClientRepository>(), client));

    return Dialog(
      backgroundColor: Colors.grey.shade900,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SecondaryButton(
                  mediaQuery: _mediaQuery,
                  color: Colors.red,
                  onPressed: () {
                    _controller.deleteClient(client);
                    Get.back();
                  },
                  text: 'Excluir',
                ),
              ],
            ),
            const SizedBox(
              height: 12,
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
                validator: (_) => _controller.registrationCode.value != null
                    ? _controller.registrationCode.value!.value.fold(
                        (f) => f.toString(),
                        (_) => null,
                      )
                    : null,
                autoValidate: _controller.showRegistrationCodeValueFailure.value
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
                validator: (_) => _controller.cpf.value != null
                    ? _controller.cpf.value!.value.fold(
                        (f) => f.toString(),
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
                validator: (_) => _controller.email.value != null
                    ? _controller.email.value!.value.fold(
                        (f) => f.toString(),
                        (_) => null,
                      )
                    : null,
                autoValidate: _controller.showEmailValueFailure.value
                    ? AutovalidateMode.always
                    : AutovalidateMode.disabled,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            SizedBox(
              height: kMinInteractiveDimension,
              child: Row(
                children: [
                  Expanded(
                    child: SecondaryButton(
                      mediaQuery: _mediaQuery,
                      color: Colors.blue,
                      onPressed: () {},
                      text: 'Atualizar',
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: PrimaryButton(
                      text: 'Cancelar',
                      mediaQuery: _mediaQuery,
                      onPressed: () => Get.back(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
