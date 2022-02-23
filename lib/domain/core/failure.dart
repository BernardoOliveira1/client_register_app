import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class ClientFailure<T> with _$ClientFailure<T> {
  const factory ClientFailure.gettingClientWithNullValue() =
      _GettingWithNullValue;
  const factory ClientFailure.clientNotFound() = _ClientNotFound;
  const factory ClientFailure.serverError() = _ServerError;
  const factory ClientFailure.permissionDenied() = _PermissionDenied;
  const factory ClientFailure.unknownError({T? object}) = _UnknownError;
}
