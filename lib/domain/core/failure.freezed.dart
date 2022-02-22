// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FailureTearOff {
  const _$FailureTearOff();

  _GettingWithNullValue<T> gettingClientWithNullValue<T>() {
    return _GettingWithNullValue<T>();
  }
}

/// @nodoc
const $Failure = _$FailureTearOff();

/// @nodoc
mixin _$Failure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gettingClientWithNullValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gettingClientWithNullValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gettingClientWithNullValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GettingWithNullValue<T> value)
        gettingClientWithNullValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GettingWithNullValue<T> value)?
        gettingClientWithNullValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GettingWithNullValue<T> value)?
        gettingClientWithNullValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<T, $Res> {
  factory $FailureCopyWith(Failure<T> value, $Res Function(Failure<T>) then) =
      _$FailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$FailureCopyWithImpl<T, $Res> implements $FailureCopyWith<T, $Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure<T> _value;
  // ignore: unused_field
  final $Res Function(Failure<T>) _then;
}

/// @nodoc
abstract class _$GettingWithNullValueCopyWith<T, $Res> {
  factory _$GettingWithNullValueCopyWith(_GettingWithNullValue<T> value,
          $Res Function(_GettingWithNullValue<T>) then) =
      __$GettingWithNullValueCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$GettingWithNullValueCopyWithImpl<T, $Res>
    extends _$FailureCopyWithImpl<T, $Res>
    implements _$GettingWithNullValueCopyWith<T, $Res> {
  __$GettingWithNullValueCopyWithImpl(_GettingWithNullValue<T> _value,
      $Res Function(_GettingWithNullValue<T>) _then)
      : super(_value, (v) => _then(v as _GettingWithNullValue<T>));

  @override
  _GettingWithNullValue<T> get _value =>
      super._value as _GettingWithNullValue<T>;
}

/// @nodoc

class _$_GettingWithNullValue<T>
    with DiagnosticableTreeMixin
    implements _GettingWithNullValue<T> {
  const _$_GettingWithNullValue();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Failure<$T>.gettingClientWithNullValue()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'Failure<$T>.gettingClientWithNullValue'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GettingWithNullValue<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gettingClientWithNullValue,
  }) {
    return gettingClientWithNullValue();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gettingClientWithNullValue,
  }) {
    return gettingClientWithNullValue?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gettingClientWithNullValue,
    required TResult orElse(),
  }) {
    if (gettingClientWithNullValue != null) {
      return gettingClientWithNullValue();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GettingWithNullValue<T> value)
        gettingClientWithNullValue,
  }) {
    return gettingClientWithNullValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GettingWithNullValue<T> value)?
        gettingClientWithNullValue,
  }) {
    return gettingClientWithNullValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GettingWithNullValue<T> value)?
        gettingClientWithNullValue,
    required TResult orElse(),
  }) {
    if (gettingClientWithNullValue != null) {
      return gettingClientWithNullValue(this);
    }
    return orElse();
  }
}

abstract class _GettingWithNullValue<T> implements Failure<T> {
  const factory _GettingWithNullValue() = _$_GettingWithNullValue<T>;
}
