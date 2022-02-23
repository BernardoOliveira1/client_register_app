import 'package:client_register_app/domain/core/core_value_failure.dart';
import 'package:client_register_app/domain/core/value_failures.dart';
import 'package:client_register_app/domain/core/value_objects.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../constants/constants.dart';

void main() {
  group('RegistrationCode value objetct -', () {
    late RegistrationCode registrationCode;

    test('should be valid on generation', () {
      registrationCode = RegistrationCode.generate();
      expect(registrationCode.isValid(), true);
    });
    test('should match input from right() on valid registrationCode input', () {
      // ARRANGE
      const input = TestStringsInputs.validRegistrationCode;
      registrationCode = RegistrationCode.fromSafeString(input);
      late bool successMatch;

      // ACT
      registrationCode.value.fold(
        (f) => f,
        (r) => successMatch = r == input,
      );

      // ASSERT
      expect(successMatch, true);
    });
    test(
        'should match ClientValueFailure.emptyString from letf() on empty input',
        () {
      // ARRANGE
      const input = TestStringsInputs.empty;
      registrationCode = RegistrationCode.fromSafeString(input);
      const expectedFailure = ValueFailure.client(
          ClientValueFailure.emptyString(failedValue: input));
      late bool failureMatch;

      // ACT
      registrationCode.value.fold(
        (f) => failureMatch = f == expectedFailure,
        (r) => null,
      );

      // ASSERT
      expect(failureMatch, true);
    });
    test(
        'should match ClientValueFailure.outOfRegistrationRangeLimit from letf() on input less than 5 characters',
        () {
      // ARRANGE
      const input = TestStringsInputs.invalidRegistrationCode1;
      registrationCode = RegistrationCode.fromSafeString(input);
      const expectedFailure = ValueFailure.client(
          ClientValueFailure.outOfRegistrationRangeLimit(failedValue: input));
      late bool failureMatch;

      // ACT
      registrationCode.value.fold(
        (f) => failureMatch = f == expectedFailure,
        (r) => null,
      );

      // ASSERT
      expect(failureMatch, true);
    });
    test(
        'should match ClientValueFailure.outOfRegistrationRangeLimit from letf() on input more than 5 characters',
        () {
      // ARRANGE
      const input = TestStringsInputs.invalidRegistrationCode2;
      registrationCode = RegistrationCode.fromSafeString(input);
      const expectedFailure = ValueFailure.client(
          ClientValueFailure.outOfRegistrationRangeLimit(failedValue: input));
      late bool failureMatch;

      // ACT
      registrationCode.value.fold(
        (f) => failureMatch = f == expectedFailure,
        (r) => null,
      );

      // ASSERT
      expect(failureMatch, true);
    });
    test(
        'should match ClientValueFailure.notANumber from letf() on input with letter',
        () {
      // ARRANGE
      const input = TestStringsInputs.invalidRegistrationCode3;
      registrationCode = RegistrationCode.fromSafeString(input);
      const expectedFailure = ValueFailure.client(
          ClientValueFailure.notANumber(failedValue: input));
      late bool failureMatch;

      // ACT
      registrationCode.value.fold(
        (f) => failureMatch = f == expectedFailure,
        (r) => null,
      );

      // ASSERT
      expect(failureMatch, true);
    });
  });
  group('Email value objetct -', () {
    late Email email;

    test('should match input from right() on valid email input', () {
      // ARRANGE
      const input = TestStringsInputs.validEmail1;
      email = Email.fromSafeString(input);
      late bool successMatch;

      // ACT
      email.value.fold(
        (f) => f,
        (r) => successMatch = r == input,
      );

      // ASSERT
      expect(successMatch, true);
    });
    test(
        'should match ClientValueFailure.emptyString from letf() on empty input',
        () {
      // ARRANGE
      const input = TestStringsInputs.empty;
      email = Email.fromSafeString(input);
      const expectedFailure = ValueFailure.client(
          ClientValueFailure.emptyString(failedValue: input));
      late bool failureMatch;

      // ACT
      email.value.fold(
        (f) => failureMatch = f == expectedFailure,
        (r) => null,
      );

      // ASSERT
      expect(failureMatch, true);
    });
    test(
        'should match ClientValueFailure.invalidEmail from letf() on wrong input ',
        () {
      // ARRANGE
      const input = TestStringsInputs.invalidEmail1;
      email = Email.fromSafeString(input);
      const expectedFailure = ValueFailure.client(
          ClientValueFailure.invalidEmail(failedValue: input));
      late bool failureMatch;

      // ACT
      email.value.fold(
        (f) => failureMatch = f == expectedFailure,
        (r) => null,
      );

      // ASSERT
      expect(failureMatch, true);
    });
    test(
        'should match ClientValueFailure.invalidEmail from letf() on wrong input',
        () {
      // ARRANGE
      const input = TestStringsInputs.invalidEmail2;
      email = Email.fromSafeString(input);
      const expectedFailure = ValueFailure.client(
          ClientValueFailure.invalidEmail(failedValue: input));
      late bool failureMatch;

      // ACT
      email.value.fold(
        (f) => failureMatch = f == expectedFailure,
        (r) => null,
      );

      // ASSERT
      expect(failureMatch, true);
    });
    test(
        'should match ClientValueFailure.notANumber from letf() on wrong input',
        () {
      // ARRANGE
      const input = TestStringsInputs.invalidEmail3;
      email = Email.fromSafeString(input);
      const expectedFailure = ValueFailure.client(
          ClientValueFailure.invalidEmail(failedValue: input));
      late bool failureMatch;

      // ACT
      email.value.fold(
        (f) => failureMatch = f == expectedFailure,
        (r) => null,
      );

      // ASSERT
      expect(failureMatch, true);
    });
  });
  group('CPF value objetct -', () {
    late CPF cpf;

    test('should match input from right() on valid cpf input', () {
      // ARRANGE
      const input = TestStringsInputs.validCPF1;
      cpf = CPF.fromSafeString(input);
      late bool successMatch;

      // ACT
      cpf.value.fold(
        (f) => f,
        (r) => successMatch = r == input,
      );

      // ASSERT
      expect(successMatch, true);
    });
    test(
        'should match ClientValueFailure.emptyString from letf() on empty input',
        () {
      // ARRANGE
      const input = TestStringsInputs.empty;
      cpf = CPF.fromSafeString(input);
      const expectedFailure = ValueFailure.client(
          ClientValueFailure.emptyString(failedValue: input));
      late bool failureMatch;

      // ACT
      cpf.value.fold(
        (f) => failureMatch = f == expectedFailure,
        (r) => null,
      );

      // ASSERT
      expect(failureMatch, true);
    });
    test(
        'should match ClientValueFailure.invalidCPF from letf() on small input ',
        () {
      // ARRANGE
      const input = TestStringsInputs.invalidCPF1;
      cpf = CPF.fromSafeString(input);
      const expectedFailure = ValueFailure.client(
          ClientValueFailure.invalidCPF(failedValue: input));
      late bool failureMatch;

      // ACT
      cpf.value.fold(
        (f) => failureMatch = f == expectedFailure,
        (r) => null,
      );

      // ASSERT
      expect(failureMatch, true);
    });
    test(
        'should match ClientValueFailure.invalidCPF from letf() on large input',
        () {
      // ARRANGE
      const input = TestStringsInputs.invalidCPF2;
      cpf = CPF.fromSafeString(input);
      const expectedFailure = ValueFailure.client(
          ClientValueFailure.invalidCPF(failedValue: input));
      late bool failureMatch;

      // ACT
      cpf.value.fold(
        (f) => failureMatch = f == expectedFailure,
        (r) => null,
      );

      // ASSERT
      expect(failureMatch, true);
    });
    test(
        'should match ClientValueFailure.notANumber from letf() on letter input',
        () {
      // ARRANGE
      const input = TestStringsInputs.invalidCPF3;
      cpf = CPF.fromSafeString(input);
      const expectedFailure = ValueFailure.client(
          ClientValueFailure.invalidCPF(failedValue: input));
      late bool failureMatch;

      // ACT
      cpf.value.fold(
        (f) => failureMatch = f == expectedFailure,
        (r) => null,
      );

      // ASSERT
      expect(failureMatch, true);
    });
  });
}
