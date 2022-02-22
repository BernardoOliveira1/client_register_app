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

  _OutOfRegistrationRangeLimit<T> outOfRegistrationRangeLimit<T>(
      {required T failedValue}) {
    return _OutOfRegistrationRangeLimit<T>(
      failedValue: failedValue,
    );
  }

  _NotANumber<T> notANumber<T>({required T failedValue}) {
    return _NotANumber<T>(
      failedValue: failedValue,
    );
  }

  _InvalidEmail<T> invalidEmail<T>({required T failedValue}) {
    return _InvalidEmail<T>(
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
    required TResult Function(T failedValue) outOfRegistrationRangeLimit,
    required TResult Function(T failedValue) notANumber,
    required TResult Function(T failedValue) invalidEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? clientNotFound,
    TResult Function(T failedValue)? emptyString,
    TResult Function(T failedValue)? outOfRegistrationRangeLimit,
    TResult Function(T failedValue)? notANumber,
    TResult Function(T failedValue)? invalidEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? clientNotFound,
    TResult Function(T failedValue)? emptyString,
    TResult Function(T failedValue)? outOfRegistrationRangeLimit,
    TResult Function(T failedValue)? notANumber,
    TResult Function(T failedValue)? invalidEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientNotFound<T> value) clientNotFound,
    required TResult Function(_EmptyString<T> value) emptyString,
    required TResult Function(_OutOfRegistrationRangeLimit<T> value)
        outOfRegistrationRangeLimit,
    required TResult Function(_NotANumber<T> value) notANumber,
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClientNotFound<T> value)? clientNotFound,
    TResult Function(_EmptyString<T> value)? emptyString,
    TResult Function(_OutOfRegistrationRangeLimit<T> value)?
        outOfRegistrationRangeLimit,
    TResult Function(_NotANumber<T> value)? notANumber,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientNotFound<T> value)? clientNotFound,
    TResult Function(_EmptyString<T> value)? emptyString,
    TResult Function(_OutOfRegistrationRangeLimit<T> value)?
        outOfRegistrationRangeLimit,
    TResult Function(_NotANumber<T> value)? notANumber,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
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
    required TResult Function(T failedValue) outOfRegistrationRangeLimit,
    required TResult Function(T failedValue) notANumber,
    required TResult Function(T failedValue) invalidEmail,
  }) {
    return clientNotFound(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? clientNotFound,
    TResult Function(T failedValue)? emptyString,
    TResult Function(T failedValue)? outOfRegistrationRangeLimit,
    TResult Function(T failedValue)? notANumber,
    TResult Function(T failedValue)? invalidEmail,
  }) {
    return clientNotFound?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? clientNotFound,
    TResult Function(T failedValue)? emptyString,
    TResult Function(T failedValue)? outOfRegistrationRangeLimit,
    TResult Function(T failedValue)? notANumber,
    TResult Function(T failedValue)? invalidEmail,
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
    required TResult Function(_OutOfRegistrationRangeLimit<T> value)
        outOfRegistrationRangeLimit,
    required TResult Function(_NotANumber<T> value) notANumber,
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
  }) {
    return clientNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClientNotFound<T> value)? clientNotFound,
    TResult Function(_EmptyString<T> value)? emptyString,
    TResult Function(_OutOfRegistrationRangeLimit<T> value)?
        outOfRegistrationRangeLimit,
    TResult Function(_NotANumber<T> value)? notANumber,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
  }) {
    return clientNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientNotFound<T> value)? clientNotFound,
    TResult Function(_EmptyString<T> value)? emptyString,
    TResult Function(_OutOfRegistrationRangeLimit<T> value)?
        outOfRegistrationRangeLimit,
    TResult Function(_NotANumber<T> value)? notANumber,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
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
    required TResult Function(T failedValue) outOfRegistrationRangeLimit,
    required TResult Function(T failedValue) notANumber,
    required TResult Function(T failedValue) invalidEmail,
  }) {
    return emptyString(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? clientNotFound,
    TResult Function(T failedValue)? emptyString,
    TResult Function(T failedValue)? outOfRegistrationRangeLimit,
    TResult Function(T failedValue)? notANumber,
    TResult Function(T failedValue)? invalidEmail,
  }) {
    return emptyString?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? clientNotFound,
    TResult Function(T failedValue)? emptyString,
    TResult Function(T failedValue)? outOfRegistrationRangeLimit,
    TResult Function(T failedValue)? notANumber,
    TResult Function(T failedValue)? invalidEmail,
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
    required TResult Function(_OutOfRegistrationRangeLimit<T> value)
        outOfRegistrationRangeLimit,
    required TResult Function(_NotANumber<T> value) notANumber,
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
  }) {
    return emptyString(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClientNotFound<T> value)? clientNotFound,
    TResult Function(_EmptyString<T> value)? emptyString,
    TResult Function(_OutOfRegistrationRangeLimit<T> value)?
        outOfRegistrationRangeLimit,
    TResult Function(_NotANumber<T> value)? notANumber,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
  }) {
    return emptyString?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientNotFound<T> value)? clientNotFound,
    TResult Function(_EmptyString<T> value)? emptyString,
    TResult Function(_OutOfRegistrationRangeLimit<T> value)?
        outOfRegistrationRangeLimit,
    TResult Function(_NotANumber<T> value)? notANumber,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
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

