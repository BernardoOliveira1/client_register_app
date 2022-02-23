import 'package:client_register_app/domain/client.dart';
import 'package:client_register_app/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'client_dto.freezed.dart';
part 'client_dto.g.dart';

@freezed
class ClientDTO with _$ClientDTO {
  const factory ClientDTO({
    required String registrationCode,
    required String email,
    required String cpf,
  }) = _ClientDTO;

  const ClientDTO._();

  factory ClientDTO.fromDomain(Client client) => ClientDTO(
        registrationCode: client.registrationCode.getOrCrash(),
        email: client.email.getOrCrash(),
        cpf: client.cpf.getOrCrash(),
      );
  factory ClientDTO.fromJson(Map<String, dynamic> json) =>
      _$ClientDTOFromJson(json);

  Client toDomain() => Client(
        registrationCode: RegistrationCode.fromSafeString(registrationCode),
        email: Email.fromSafeString(email),
        cpf: CPF.fromSafeString(cpf),
      );
}
