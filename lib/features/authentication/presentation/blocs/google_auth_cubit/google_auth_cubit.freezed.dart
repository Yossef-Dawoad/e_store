// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'google_auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GoogleAuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserAccountEntity user) success,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserAccountEntity user)? success,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserAccountEntity user)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GoogleAuthLoading value) loading,
    required TResult Function(GoogleAuthSuccess value) success,
    required TResult Function(GoogleAuthFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GoogleAuthLoading value)? loading,
    TResult? Function(GoogleAuthSuccess value)? success,
    TResult? Function(GoogleAuthFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GoogleAuthLoading value)? loading,
    TResult Function(GoogleAuthSuccess value)? success,
    TResult Function(GoogleAuthFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleAuthStateCopyWith<$Res> {
  factory $GoogleAuthStateCopyWith(
          GoogleAuthState value, $Res Function(GoogleAuthState) then) =
      _$GoogleAuthStateCopyWithImpl<$Res, GoogleAuthState>;
}

/// @nodoc
class _$GoogleAuthStateCopyWithImpl<$Res, $Val extends GoogleAuthState>
    implements $GoogleAuthStateCopyWith<$Res> {
  _$GoogleAuthStateCopyWithImpl(this._value, this._then);

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
    extends _$GoogleAuthStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'GoogleAuthState.initial()';
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
    required TResult Function(UserAccountEntity user) success,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserAccountEntity user)? success,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserAccountEntity user)? success,
    TResult Function(String message)? failure,
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
    required TResult Function(GoogleAuthLoading value) loading,
    required TResult Function(GoogleAuthSuccess value) success,
    required TResult Function(GoogleAuthFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GoogleAuthLoading value)? loading,
    TResult? Function(GoogleAuthSuccess value)? success,
    TResult? Function(GoogleAuthFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GoogleAuthLoading value)? loading,
    TResult Function(GoogleAuthSuccess value)? success,
    TResult Function(GoogleAuthFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GoogleAuthState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GoogleAuthLoadingImplCopyWith<$Res> {
  factory _$$GoogleAuthLoadingImplCopyWith(_$GoogleAuthLoadingImpl value,
          $Res Function(_$GoogleAuthLoadingImpl) then) =
      __$$GoogleAuthLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoogleAuthLoadingImplCopyWithImpl<$Res>
    extends _$GoogleAuthStateCopyWithImpl<$Res, _$GoogleAuthLoadingImpl>
    implements _$$GoogleAuthLoadingImplCopyWith<$Res> {
  __$$GoogleAuthLoadingImplCopyWithImpl(_$GoogleAuthLoadingImpl _value,
      $Res Function(_$GoogleAuthLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GoogleAuthLoadingImpl implements GoogleAuthLoading {
  const _$GoogleAuthLoadingImpl();

  @override
  String toString() {
    return 'GoogleAuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GoogleAuthLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserAccountEntity user) success,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserAccountEntity user)? success,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserAccountEntity user)? success,
    TResult Function(String message)? failure,
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
    required TResult Function(GoogleAuthLoading value) loading,
    required TResult Function(GoogleAuthSuccess value) success,
    required TResult Function(GoogleAuthFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GoogleAuthLoading value)? loading,
    TResult? Function(GoogleAuthSuccess value)? success,
    TResult? Function(GoogleAuthFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GoogleAuthLoading value)? loading,
    TResult Function(GoogleAuthSuccess value)? success,
    TResult Function(GoogleAuthFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GoogleAuthLoading implements GoogleAuthState {
  const factory GoogleAuthLoading() = _$GoogleAuthLoadingImpl;
}

/// @nodoc
abstract class _$$GoogleAuthSuccessImplCopyWith<$Res> {
  factory _$$GoogleAuthSuccessImplCopyWith(_$GoogleAuthSuccessImpl value,
          $Res Function(_$GoogleAuthSuccessImpl) then) =
      __$$GoogleAuthSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserAccountEntity user});
}

/// @nodoc
class __$$GoogleAuthSuccessImplCopyWithImpl<$Res>
    extends _$GoogleAuthStateCopyWithImpl<$Res, _$GoogleAuthSuccessImpl>
    implements _$$GoogleAuthSuccessImplCopyWith<$Res> {
  __$$GoogleAuthSuccessImplCopyWithImpl(_$GoogleAuthSuccessImpl _value,
      $Res Function(_$GoogleAuthSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$GoogleAuthSuccessImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserAccountEntity,
    ));
  }
}

/// @nodoc

class _$GoogleAuthSuccessImpl implements GoogleAuthSuccess {
  const _$GoogleAuthSuccessImpl(this.user);

  @override
  final UserAccountEntity user;

  @override
  String toString() {
    return 'GoogleAuthState.success(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleAuthSuccessImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoogleAuthSuccessImplCopyWith<_$GoogleAuthSuccessImpl> get copyWith =>
      __$$GoogleAuthSuccessImplCopyWithImpl<_$GoogleAuthSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserAccountEntity user) success,
    required TResult Function(String message) failure,
  }) {
    return success(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserAccountEntity user)? success,
    TResult? Function(String message)? failure,
  }) {
    return success?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserAccountEntity user)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GoogleAuthLoading value) loading,
    required TResult Function(GoogleAuthSuccess value) success,
    required TResult Function(GoogleAuthFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GoogleAuthLoading value)? loading,
    TResult? Function(GoogleAuthSuccess value)? success,
    TResult? Function(GoogleAuthFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GoogleAuthLoading value)? loading,
    TResult Function(GoogleAuthSuccess value)? success,
    TResult Function(GoogleAuthFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class GoogleAuthSuccess implements GoogleAuthState {
  const factory GoogleAuthSuccess(final UserAccountEntity user) =
      _$GoogleAuthSuccessImpl;

  UserAccountEntity get user;
  @JsonKey(ignore: true)
  _$$GoogleAuthSuccessImplCopyWith<_$GoogleAuthSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GoogleAuthFailureImplCopyWith<$Res> {
  factory _$$GoogleAuthFailureImplCopyWith(_$GoogleAuthFailureImpl value,
          $Res Function(_$GoogleAuthFailureImpl) then) =
      __$$GoogleAuthFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$GoogleAuthFailureImplCopyWithImpl<$Res>
    extends _$GoogleAuthStateCopyWithImpl<$Res, _$GoogleAuthFailureImpl>
    implements _$$GoogleAuthFailureImplCopyWith<$Res> {
  __$$GoogleAuthFailureImplCopyWithImpl(_$GoogleAuthFailureImpl _value,
      $Res Function(_$GoogleAuthFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$GoogleAuthFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GoogleAuthFailureImpl implements GoogleAuthFailure {
  const _$GoogleAuthFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'GoogleAuthState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleAuthFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoogleAuthFailureImplCopyWith<_$GoogleAuthFailureImpl> get copyWith =>
      __$$GoogleAuthFailureImplCopyWithImpl<_$GoogleAuthFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserAccountEntity user) success,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserAccountEntity user)? success,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserAccountEntity user)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GoogleAuthLoading value) loading,
    required TResult Function(GoogleAuthSuccess value) success,
    required TResult Function(GoogleAuthFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GoogleAuthLoading value)? loading,
    TResult? Function(GoogleAuthSuccess value)? success,
    TResult? Function(GoogleAuthFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GoogleAuthLoading value)? loading,
    TResult Function(GoogleAuthSuccess value)? success,
    TResult Function(GoogleAuthFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class GoogleAuthFailure implements GoogleAuthState {
  const factory GoogleAuthFailure(final String message) =
      _$GoogleAuthFailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$GoogleAuthFailureImplCopyWith<_$GoogleAuthFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