/// @nodoc
abstract class _$OutOfRegistrationRangeLimitCopyWith<T, $Res>
    implements $ClientValueFailureCopyWith<T, $Res> {
  factory _$OutOfRegistrationRangeLimitCopyWith(
          _OutOfRegistrationRangeLimit<T> value,
          $Res Function(_OutOfRegistrationRangeLimit<T>) then) =
      __$OutOfRegistrationRangeLimitCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$OutOfRegistrationRangeLimitCopyWithImpl<T, $Res>
    extends _$ClientValueFailureCopyWithImpl<T, $Res>
    implements _$OutOfRegistrationRangeLimitCopyWith<T, $Res> {
  __$OutOfRegistrationRangeLimitCopyWithImpl(
      _OutOfRegistrationRangeLimit<T> _value,
      $Res Function(_OutOfRegistrationRangeLimit<T>) _then)
      : super(_value, (v) => _then(v as _OutOfRegistrationRangeLimit<T>));

  @override
  _OutOfRegistrationRangeLimit<T> get _value =>
      super._value as _OutOfRegistrationRangeLimit<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_OutOfRegistrationRangeLimit<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_OutOfRegistrationRangeLimit<T>
    implements _OutOfRegistrationRangeLimit<T> {
  const _$_OutOfRegistrationRangeLimit({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ClientValueFailure<$T>.outOfRegistrationRangeLimit(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OutOfRegistrationRangeLimit<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$OutOfRegistrationRangeLimitCopyWith<T, _OutOfRegistrationRangeLimit<T>>
      get copyWith => __$OutOfRegistrationRangeLimitCopyWithImpl<T,
          _OutOfRegistrationRangeLimit<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) clientNotFound,
    required TResult Function(T failedValue) emptyString,
    required TResult Function(T failedValue) outOfRegistrationRangeLimit,
    required TResult Function(T failedValue) notANumber,
    required TResult Function(T failedValue) invalidEmail,
  }) {
    return outOfRegistrationRangeLimit(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? clientNotFound,
    TResult Function(T failedValue)? emptyString,
    TResult Function(T failedValue)? outOfRegistrationRangeLimit,
    TResult Function(T failedValue)? notANumber,
    TResult Function(T failedValue)? invalidEmail,
  }) {
    return outOfRegistrationRangeLimit?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? clientNotFound,
    TResult Function(T failedValue)? emptyString,
    TResult Function(T failedValue)? outOfRegistrationRangeLimit,
    TResult Function(T failedValue)? notANumber,
    TResult Function(T failedValue)? invalidEmail,
    required TResult orElse(),
  }) {
    if (outOfRegistrationRangeLimit != null) {
      return outOfRegistrationRangeLimit(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientNotFound<T> value) clientNotFound,
    required TResult Function(_EmptyString<T> value) emptyString,
    required TResult Function(_OutOfRegistrationRangeLimit<T> value)
        outOfRegistrationRangeLimit,
    required TResult Function(_NotANumber<T> value) notANumber,
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
  }) {
    return outOfRegistrationRangeLimit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClientNotFound<T> value)? clientNotFound,
    TResult Function(_EmptyString<T> value)? emptyString,
    TResult Function(_OutOfRegistrationRangeLimit<T> value)?
        outOfRegistrationRangeLimit,
    TResult Function(_NotANumber<T> value)? notANumber,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
  }) {
    return outOfRegistrationRangeLimit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientNotFound<T> value)? clientNotFound,
    TResult Function(_EmptyString<T> value)? emptyString,
    TResult Function(_OutOfRegistrationRangeLimit<T> value)?
        outOfRegistrationRangeLimit,
    TResult Function(_NotANumber<T> value)? notANumber,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    required TResult orElse(),
  }) {
    if (outOfRegistrationRangeLimit != null) {
      return outOfRegistrationRangeLimit(this);
    }
    return orElse();
  }
}

