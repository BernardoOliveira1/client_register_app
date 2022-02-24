import 'dart:async';

import 'package:client_register_app/domain/client.dart';
import 'package:client_register_app/domain/core/failure.dart';
import 'package:client_register_app/domain/i_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'core/firestore_helpers.dart';

@LazySingleton(as: IClientRepository)
class ClientRepository implements IClientRepository {
  ClientRepository(this._firestore);

  final FirebaseFirestore _firestore;

  @override
  Future<Either<ClientFailure, Client>> create(Client client) async {
    try {
      final _docRef = _firestore
          .collection('clients')
          .doc(client.registrationCode.getOrCrash())
          .withConverter<Either<ClientFailure, Client>>(
            fromFirestore: clientFromFirestore,
            toFirestore: clientToFirestore,
          );

      _docRef.set(right(client));
      return right(client);
    } on TimeoutException {
      return left(const ClientFailure.serverError());
    } on FirebaseException catch (e) {
      if (e.code == 'not-found') {
        return left(const ClientFailure.clientNotFound());
      } else if (e.code == 'permission-denied') {
        return left(
          const ClientFailure.permissionDenied(),
        );
      } else {
        return left(ClientFailure.unknownError(object: e));
      }
    } catch (e) {
      return left(ClientFailure.unknownError(object: e));
    }
  }

  @override
  Future<Either<ClientFailure, Client>> delete(Client client) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<ClientFailure, Client>> update(Client client) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<List<Either<ClientFailure, Client>>> getAll() async {
    final _clientsCollection = _firestore
        .collection('clients')
        .withConverter<Either<ClientFailure, Client>>(
          fromFirestore: clientFromFirestore,
          toFirestore: clientToFirestore,
        );

    final clients = await _clientsCollection.get();

    return clients.docs
        .map(
          (doc) => doc.data().fold(
            (l) {
              print(l);
              return left<ClientFailure, Client>(l);
            },
            (r) {
              print(r);
              return right<ClientFailure, Client>(r);
            },
          ),
        )
        .toList();
  }
}
