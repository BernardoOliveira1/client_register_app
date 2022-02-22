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
  const factory ClientValueFailure.outOfRegistrationRangeLimit({
    required T failedValue,
  }) = _OutOfRegistrationRangeLimit<T>;
  const factory ClientValueFailure.notANumber({
    required T failedValue,
  }) = _NotANumber<T>;
  const factory ClientValueFailure.invalidEmail({
    required T failedValue,
  }) = _InvalidEmail<T>;
  const factory ClientValueFailure.invalidCPF({
    required T failedValue,
  }) = _InvalidCPF<T>;
}