abstract class _OutOfRegistrationRangeLimit<T>
    implements ClientValueFailure<T> {
  const factory _OutOfRegistrationRangeLimit({required T failedValue}) =
      _$_OutOfRegistrationRangeLimit<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$OutOfRegistrationRangeLimitCopyWith<T, _OutOfRegistrationRangeLimit<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NotANumberCopyWith<T, $Res>
    implements $ClientValueFailureCopyWith<T, $Res> {
  factory _$NotANumberCopyWith(
          _NotANumber<T> value, $Res Function(_NotANumber<T>) then) =
      __$NotANumberCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$NotANumberCopyWithImpl<T, $Res>
    extends _$ClientValueFailureCopyWithImpl<T, $Res>
    implements _$NotANumberCopyWith<T, $Res> {
  __$NotANumberCopyWithImpl(
      _NotANumber<T> _value, $Res Function(_NotANumber<T>) _then)
      : super(_value, (v) => _then(v as _NotANumber<T>));

  @override
  _NotANumber<T> get _value => super._value as _NotANumber<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_NotANumber<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_NotANumber<T> implements _NotANumber<T> {
  const _$_NotANumber({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ClientValueFailure<$T>.notANumber(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotANumber<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$NotANumberCopyWith<T, _NotANumber<T>> get copyWith =>
      __$NotANumberCopyWithImpl<T, _NotANumber<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) clientNotFound,
    required TResult Function(T failedValue) emptyString,
    required TResult Function(T failedValue) outOfRegistrationRangeLimit,
    required TResult Function(T failedValue) notANumber,
    required TResult Function(T failedValue) invalidEmail,
  }) {
    return notANumber(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? clientNotFound,
    TResult Function(T failedValue)? emptyString,
    TResult Function(T failedValue)? outOfRegistrationRangeLimit,
    TResult Function(T failedValue)? notANumber,
    TResult Function(T failedValue)? invalidEmail,
  }) {
    return notANumber?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? clientNotFound,
    TResult Function(T failedValue)? emptyString,
    TResult Function(T failedValue)? outOfRegistrationRangeLimit,
    TResult Function(T failedValue)? notANumber,
    TResult Function(T failedValue)? invalidEmail,
    required TResult orElse(),
  }) {
    if (notANumber != null) {
      return notANumber(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientNotFound<T> value) clientNotFound,
    required TResult Function(_EmptyString<T> value) emptyString,
    required TResult Function(_OutOfRegistrationRangeLimit<T> value)
        outOfRegistrationRangeLimit,
    required TResult Function(_NotANumber<T> value) notANumber,
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
  }) {
    return notANumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClientNotFound<T> value)? clientNotFound,
    TResult Function(_EmptyString<T> value)? emptyString,
    TResult Function(_OutOfRegistrationRangeLimit<T> value)?
        outOfRegistrationRangeLimit,
    TResult Function(_NotANumber<T> value)? notANumber,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
  }) {
    return notANumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientNotFound<T> value)? clientNotFound,
    TResult Function(_EmptyString<T> value)? emptyString,
    TResult Function(_OutOfRegistrationRangeLimit<T> value)?
        outOfRegistrationRangeLimit,
    TResult Function(_NotANumber<T> value)? notANumber,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    required TResult orElse(),
  }) {
    if (notANumber != null) {
      return notANumber(this);
    }
    return orElse();
  }
}

