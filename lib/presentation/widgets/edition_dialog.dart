import 'package:client_register_app/presentation/widgets/buttons.dart';
import 'package:client_register_app/presentation/widgets/register_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

class EditionDialog extends HookWidget {
  const EditionDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context);

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
                  onPressed: () {},
                  text: 'Excluir',
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const RegisterTextField(
              labelText: 'Matrícula',
              hintText: 'Matrícula',
              maxLength: 10,
            ),
            const RegisterTextField(
              labelText: 'CPF',
              hintText: 'CPF',
              maxLength: 10,
            ),
            const RegisterTextField(
              labelText: 'E-mail',
              hintText: 'E-mail',
              maxLength: 10,
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
