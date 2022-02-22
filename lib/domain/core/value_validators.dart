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
