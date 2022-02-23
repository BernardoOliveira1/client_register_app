import 'package:client_register_app/domain/client.dart';
import 'package:client_register_app/domain/core/value_objects.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../constants/constants.dart';

void main() {
  group('Client -', () {
    final registrationCode = RegistrationCode.generate();
    final email = Email.fromSafeString(
      TestStringsInputs.validEmail1,
    );
    final cpf = CPF.fromSafeString(
      TestStringsInputs.validCPF1,
    );
    late Client client;

    test('.isValid() should be true on valid inputs', () {
      client = Client(
        email: email,
        cpf: cpf,
        registrationCode: registrationCode,
      );

      // ASSERT
      expect(client.isValid(), true);
    });
    test(
        '.isValid() should be false on empty RegistrationCode input (implicit test .isSome() failureOption)',
        () {
      // ARRANGE
      final invalidRegistrationCodeInput =
          RegistrationCode.fromSafeString(TestStringsInputs.empty);
      client = Client(
        email: email,
        cpf: cpf,
        registrationCode: invalidRegistrationCodeInput,
      );

      // ASSERT
      expect(client.isValid(), false);
    });
    test(
        '.isValid() should be false on invalid Email input (implicit test .isSome() failureOption)',
        () {
      // ARRANGE
      final invalidEmailInput =
          Email.fromSafeString(TestStringsInputs.invalidEmail1);
      client = Client(
        email: invalidEmailInput,
        cpf: cpf,
        registrationCode: registrationCode,
      );

      // ASSERT
      expect(client.isValid(), false);
    });
    test(
        '.isValid() should be false on invalid CPF input (implicit test .isSome() failureOption)',
        () {
      // ARRANGE
      final invalidCPFInput = CPF.fromSafeString(TestStringsInputs.invalidCPF1);
      client = Client(
        email: email,
        cpf: invalidCPFInput,
        registrationCode: registrationCode,
      );

      // ASSERT
      expect(client.isValid(), false);
    });
  });
}
