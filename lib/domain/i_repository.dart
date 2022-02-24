import 'package:client_register_app/domain/client.dart';
import 'package:dartz/dartz.dart' as dartz;

import 'core/failure.dart';

abstract class IClientRepository {
  Future<List<dartz.Either<ClientFailure, Client>>> getAll();

  Future<dartz.Either<ClientFailure, Client>> create(Client client);

  Future<dartz.Either<ClientFailure, Client>> update(Client client);

  Future<dartz.Either<ClientFailure, Client>> delete(Client client);
}
