import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

Future<dynamic> showMessage(BuildContext context,
    {required final String title,
    required final String message,
    required final Color color}) {
  return Flushbar(
    borderRadius: BorderRadius.circular(2),
    title: title,
    message: message,
    backgroundColor: color,
    duration: const Duration(seconds: 3),
    margin: const EdgeInsets.all(8),
    padding: const EdgeInsets.all(8),
    flushbarPosition: FlushbarPosition.BOTTOM,
    animationDuration: const Duration(milliseconds: 500),
  ).show(context);
}
