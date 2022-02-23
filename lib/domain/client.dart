import 'package:client_register_app/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'core/core_value_failure.dart';
part 'client.freezed.dart';

@freezed
class Client with _$Client {
  const factory Client({
    required RegistrationCode registrationCode,
    required CPF cpf,
    required Email email,
  }) = _Client;

  const Client._();

  Option<ValueFailure<dynamic>> get failureOption {
    return registrationCode.failureOrUnit
        .andThen(cpf.failureOrUnit)
        .andThen(email.failureOrUnit)
        .fold((f) => some(f), (r) => none());
  }

  bool isValid() => failureOption.isNone();
  bool isInvalid() => failureOption.isSome();

  @override
  String toString() =>
      'Client(registrationCode: ${registrationCode.toString()}, cpf: ${cpf.toString()}, email: ${email.toString()},  )';
}
