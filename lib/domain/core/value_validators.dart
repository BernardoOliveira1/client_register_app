import 'package:client_register_app/domain/constants/global_domain_constants.dart';
import 'package:client_register_app/domain/core/value_failures.dart';
import 'package:dartz/dartz.dart';

import 'core_value_failure.dart';

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(
      ValueFailure.client(
        ClientValueFailure.emptyString(failedValue: input),
      ),
    );
  }
}

Either<ValueFailure<String>, String> validateRegistrationCharacterRange(
    String input) {
  if (input.length == 5) {
    return right(input);
  } else {
    return left(
      ValueFailure.client(
        ClientValueFailure.outOfRegistrationRangeLimit(failedValue: input),
      ),
    );
  }
}

Either<ValueFailure<String>, String> validateStringIsANumber(String input) {
  if (int.tryParse(input) != null) {
    return right(input);
  } else {
    return left(
      ValueFailure.client(
        ClientValueFailure.notANumber(failedValue: input),
      ),
    );
  }
}

Either<ValueFailure<String>, String> validateEmail(String input) {
  if (RegExp(GlobalDomainConstants.emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(
      ValueFailure.client(
        ClientValueFailure.invalidEmail(failedValue: input),
      ),
    );
  }
}
