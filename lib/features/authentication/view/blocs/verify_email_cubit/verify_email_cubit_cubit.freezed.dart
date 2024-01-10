// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_email_cubit_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VerifyEmailCubitState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool isSignedIn) success,
    required TResult Function(String message, StackTrace? stackTrace) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool isSignedIn)? success,
    TResult? Function(String message, StackTrace? stackTrace)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool isSignedIn)? success,
    TResult Function(String message, StackTrace? stackTrace)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(VerifyEmailLoading value) loading,
    required TResult Function(VerifyEmailSuccess value) success,
    required TResult Function(VerifyEmailFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(VerifyEmailLoading value)? loading,
    TResult? Function(VerifyEmailSuccess value)? success,
    TResult? Function(VerifyEmailFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(VerifyEmailLoading value)? loading,
    TResult Function(VerifyEmailSuccess value)? success,
    TResult Function(VerifyEmailFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyEmailCubitStateCopyWith<$Res> {
  factory $VerifyEmailCubitStateCopyWith(VerifyEmailCubitState value,
          $Res Function(VerifyEmailCubitState) then) =
      _$VerifyEmailCubitStateCopyWithImpl<$Res, VerifyEmailCubitState>;
}

/// @nodoc
class _$VerifyEmailCubitStateCopyWithImpl<$Res,
        $Val extends VerifyEmailCubitState>
    implements $VerifyEmailCubitStateCopyWith<$Res> {
  _$VerifyEmailCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$VerifyEmailCubitStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'VerifyEmailCubitState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool isSignedIn) success,
    required TResult Function(String message, StackTrace? stackTrace) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool isSignedIn)? success,
    TResult? Function(String message, StackTrace? stackTrace)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool isSignedIn)? success,
    TResult Function(String message, StackTrace? stackTrace)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(VerifyEmailLoading value) loading,
    required TResult Function(VerifyEmailSuccess value) success,
    required TResult Function(VerifyEmailFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(VerifyEmailLoading value)? loading,
    TResult? Function(VerifyEmailSuccess value)? success,
    TResult? Function(VerifyEmailFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(VerifyEmailLoading value)? loading,
    TResult Function(VerifyEmailSuccess value)? success,
    TResult Function(VerifyEmailFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements VerifyEmailCubitState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$VerifyEmailLoadingImplCopyWith<$Res> {
  factory _$$VerifyEmailLoadingImplCopyWith(_$VerifyEmailLoadingImpl value,
          $Res Function(_$VerifyEmailLoadingImpl) then) =
      __$$VerifyEmailLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerifyEmailLoadingImplCopyWithImpl<$Res>
    extends _$VerifyEmailCubitStateCopyWithImpl<$Res, _$VerifyEmailLoadingImpl>
    implements _$$VerifyEmailLoadingImplCopyWith<$Res> {
  __$$VerifyEmailLoadingImplCopyWithImpl(_$VerifyEmailLoadingImpl _value,
      $Res Function(_$VerifyEmailLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VerifyEmailLoadingImpl implements VerifyEmailLoading {
  const _$VerifyEmailLoadingImpl();

  @override
  String toString() {
    return 'VerifyEmailCubitState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VerifyEmailLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool isSignedIn) success,
    required TResult Function(String message, StackTrace? stackTrace) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool isSignedIn)? success,
    TResult? Function(String message, StackTrace? stackTrace)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool isSignedIn)? success,
    TResult Function(String message, StackTrace? stackTrace)? failure,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(VerifyEmailLoading value) loading,
    required TResult Function(VerifyEmailSuccess value) success,
    required TResult Function(VerifyEmailFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(VerifyEmailLoading value)? loading,
    TResult? Function(VerifyEmailSuccess value)? success,
    TResult? Function(VerifyEmailFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(VerifyEmailLoading value)? loading,
    TResult Function(VerifyEmailSuccess value)? success,
    TResult Function(VerifyEmailFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class VerifyEmailLoading implements VerifyEmailCubitState {
  const factory VerifyEmailLoading() = _$VerifyEmailLoadingImpl;
}

/// @nodoc
abstract class _$$VerifyEmailSuccessImplCopyWith<$Res> {
  factory _$$VerifyEmailSuccessImplCopyWith(_$VerifyEmailSuccessImpl value,
          $Res Function(_$VerifyEmailSuccessImpl) then) =
      __$$VerifyEmailSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isSignedIn});
}

/// @nodoc
class __$$VerifyEmailSuccessImplCopyWithImpl<$Res>
    extends _$VerifyEmailCubitStateCopyWithImpl<$Res, _$VerifyEmailSuccessImpl>
    implements _$$VerifyEmailSuccessImplCopyWith<$Res> {
  __$$VerifyEmailSuccessImplCopyWithImpl(_$VerifyEmailSuccessImpl _value,
      $Res Function(_$VerifyEmailSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSignedIn = null,
  }) {
    return _then(_$VerifyEmailSuccessImpl(
      null == isSignedIn
          ? _value.isSignedIn
          : isSignedIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$VerifyEmailSuccessImpl implements VerifyEmailSuccess {
  const _$VerifyEmailSuccessImpl(this.isSignedIn);

  @override
  final bool isSignedIn;

  @override
  String toString() {
    return 'VerifyEmailCubitState.success(isSignedIn: $isSignedIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyEmailSuccessImpl &&
            (identical(other.isSignedIn, isSignedIn) ||
                other.isSignedIn == isSignedIn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSignedIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyEmailSuccessImplCopyWith<_$VerifyEmailSuccessImpl> get copyWith =>
      __$$VerifyEmailSuccessImplCopyWithImpl<_$VerifyEmailSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool isSignedIn) success,
    required TResult Function(String message, StackTrace? stackTrace) failure,
  }) {
    return success(isSignedIn);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool isSignedIn)? success,
    TResult? Function(String message, StackTrace? stackTrace)? failure,
  }) {
    return success?.call(isSignedIn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool isSignedIn)? success,
    TResult Function(String message, StackTrace? stackTrace)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(isSignedIn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(VerifyEmailLoading value) loading,
    required TResult Function(VerifyEmailSuccess value) success,
    required TResult Function(VerifyEmailFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(VerifyEmailLoading value)? loading,
    TResult? Function(VerifyEmailSuccess value)? success,
    TResult? Function(VerifyEmailFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(VerifyEmailLoading value)? loading,
    TResult Function(VerifyEmailSuccess value)? success,
    TResult Function(VerifyEmailFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class VerifyEmailSuccess implements VerifyEmailCubitState {
  const factory VerifyEmailSuccess(final bool isSignedIn) =
      _$VerifyEmailSuccessImpl;

  bool get isSignedIn;
  @JsonKey(ignore: true)
  _$$VerifyEmailSuccessImplCopyWith<_$VerifyEmailSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyEmailFailureImplCopyWith<$Res> {
  factory _$$VerifyEmailFailureImplCopyWith(_$VerifyEmailFailureImpl value,
          $Res Function(_$VerifyEmailFailureImpl) then) =
      __$$VerifyEmailFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, StackTrace? stackTrace});
}

/// @nodoc
class __$$VerifyEmailFailureImplCopyWithImpl<$Res>
    extends _$VerifyEmailCubitStateCopyWithImpl<$Res, _$VerifyEmailFailureImpl>
    implements _$$VerifyEmailFailureImplCopyWith<$Res> {
  __$$VerifyEmailFailureImplCopyWithImpl(_$VerifyEmailFailureImpl _value,
      $Res Function(_$VerifyEmailFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? stackTrace = freezed,
  }) {
    return _then(_$VerifyEmailFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$VerifyEmailFailureImpl implements VerifyEmailFailure {
  const _$VerifyEmailFailureImpl(this.message, this.stackTrace);

  @override
  final String message;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'VerifyEmailCubitState.failure(message: $message, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyEmailFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyEmailFailureImplCopyWith<_$VerifyEmailFailureImpl> get copyWith =>
      __$$VerifyEmailFailureImplCopyWithImpl<_$VerifyEmailFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool isSignedIn) success,
    required TResult Function(String message, StackTrace? stackTrace) failure,
  }) {
    return failure(message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool isSignedIn)? success,
    TResult? Function(String message, StackTrace? stackTrace)? failure,
  }) {
    return failure?.call(message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool isSignedIn)? success,
    TResult Function(String message, StackTrace? stackTrace)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(VerifyEmailLoading value) loading,
    required TResult Function(VerifyEmailSuccess value) success,
    required TResult Function(VerifyEmailFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(VerifyEmailLoading value)? loading,
    TResult? Function(VerifyEmailSuccess value)? success,
    TResult? Function(VerifyEmailFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(VerifyEmailLoading value)? loading,
    TResult Function(VerifyEmailSuccess value)? success,
    TResult Function(VerifyEmailFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class VerifyEmailFailure implements VerifyEmailCubitState {
  const factory VerifyEmailFailure(
          final String message, final StackTrace? stackTrace) =
      _$VerifyEmailFailureImpl;

  String get message;
  StackTrace? get stackTrace;
  @JsonKey(ignore: true)
  _$$VerifyEmailFailureImplCopyWith<_$VerifyEmailFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
