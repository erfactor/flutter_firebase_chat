// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'action_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ActionState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(T value) data,
    required TResult Function() loading,
    required TResult Function(Object error, StackTrace? stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(T value)? data,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace? stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(T value)? data,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace? stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ActionInit<T> value) init,
    required TResult Function(_ActionData<T> value) data,
    required TResult Function(_ActionLoading<T> value) loading,
    required TResult Function(_ActionError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ActionInit<T> value)? init,
    TResult Function(_ActionData<T> value)? data,
    TResult Function(_ActionLoading<T> value)? loading,
    TResult Function(_ActionError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActionInit<T> value)? init,
    TResult Function(_ActionData<T> value)? data,
    TResult Function(_ActionLoading<T> value)? loading,
    TResult Function(_ActionError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionStateCopyWith<T, $Res> {
  factory $ActionStateCopyWith(
          ActionState<T> value, $Res Function(ActionState<T>) then) =
      _$ActionStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ActionStateCopyWithImpl<T, $Res>
    implements $ActionStateCopyWith<T, $Res> {
  _$ActionStateCopyWithImpl(this._value, this._then);

  final ActionState<T> _value;
  // ignore: unused_field
  final $Res Function(ActionState<T>) _then;
}

/// @nodoc
abstract class _$$_ActionInitCopyWith<T, $Res> {
  factory _$$_ActionInitCopyWith(
          _$_ActionInit<T> value, $Res Function(_$_ActionInit<T>) then) =
      __$$_ActionInitCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_ActionInitCopyWithImpl<T, $Res>
    extends _$ActionStateCopyWithImpl<T, $Res>
    implements _$$_ActionInitCopyWith<T, $Res> {
  __$$_ActionInitCopyWithImpl(
      _$_ActionInit<T> _value, $Res Function(_$_ActionInit<T>) _then)
      : super(_value, (v) => _then(v as _$_ActionInit<T>));

  @override
  _$_ActionInit<T> get _value => super._value as _$_ActionInit<T>;
}

/// @nodoc

class _$_ActionInit<T> extends _ActionInit<T> {
  const _$_ActionInit() : super._();

  @override
  String toString() {
    return 'ActionState<$T>.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ActionInit<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(T value) data,
    required TResult Function() loading,
    required TResult Function(Object error, StackTrace? stackTrace) error,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(T value)? data,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace? stackTrace)? error,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(T value)? data,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace? stackTrace)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ActionInit<T> value) init,
    required TResult Function(_ActionData<T> value) data,
    required TResult Function(_ActionLoading<T> value) loading,
    required TResult Function(_ActionError<T> value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ActionInit<T> value)? init,
    TResult Function(_ActionData<T> value)? data,
    TResult Function(_ActionLoading<T> value)? loading,
    TResult Function(_ActionError<T> value)? error,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActionInit<T> value)? init,
    TResult Function(_ActionData<T> value)? data,
    TResult Function(_ActionLoading<T> value)? loading,
    TResult Function(_ActionError<T> value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _ActionInit<T> extends ActionState<T> {
  const factory _ActionInit() = _$_ActionInit<T>;
  const _ActionInit._() : super._();
}

/// @nodoc
abstract class _$$_ActionDataCopyWith<T, $Res> {
  factory _$$_ActionDataCopyWith(
          _$_ActionData<T> value, $Res Function(_$_ActionData<T>) then) =
      __$$_ActionDataCopyWithImpl<T, $Res>;
  $Res call({T value});
}

/// @nodoc
class __$$_ActionDataCopyWithImpl<T, $Res>
    extends _$ActionStateCopyWithImpl<T, $Res>
    implements _$$_ActionDataCopyWith<T, $Res> {
  __$$_ActionDataCopyWithImpl(
      _$_ActionData<T> _value, $Res Function(_$_ActionData<T>) _then)
      : super(_value, (v) => _then(v as _$_ActionData<T>));

  @override
  _$_ActionData<T> get _value => super._value as _$_ActionData<T>;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_ActionData<T>(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_ActionData<T> extends _ActionData<T> {
  const _$_ActionData(this.value) : super._();

  @override
  final T value;

  @override
  String toString() {
    return 'ActionState<$T>.data(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActionData<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_ActionDataCopyWith<T, _$_ActionData<T>> get copyWith =>
      __$$_ActionDataCopyWithImpl<T, _$_ActionData<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(T value) data,
    required TResult Function() loading,
    required TResult Function(Object error, StackTrace? stackTrace) error,
  }) {
    return data(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(T value)? data,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace? stackTrace)? error,
  }) {
    return data?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(T value)? data,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace? stackTrace)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ActionInit<T> value) init,
    required TResult Function(_ActionData<T> value) data,
    required TResult Function(_ActionLoading<T> value) loading,
    required TResult Function(_ActionError<T> value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ActionInit<T> value)? init,
    TResult Function(_ActionData<T> value)? data,
    TResult Function(_ActionLoading<T> value)? loading,
    TResult Function(_ActionError<T> value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActionInit<T> value)? init,
    TResult Function(_ActionData<T> value)? data,
    TResult Function(_ActionLoading<T> value)? loading,
    TResult Function(_ActionError<T> value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _ActionData<T> extends ActionState<T> {
  const factory _ActionData(final T value) = _$_ActionData<T>;
  const _ActionData._() : super._();

  T get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ActionDataCopyWith<T, _$_ActionData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ActionLoadingCopyWith<T, $Res> {
  factory _$$_ActionLoadingCopyWith(
          _$_ActionLoading<T> value, $Res Function(_$_ActionLoading<T>) then) =
      __$$_ActionLoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_ActionLoadingCopyWithImpl<T, $Res>
    extends _$ActionStateCopyWithImpl<T, $Res>
    implements _$$_ActionLoadingCopyWith<T, $Res> {
  __$$_ActionLoadingCopyWithImpl(
      _$_ActionLoading<T> _value, $Res Function(_$_ActionLoading<T>) _then)
      : super(_value, (v) => _then(v as _$_ActionLoading<T>));

  @override
  _$_ActionLoading<T> get _value => super._value as _$_ActionLoading<T>;
}

/// @nodoc

class _$_ActionLoading<T> extends _ActionLoading<T> {
  const _$_ActionLoading() : super._();

  @override
  String toString() {
    return 'ActionState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ActionLoading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(T value) data,
    required TResult Function() loading,
    required TResult Function(Object error, StackTrace? stackTrace) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(T value)? data,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace? stackTrace)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(T value)? data,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace? stackTrace)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ActionInit<T> value) init,
    required TResult Function(_ActionData<T> value) data,
    required TResult Function(_ActionLoading<T> value) loading,
    required TResult Function(_ActionError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ActionInit<T> value)? init,
    TResult Function(_ActionData<T> value)? data,
    TResult Function(_ActionLoading<T> value)? loading,
    TResult Function(_ActionError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActionInit<T> value)? init,
    TResult Function(_ActionData<T> value)? data,
    TResult Function(_ActionLoading<T> value)? loading,
    TResult Function(_ActionError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ActionLoading<T> extends ActionState<T> {
  const factory _ActionLoading() = _$_ActionLoading<T>;
  const _ActionLoading._() : super._();
}

/// @nodoc
abstract class _$$_ActionErrorCopyWith<T, $Res> {
  factory _$$_ActionErrorCopyWith(
          _$_ActionError<T> value, $Res Function(_$_ActionError<T>) then) =
      __$$_ActionErrorCopyWithImpl<T, $Res>;
  $Res call({Object error, StackTrace? stackTrace});
}

/// @nodoc
class __$$_ActionErrorCopyWithImpl<T, $Res>
    extends _$ActionStateCopyWithImpl<T, $Res>
    implements _$$_ActionErrorCopyWith<T, $Res> {
  __$$_ActionErrorCopyWithImpl(
      _$_ActionError<T> _value, $Res Function(_$_ActionError<T>) _then)
      : super(_value, (v) => _then(v as _$_ActionError<T>));

  @override
  _$_ActionError<T> get _value => super._value as _$_ActionError<T>;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$_ActionError<T>(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$_ActionError<T> extends _ActionError<T> {
  const _$_ActionError(this.error, {this.stackTrace}) : super._();

  @override
  final Object error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'ActionState<$T>.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActionError<T> &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  _$$_ActionErrorCopyWith<T, _$_ActionError<T>> get copyWith =>
      __$$_ActionErrorCopyWithImpl<T, _$_ActionError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(T value) data,
    required TResult Function() loading,
    required TResult Function(Object error, StackTrace? stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(T value)? data,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace? stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(T value)? data,
    TResult Function()? loading,
    TResult Function(Object error, StackTrace? stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ActionInit<T> value) init,
    required TResult Function(_ActionData<T> value) data,
    required TResult Function(_ActionLoading<T> value) loading,
    required TResult Function(_ActionError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ActionInit<T> value)? init,
    TResult Function(_ActionData<T> value)? data,
    TResult Function(_ActionLoading<T> value)? loading,
    TResult Function(_ActionError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActionInit<T> value)? init,
    TResult Function(_ActionData<T> value)? data,
    TResult Function(_ActionLoading<T> value)? loading,
    TResult Function(_ActionError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ActionError<T> extends ActionState<T> {
  const factory _ActionError(final Object error,
      {final StackTrace? stackTrace}) = _$_ActionError<T>;
  const _ActionError._() : super._();

  Object get error => throw _privateConstructorUsedError;
  StackTrace? get stackTrace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ActionErrorCopyWith<T, _$_ActionError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
