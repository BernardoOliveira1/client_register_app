import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

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
            const _RegisterTextField(
              labelText: 'Matrícula',
              hintText: 'Digite a Matrícula',
              maxLength: 11,
            ),
            const _RegisterTextField(
              labelText: 'CPF',
              hintText: 'Digite o CPF',
              maxLength: 11,
            ),
            const _RegisterTextField(
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

class _RegisterTextField extends HookWidget {
  const _RegisterTextField(
      {required this.labelText,
      required this.hintText,
      required this.maxLength,
      Key? key})
      : super(key: key);

  final String labelText;
  final String hintText;
  final int maxLength;

  @override
  Widget build(BuildContext context) {
    final _nameFocusNode = useFocusNode();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: null,
        focusNode: _nameFocusNode,
        textCapitalization: TextCapitalization.sentences,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.blue,
        ),
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blueGrey,
              width: 1,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue,
              width: 1,
            ),
          ),
          labelText: labelText,
          labelStyle: const TextStyle(
            color: Colors.blueGrey,
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.blueGrey,
          ),
        ),
        maxLength: maxLength,
        onChanged: (value) {},
        onFieldSubmitted: (_) {},
        validator: (_) {},
      ),
    );
  }
}
