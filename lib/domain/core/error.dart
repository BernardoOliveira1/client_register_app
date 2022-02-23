import 'failure.dart';

class UnexpectedClientError extends Error {
  UnexpectedClientError(this.clientFailure);

  final ClientFailure clientFailure;

  @override
  String toString() {
    const explanation =
        'Encountered a Failure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $clientFailure');
  }
}
