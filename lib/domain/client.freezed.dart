// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ClientTearOff {
  const _$ClientTearOff();

  _Client call(
      {required RegistrationCode registrationCode,
      required CPF cpf,
      required Email email}) {
    return _Client(
      registrationCode: registrationCode,
      cpf: cpf,
      email: email,
    );
  }
}

/// @nodoc
const $Client = _$ClientTearOff();

/// @nodoc
mixin _$Client {
  RegistrationCode get registrationCode => throw _privateConstructorUsedError;
  CPF get cpf => throw _privateConstructorUsedError;
  Email get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClientCopyWith<Client> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientCopyWith<$Res> {
  factory $ClientCopyWith(Client value, $Res Function(Client) then) =
      _$ClientCopyWithImpl<$Res>;
  $Res call({RegistrationCode registrationCode, CPF cpf, Email email});
}

/// @nodoc
class _$ClientCopyWithImpl<$Res> implements $ClientCopyWith<$Res> {
  _$ClientCopyWithImpl(this._value, this._then);

  final Client _value;
  // ignore: unused_field
  final $Res Function(Client) _then;

  @override
  $Res call({
    Object? registrationCode = freezed,
    Object? cpf = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      registrationCode: registrationCode == freezed
          ? _value.registrationCode
          : registrationCode // ignore: cast_nullable_to_non_nullable
              as RegistrationCode,
      cpf: cpf == freezed
          ? _value.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as CPF,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
    ));
  }
}

/// @nodoc
abstract class _$ClientCopyWith<$Res> implements $ClientCopyWith<$Res> {
  factory _$ClientCopyWith(_Client value, $Res Function(_Client) then) =
      __$ClientCopyWithImpl<$Res>;
  @override
  $Res call({RegistrationCode registrationCode, CPF cpf, Email email});
}

/// @nodoc
class __$ClientCopyWithImpl<$Res> extends _$ClientCopyWithImpl<$Res>
    implements _$ClientCopyWith<$Res> {
  __$ClientCopyWithImpl(_Client _value, $Res Function(_Client) _then)
      : super(_value, (v) => _then(v as _Client));

  @override
  _Client get _value => super._value as _Client;

  @override
  $Res call({
    Object? registrationCode = freezed,
    Object? cpf = freezed,
    Object? email = freezed,
  }) {
    return _then(_Client(
      registrationCode: registrationCode == freezed
          ? _value.registrationCode
          : registrationCode // ignore: cast_nullable_to_non_nullable
              as RegistrationCode,
      cpf: cpf == freezed
          ? _value.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as CPF,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
    ));
  }
}

/// @nodoc

class _$_Client extends _Client {
  const _$_Client(
      {required this.registrationCode, required this.cpf, required this.email})
      : super._();

  @override
  final RegistrationCode registrationCode;
  @override
  final CPF cpf;
  @override
  final Email email;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Client &&
            const DeepCollectionEquality()
                .equals(other.registrationCode, registrationCode) &&
            const DeepCollectionEquality().equals(other.cpf, cpf) &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(registrationCode),
      const DeepCollectionEquality().hash(cpf),
      const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$ClientCopyWith<_Client> get copyWith =>
      __$ClientCopyWithImpl<_Client>(this, _$identity);
}

abstract class _Client extends Client {
  const factory _Client(
      {required RegistrationCode registrationCode,
      required CPF cpf,
      required Email email}) = _$_Client;
  const _Client._() : super._();

  @override
  RegistrationCode get registrationCode;
  @override
  CPF get cpf;
  @override
  Email get email;
  @override
  @JsonKey(ignore: true)
  _$ClientCopyWith<_Client> get copyWith => throw _privateConstructorUsedError;
}
