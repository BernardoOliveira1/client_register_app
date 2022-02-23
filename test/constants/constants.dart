class TestStringsInputs {
  static const empty = '';
  static const singleWord = 'TestString';

  //RegistrationCode
  static const validRegistrationCode = '11111';
  static const invalidRegistrationCode1 = '1111';
  static const invalidRegistrationCode2 = '111111';
  static const invalidRegistrationCode3 = 'a1111';

  //Email
  static const validEmail1 = 'someone@example.com';
  static const validEmail2 = 'someone@b.c';
  static const validEmail3 = 'a_c@b.c';
  static const validEmail4 = 'a.c@b.c';
  static const invalidEmail1 = 'someone@example';
  static const invalidEmail2 = 'someone@example..com';
  static const invalidEmail3 = 'someone';

  //CPF
  static const validCPF1 = '123.456.789-00';
  static const validCPF2 = '12345678900';
  static const invalidCPF1 = '1234567890';
  static const invalidCPF2 = '123456789000';
  static const invalidCPF3 = 'aaaaa';
}
