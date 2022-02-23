// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'client_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClientDTO _$ClientDTOFromJson(Map<String, dynamic> json) {
  return _ClientDTO.fromJson(json);
}

/// @nodoc
class _$ClientDTOTearOff {
  const _$ClientDTOTearOff();

  _ClientDTO call(
      {required String registrationCode,
      required String email,
      required String cpf}) {
    return _ClientDTO(
      registrationCode: registrationCode,
      email: email,
      cpf: cpf,
    );
  }

  ClientDTO fromJson(Map<String, Object?> json) {
    return ClientDTO.fromJson(json);
  }
}

/// @nodoc
const $ClientDTO = _$ClientDTOTearOff();

/// @nodoc
mixin _$ClientDTO {
  String get registrationCode => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get cpf => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientDTOCopyWith<ClientDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientDTOCopyWith<$Res> {
  factory $ClientDTOCopyWith(ClientDTO value, $Res Function(ClientDTO) then) =
      _$ClientDTOCopyWithImpl<$Res>;
  $Res call({String registrationCode, String email, String cpf});
}

/// @nodoc
class _$ClientDTOCopyWithImpl<$Res> implements $ClientDTOCopyWith<$Res> {
  _$ClientDTOCopyWithImpl(this._value, this._then);

  final ClientDTO _value;
  // ignore: unused_field
  final $Res Function(ClientDTO) _then;

  @override
  $Res call({
    Object? registrationCode = freezed,
    Object? email = freezed,
    Object? cpf = freezed,
  }) {
    return _then(_value.copyWith(
      registrationCode: registrationCode == freezed
          ? _value.registrationCode
          : registrationCode // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      cpf: cpf == freezed
          ? _value.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ClientDTOCopyWith<$Res> implements $ClientDTOCopyWith<$Res> {
  factory _$ClientDTOCopyWith(
          _ClientDTO value, $Res Function(_ClientDTO) then) =
      __$ClientDTOCopyWithImpl<$Res>;
  @override
  $Res call({String registrationCode, String email, String cpf});
}

/// @nodoc
class __$ClientDTOCopyWithImpl<$Res> extends _$ClientDTOCopyWithImpl<$Res>
    implements _$ClientDTOCopyWith<$Res> {
  __$ClientDTOCopyWithImpl(_ClientDTO _value, $Res Function(_ClientDTO) _then)
      : super(_value, (v) => _then(v as _ClientDTO));

  @override
  _ClientDTO get _value => super._value as _ClientDTO;

  @override
  $Res call({
    Object? registrationCode = freezed,
    Object? email = freezed,
    Object? cpf = freezed,
  }) {
    return _then(_ClientDTO(
      registrationCode: registrationCode == freezed
          ? _value.registrationCode
          : registrationCode // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      cpf: cpf == freezed
          ? _value.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClientDTO extends _ClientDTO {
  const _$_ClientDTO(
      {required this.registrationCode, required this.email, required this.cpf})
      : super._();

  factory _$_ClientDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ClientDTOFromJson(json);

  @override
  final String registrationCode;
  @override
  final String email;
  @override
  final String cpf;

  @override
  String toString() {
    return 'ClientDTO(registrationCode: $registrationCode, email: $email, cpf: $cpf)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClientDTO &&
            const DeepCollectionEquality()
                .equals(other.registrationCode, registrationCode) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.cpf, cpf));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(registrationCode),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(cpf));

  @JsonKey(ignore: true)
  @override
  _$ClientDTOCopyWith<_ClientDTO> get copyWith =>
      __$ClientDTOCopyWithImpl<_ClientDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClientDTOToJson(this);
  }
}

abstract class _ClientDTO extends ClientDTO {
  const factory _ClientDTO(
      {required String registrationCode,
      required String email,
      required String cpf}) = _$_ClientDTO;
  const _ClientDTO._() : super._();

  factory _ClientDTO.fromJson(Map<String, dynamic> json) =
      _$_ClientDTO.fromJson;

  @override
  String get registrationCode;
  @override
  String get email;
  @override
  String get cpf;
  @override
  @JsonKey(ignore: true)
  _$ClientDTOCopyWith<_ClientDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
