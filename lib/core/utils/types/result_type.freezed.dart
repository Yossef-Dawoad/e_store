// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Result<T, E> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(E failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(E failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(E failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<T, E> value) success,
    required TResult Function(Failure<T, E> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Success<T, E> value)? success,
    TResult? Function(Failure<T, E> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<T, E> value)? success,
    TResult Function(Failure<T, E> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<T, E, $Res> {
  factory $ResultCopyWith(
          Result<T, E> value, $Res Function(Result<T, E>) then) =
      _$ResultCopyWithImpl<T, E, $Res, Result<T, E>>;
}

/// @nodoc
class _$ResultCopyWithImpl<T, E, $Res, $Val extends Result<T, E>>
    implements $ResultCopyWith<T, E, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<T, E, $Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl<T, E> value, $Res Function(_$SuccessImpl<T, E>) then) =
      __$$SuccessImplCopyWithImpl<T, E, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<T, E, $Res>
    extends _$ResultCopyWithImpl<T, E, $Res, _$SuccessImpl<T, E>>
    implements _$$SuccessImplCopyWith<T, E, $Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl<T, E> _value, $Res Function(_$SuccessImpl<T, E>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SuccessImpl<T, E>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SuccessImpl<T, E> extends Success<T, E> {
  const _$SuccessImpl(this.data) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'Result<$T, $E>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl<T, E> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<T, E, _$SuccessImpl<T, E>> get copyWith =>
      __$$SuccessImplCopyWithImpl<T, E, _$SuccessImpl<T, E>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(E failure) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(E failure)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(E failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<T, E> value) success,
    required TResult Function(Failure<T, E> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Success<T, E> value)? success,
    TResult? Function(Failure<T, E> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<T, E> value)? success,
    TResult Function(Failure<T, E> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<T, E> extends Result<T, E> {
  const factory Success(final T data) = _$SuccessImpl<T, E>;
  const Success._() : super._();

  T get data;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<T, E, _$SuccessImpl<T, E>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<T, E, $Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl<T, E> value, $Res Function(_$FailureImpl<T, E>) then) =
      __$$FailureImplCopyWithImpl<T, E, $Res>;
  @useResult
  $Res call({E failure});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<T, E, $Res>
    extends _$ResultCopyWithImpl<T, E, $Res, _$FailureImpl<T, E>>
    implements _$$FailureImplCopyWith<T, E, $Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl<T, E> _value, $Res Function(_$FailureImpl<T, E>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$FailureImpl<T, E>(
      freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as E,
    ));
  }
}

/// @nodoc

class _$FailureImpl<T, E> extends Failure<T, E> {
  const _$FailureImpl(this.failure) : super._();

  @override
  final E failure;

  @override
  String toString() {
    return 'Result<$T, $E>.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl<T, E> &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<T, E, _$FailureImpl<T, E>> get copyWith =>
      __$$FailureImplCopyWithImpl<T, E, _$FailureImpl<T, E>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(E failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(E failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(E failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<T, E> value) success,
    required TResult Function(Failure<T, E> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Success<T, E> value)? success,
    TResult? Function(Failure<T, E> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<T, E> value)? success,
    TResult Function(Failure<T, E> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure<T, E> extends Result<T, E> {
  const factory Failure(final E failure) = _$FailureImpl<T, E>;
  const Failure._() : super._();

  E get failure;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<T, E, _$FailureImpl<T, E>> get copyWith =>
      throw _privateConstructorUsedError;
}
