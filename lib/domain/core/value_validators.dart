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

Either<ValueFailure<String>, String> validateNumberBelowRegistrationRangeLimit(
    String input) {
  if (int.parse(input) <= 99999) {
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
