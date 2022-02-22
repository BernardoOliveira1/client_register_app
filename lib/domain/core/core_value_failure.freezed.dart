// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'core_value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  _Client<T> client<T>(ClientValueFailure<T> f) {
    return _Client<T>(
      f,
    );
  }
}

/// @nodoc
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  ClientValueFailure<T> get f => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ClientValueFailure<T> f) client,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ClientValueFailure<T> f)? client,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ClientValueFailure<T> f)? client,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Client<T> value) client,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Client<T> value)? client,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Client<T> value)? client,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({ClientValueFailure<T> f});

  $ClientValueFailureCopyWith<T, $Res> get f;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object? f = freezed,
  }) {
    return _then(_value.copyWith(
      f: f == freezed
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as ClientValueFailure<T>,
    ));
  }

  @override
  $ClientValueFailureCopyWith<T, $Res> get f {
    return $ClientValueFailureCopyWith<T, $Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc
abstract class _$ClientCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$ClientCopyWith(_Client<T> value, $Res Function(_Client<T>) then) =
      __$ClientCopyWithImpl<T, $Res>;
  @override
  $Res call({ClientValueFailure<T> f});

  @override
  $ClientValueFailureCopyWith<T, $Res> get f;
}

/// @nodoc
class __$ClientCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$ClientCopyWith<T, $Res> {
  __$ClientCopyWithImpl(_Client<T> _value, $Res Function(_Client<T>) _then)
      : super(_value, (v) => _then(v as _Client<T>));

  @override
  _Client<T> get _value => super._value as _Client<T>;

  @override
  $Res call({
    Object? f = freezed,
  }) {
    return _then(_Client<T>(
      f == freezed
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as ClientValueFailure<T>,
    ));
  }
}

/// @nodoc

class _$_Client<T> implements _Client<T> {
  const _$_Client(this.f);

  @override
  final ClientValueFailure<T> f;

  @override
  String toString() {
    return 'ValueFailure<$T>.client(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Client<T> &&
            const DeepCollectionEquality().equals(other.f, f));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(f));

  @JsonKey(ignore: true)
  @override
  _$ClientCopyWith<T, _Client<T>> get copyWith =>
      __$ClientCopyWithImpl<T, _Client<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ClientValueFailure<T> f) client,
  }) {
    return client(f);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ClientValueFailure<T> f)? client,
  }) {
    return client?.call(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ClientValueFailure<T> f)? client,
    required TResult orElse(),
  }) {
    if (client != null) {
      return client(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Client<T> value) client,
  }) {
    return client(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Client<T> value)? client,
  }) {
    return client?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Client<T> value)? client,
    required TResult orElse(),
  }) {
    if (client != null) {
      return client(this);
    }
    return orElse();
  }
}

abstract class _Client<T> implements ValueFailure<T> {
  const factory _Client(ClientValueFailure<T> f) = _$_Client<T>;

  @override
  ClientValueFailure<T> get f;
  @override
  @JsonKey(ignore: true)
  _$ClientCopyWith<T, _Client<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
