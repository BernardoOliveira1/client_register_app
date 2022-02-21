import 'package:client_register_app/presentation/widgets/register_text_field.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Center(child: Text('Cadastro')),
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(
              height: 40,
            ),
            const RegisterTextField(
              labelText: 'Matrícula',
              hintText: 'Digite a Matrícula',
              maxLength: 11,
            ),
            const RegisterTextField(
              labelText: 'CPF',
              hintText: 'Digite o CPF',
              maxLength: 11,
            ),
            const RegisterTextField(
              labelText: 'E-mail',
              hintText: 'Digite o E-mail',
              maxLength: 11,
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
                  onPressed: () {},
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
    );
  }
}
