import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            _RegisterTextField(
              labelText: 'CPF',
              hintText: 'Digite o CPF',
              maxLength: 11,
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
