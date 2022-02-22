import 'dart:math';

import 'package:client_register_app/domain/core/value_validators.dart';
import 'package:dartz/dartz.dart';

import 'core_value_failure.dart';
import 'core_value_object.dart';

class RegistrationCode extends ValueObject<String> {
  const RegistrationCode._(this.value);

  factory RegistrationCode.generate() {
    return RegistrationCode._(right(Random().nextInt(99999).toString()));
  }

  factory RegistrationCode.fromSafeString(String registrationCode) {
    return RegistrationCode._(
      validateStringNotEmpty(registrationCode)
          .flatMap(validateStringIsANumber)
          .flatMap(validateNumberBelowRegistrationRangeLimit),
    );
  }

  @override
  final Either<ValueFailure<String>, String> value;
}
