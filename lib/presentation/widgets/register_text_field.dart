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
      this.inputFormatters,
      Key? key})
      : super(key: key);

  final String labelText;
  final String hintText;
  final int maxLength;
  final void Function(String)? onChanged;
  final String? validator;
  final void Function(String)? onFieldSubmitted;
  final TextEditingController controller;
  final AutovalidateMode autoValidate;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: TextField(
        controller: controller,
        focusNode: null,
        inputFormatters: inputFormatters,
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
          errorText: validator,
          errorStyle: const TextStyle(
            color: Colors.red,
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
              width: 1,
            ),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
              width: 1,
            ),
          ),
        ),
        maxLength: maxLength,
        onChanged: (value) {
          onChanged!(value);
        },
        onSubmitted: (_) {
          onFieldSubmitted;
        },
      ),
    );
  }
}
