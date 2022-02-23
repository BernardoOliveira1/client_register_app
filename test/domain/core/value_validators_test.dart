import 'package:client_register_app/domain/core/core_value_failure.dart';
import 'package:client_register_app/domain/core/value_failures.dart';
import 'package:client_register_app/domain/core/value_validators.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../constants/constants.dart';

void main() {
  group('validateStringNotEmpty() -', () {
    test('should be right() on valid input not empty', () {
      // ARRANGE
      const input = TestStringsInputs.singleWord;
      late Either<ValueFailure, String> _result;

      // ACT
      _result = validateStringNotEmpty(input).fold(
        (f) => left(f),
        (r) => right(r),
      );

      // ASSERT
      expect(_result.isRight(), true);
    });
    test(
        'should match ClientValueFailure.emptyString from letf() on empty input',
        () {
      // ARRANGE
      const input = TestStringsInputs.empty;
      const expectedFailure = ValueFailure.client(
          ClientValueFailure.emptyString(failedValue: input));
      late bool failureMatch;

      // ACT
      validateStringNotEmpty(input).fold(
        (f) => failureMatch = f == expectedFailure,
        (r) => null,
      );

      // ASSERT
      expect(failureMatch, true);
    });
  });

  group('validateEmail() -', () {
    test('should match input from right() on valid input', () {
      // ARRANGE
      const input = TestStringsInputs.validEmail1;
      late bool successMatch;

      // ACT
      validateEmail(input).fold(
        (f) => f,
        (r) => successMatch = r == input,
      );

      // ASSERT
      expect(successMatch, true);
    });
    test(
        'should match ClientValueFailure.invalidEmail from left() on invalid email',
        () {
      // ARRANGE
      const input = TestStringsInputs.invalidEmail1;
      const expectedFailure = ValueFailure.client(
        ClientValueFailure.invalidEmail(failedValue: input),
      );
      late bool failureMatch;

      // ACT
      validateEmail(input).fold(
        (f) => failureMatch = f == expectedFailure,
        (r) => null,
      );

      // ASSERT
      expect(failureMatch, true);
    });
  });

  group('validateCPF() -', () {
    test('should match input from right() on valid input', () {
      // ARRANGE
      const input = TestStringsInputs.validCPF1;
      late bool successMatch;

      // ACT
      validateCPF(input).fold(
        (f) => f,
        (r) => successMatch = r == input,
      );

      // ASSERT
      expect(successMatch, true);
    });
    test(
        'should match ClientValueFailure.invalidCPF from left() on invalid email',
        () {
      // ARRANGE
      const input = TestStringsInputs.invalidCPF1;
      const expectedFailure = ValueFailure.client(
        ClientValueFailure.invalidCPF(failedValue: input),
      );
      late bool failureMatch;

      // ACT
      validateCPF(input).fold(
        (f) => failureMatch = f == expectedFailure,
        (r) => null,
      );

      // ASSERT
      expect(failureMatch, true);
    });
  });

  group('validateRegistrationCharacterRange() -', () {
    test('should match input from right() on valid input', () {
      // ARRANGE
      const input = TestStringsInputs.validRegistrationCode;
      late bool successMatch;

      // ACT
      validateRegistrationCharacterRange(input).fold(
        (f) => f,
        (r) => successMatch = r == input,
      );

      // ASSERT
      expect(successMatch, true);
    });
    test(
        'should match ClientValueFailure.invalidRegistrationCharacterRange from left() on  input too small',
        () {
      // ARRANGE
      const input = TestStringsInputs.invalidRegistrationCode1;
      const expectedFailure = ValueFailure.client(
        ClientValueFailure.outOfRegistrationRangeLimit(failedValue: input),
      );
      late bool failureMatch;

      // ACT
      validateRegistrationCharacterRange(input).fold(
        (f) => failureMatch = f == expectedFailure,
        (r) => null,
      );

      // ASSERT
      expect(failureMatch, true);
    });
    test(
        'should match ClientValueFailure.invalidRegistrationCharacterRange from left() on  input too large',
        () {
      // ARRANGE
      const input = TestStringsInputs.invalidRegistrationCode2;
      const expectedFailure = ValueFailure.client(
        ClientValueFailure.outOfRegistrationRangeLimit(failedValue: input),
      );
      late bool failureMatch;

      // ACT
      validateRegistrationCharacterRange(input).fold(
        (f) => failureMatch = f == expectedFailure,
        (r) => null,
      );

      // ASSERT
      expect(failureMatch, true);
    });
  });
  group('validateStringIsANumber() -', () {
    test('should match input from right() on valid input', () {
      // ARRANGE
      const input = TestStringsInputs.validRegistrationCode;
      late bool successMatch;

      // ACT
      validateStringIsANumber(input).fold(
        (f) => f,
        (r) => successMatch = r == input,
      );

      // ASSERT
      expect(successMatch, true);
    });
    test(
        'should match ClientValueFailure.notANumber from left() on  input with letter',
        () {
      // ARRANGE
      const input = TestStringsInputs.invalidRegistrationCode3;
      const expectedFailure = ValueFailure.client(
        ClientValueFailure.notANumber(failedValue: input),
      );
      late bool failureMatch;

      // ACT
      validateStringIsANumber(input).fold(
        (f) => failureMatch = f == expectedFailure,
        (r) => null,
      );

      // ASSERT
      expect(failureMatch, true);
    });
  });
}