abstract class _NotANumber<T> implements ClientValueFailure<T> {
  const factory _NotANumber({required T failedValue}) = _$_NotANumber<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$NotANumberCopyWith<T, _NotANumber<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InvalidEmailCopyWith<T, $Res>
    implements $ClientValueFailureCopyWith<T, $Res> {
  factory _$InvalidEmailCopyWith(
          _InvalidEmail<T> value, $Res Function(_InvalidEmail<T>) then) =
      __$InvalidEmailCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ClientValueFailureCopyWithImpl<T, $Res>
    implements _$InvalidEmailCopyWith<T, $Res> {
  __$InvalidEmailCopyWithImpl(
      _InvalidEmail<T> _value, $Res Function(_InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as _InvalidEmail<T>));

  @override
  _InvalidEmail<T> get _value => super._value as _InvalidEmail<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_InvalidEmail<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_InvalidEmail<T> implements _InvalidEmail<T> {
  const _$_InvalidEmail({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ClientValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InvalidEmail<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$InvalidEmailCopyWith<T, _InvalidEmail<T>> get copyWith =>
      __$InvalidEmailCopyWithImpl<T, _InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) clientNotFound,
    required TResult Function(T failedValue) emptyString,
    required TResult Function(T failedValue) outOfRegistrationRangeLimit,
    required TResult Function(T failedValue) notANumber,
    required TResult Function(T failedValue) invalidEmail,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? clientNotFound,
    TResult Function(T failedValue)? emptyString,
    TResult Function(T failedValue)? outOfRegistrationRangeLimit,
    TResult Function(T failedValue)? notANumber,
    TResult Function(T failedValue)? invalidEmail,
  }) {
    return invalidEmail?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? clientNotFound,
    TResult Function(T failedValue)? emptyString,
    TResult Function(T failedValue)? outOfRegistrationRangeLimit,
    TResult Function(T failedValue)? notANumber,
    TResult Function(T failedValue)? invalidEmail,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientNotFound<T> value) clientNotFound,
    required TResult Function(_EmptyString<T> value) emptyString,
    required TResult Function(_OutOfRegistrationRangeLimit<T> value)
        outOfRegistrationRangeLimit,
    required TResult Function(_NotANumber<T> value) notANumber,
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClientNotFound<T> value)? clientNotFound,
    TResult Function(_EmptyString<T> value)? emptyString,
    TResult Function(_OutOfRegistrationRangeLimit<T> value)?
        outOfRegistrationRangeLimit,
    TResult Function(_NotANumber<T> value)? notANumber,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientNotFound<T> value)? clientNotFound,
    TResult Function(_EmptyString<T> value)? emptyString,
    TResult Function(_OutOfRegistrationRangeLimit<T> value)?
        outOfRegistrationRangeLimit,
    TResult Function(_NotANumber<T> value)? notANumber,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class _InvalidEmail<T> implements ClientValueFailure<T> {
  const factory _InvalidEmail({required T failedValue}) = _$_InvalidEmail<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$InvalidEmailCopyWith<T, _InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
