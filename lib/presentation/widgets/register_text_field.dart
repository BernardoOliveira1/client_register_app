import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RegisterTextField extends HookWidget {
  const RegisterTextField(
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
