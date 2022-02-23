import 'package:client_register_app/domain/client.dart';
import 'package:client_register_app/domain/core/error.dart';
import 'package:client_register_app/domain/core/failure.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

import 'client_dto.dart';

Either<ClientFailure, Client> clientFromFirestore(
  DocumentSnapshot<Map<String, dynamic>> snapshot,
  SnapshotOptions? snapshotOptions,
) {
  if (snapshot.exists) {
    try {
      return right(
        ClientDTO.fromJson(snapshot.data()!).toDomain(),
      );
    } catch (error) {
      return left(
        ClientFailure.unknownError(object: '${snapshot.id} $error'),
      );
    }
  } else {
    return left(
      const ClientFailure.clientNotFound(),
    );
  }
}

Map<String, Object?> clientToFirestore(
  Either<ClientFailure, Client> client,
  SetOptions? setOptions,
) =>
    client.fold(
      (f) => throw UnexpectedClientError(f),
      (r) => ClientDTO.fromDomain(r).toJson(),
    );
