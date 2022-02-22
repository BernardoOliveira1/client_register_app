// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'value_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ClientValueFailureTearOff {
  const _$ClientValueFailureTearOff();

  _ClientNotFound<T> clientNotFound<T>({required T failedValue}) {
    return _ClientNotFound<T>(
      failedValue: failedValue,
    );
  }

  _EmptyString<T> emptyString<T>({required T failedValue}) {
    return _EmptyString<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
const $ClientValueFailure = _$ClientValueFailureTearOff();

/// @nodoc
mixin _$ClientValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) clientNotFound,
    required TResult Function(T failedValue) emptyString,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? clientNotFound,
    TResult Function(T failedValue)? emptyString,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? clientNotFound,
    TResult Function(T failedValue)? emptyString,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientNotFound<T> value) clientNotFound,
    required TResult Function(_EmptyString<T> value) emptyString,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClientNotFound<T> value)? clientNotFound,
    TResult Function(_EmptyString<T> value)? emptyString,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientNotFound<T> value)? clientNotFound,
    TResult Function(_EmptyString<T> value)? emptyString,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClientValueFailureCopyWith<T, ClientValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientValueFailureCopyWith<T, $Res> {
  factory $ClientValueFailureCopyWith(ClientValueFailure<T> value,
          $Res Function(ClientValueFailure<T>) then) =
      _$ClientValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$ClientValueFailureCopyWithImpl<T, $Res>
    implements $ClientValueFailureCopyWith<T, $Res> {
  _$ClientValueFailureCopyWithImpl(this._value, this._then);

  final ClientValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ClientValueFailure<T>) _then;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
abstract class _$ClientNotFoundCopyWith<T, $Res>
    implements $ClientValueFailureCopyWith<T, $Res> {
  factory _$ClientNotFoundCopyWith(
          _ClientNotFound<T> value, $Res Function(_ClientNotFound<T>) then) =
      __$ClientNotFoundCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$ClientNotFoundCopyWithImpl<T, $Res>
    extends _$ClientValueFailureCopyWithImpl<T, $Res>
    implements _$ClientNotFoundCopyWith<T, $Res> {
  __$ClientNotFoundCopyWithImpl(
      _ClientNotFound<T> _value, $Res Function(_ClientNotFound<T>) _then)
      : super(_value, (v) => _then(v as _ClientNotFound<T>));

  @override
  _ClientNotFound<T> get _value => super._value as _ClientNotFound<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_ClientNotFound<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_ClientNotFound<T> implements _ClientNotFound<T> {
  const _$_ClientNotFound({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ClientValueFailure<$T>.clientNotFound(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClientNotFound<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$ClientNotFoundCopyWith<T, _ClientNotFound<T>> get copyWith =>
      __$ClientNotFoundCopyWithImpl<T, _ClientNotFound<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) clientNotFound,
    required TResult Function(T failedValue) emptyString,
  }) {
    return clientNotFound(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? clientNotFound,
    TResult Function(T failedValue)? emptyString,
  }) {
    return clientNotFound?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? clientNotFound,
    TResult Function(T failedValue)? emptyString,
    required TResult orElse(),
  }) {
    if (clientNotFound != null) {
      return clientNotFound(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientNotFound<T> value) clientNotFound,
    required TResult Function(_EmptyString<T> value) emptyString,
  }) {
    return clientNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClientNotFound<T> value)? clientNotFound,
    TResult Function(_EmptyString<T> value)? emptyString,
  }) {
    return clientNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientNotFound<T> value)? clientNotFound,
    TResult Function(_EmptyString<T> value)? emptyString,
    required TResult orElse(),
  }) {
    if (clientNotFound != null) {
      return clientNotFound(this);
    }
    return orElse();
  }
}

abstract class _ClientNotFound<T> implements ClientValueFailure<T> {
  const factory _ClientNotFound({required T failedValue}) =
      _$_ClientNotFound<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$ClientNotFoundCopyWith<T, _ClientNotFound<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EmptyStringCopyWith<T, $Res>
    implements $ClientValueFailureCopyWith<T, $Res> {
  factory _$EmptyStringCopyWith(
          _EmptyString<T> value, $Res Function(_EmptyString<T>) then) =
      __$EmptyStringCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$EmptyStringCopyWithImpl<T, $Res>
    extends _$ClientValueFailureCopyWithImpl<T, $Res>
    implements _$EmptyStringCopyWith<T, $Res> {
  __$EmptyStringCopyWithImpl(
      _EmptyString<T> _value, $Res Function(_EmptyString<T>) _then)
      : super(_value, (v) => _then(v as _EmptyString<T>));

  @override
  _EmptyString<T> get _value => super._value as _EmptyString<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_EmptyString<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_EmptyString<T> implements _EmptyString<T> {
  const _$_EmptyString({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ClientValueFailure<$T>.emptyString(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmptyString<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$EmptyStringCopyWith<T, _EmptyString<T>> get copyWith =>
      __$EmptyStringCopyWithImpl<T, _EmptyString<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) clientNotFound,
    required TResult Function(T failedValue) emptyString,
  }) {
    return emptyString(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? clientNotFound,
    TResult Function(T failedValue)? emptyString,
  }) {
    return emptyString?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? clientNotFound,
    TResult Function(T failedValue)? emptyString,
    required TResult orElse(),
  }) {
    if (emptyString != null) {
      return emptyString(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientNotFound<T> value) clientNotFound,
    required TResult Function(_EmptyString<T> value) emptyString,
  }) {
    return emptyString(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClientNotFound<T> value)? clientNotFound,
    TResult Function(_EmptyString<T> value)? emptyString,
  }) {
    return emptyString?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientNotFound<T> value)? clientNotFound,
    TResult Function(_EmptyString<T> value)? emptyString,
    required TResult orElse(),
  }) {
    if (emptyString != null) {
      return emptyString(this);
    }
    return orElse();
  }
}

abstract class _EmptyString<T> implements ClientValueFailure<T> {
  const factory _EmptyString({required T failedValue}) = _$_EmptyString<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$EmptyStringCopyWith<T, _EmptyString<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
