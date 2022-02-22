import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failures.freezed.dart';

@freezed
class ClientValueFailure<T> with _$ClientValueFailure<T> {
  const factory ClientValueFailure.clientNotFound({
    required T failedValue,
  }) = _ClientNotFound<T>;
  const factory ClientValueFailure.emptyString({
    required T failedValue,
  }) = _EmptyString<T>;
}
