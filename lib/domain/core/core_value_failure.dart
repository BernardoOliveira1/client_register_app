import 'package:client_register_app/domain/core/value_failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'core_value_failure.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.client(ClientValueFailure<T> f) = _Client<T>;
}
