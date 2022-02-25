import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RegisterTextField extends HookWidget {
  const RegisterTextField(
      {required this.labelText,
      required this.controller,
      required this.hintText,
      required this.maxLength,
      required this.onChanged,
      required this.validator,
      required this.onFieldSubmitted,
      required this.autoValidate,
      required this.keyboardType,
      required this.initialValue,
      this.inputFormatters,
      Key? key})
      : super(key: key);

  final String labelText;
  final String hintText;
  final int maxLength;
  final String initialValue;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final void Function(String)? onFieldSubmitted;
  final TextEditingController controller;
  final AutovalidateMode autoValidate;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        initialValue: initialValue,
        controller: null,
        focusNode: null,
        inputFormatters: inputFormatters,
        autovalidateMode: autoValidate,
        keyboardType: keyboardType,
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
        onChanged: (value) {
          onChanged!(value);
        },
        onFieldSubmitted: (_) {
          onFieldSubmitted;
        },
        validator: (_) {
          validator!(_);
        },
      ),
    );
  }
}
