// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'redirect_route_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RedirectRouteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() routeEntered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? routeEntered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? routeEntered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(RouteEntered value) routeEntered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(RouteEntered value)? routeEntered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(RouteEntered value)? routeEntered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedirectRouteEventCopyWith<$Res> {
  factory $RedirectRouteEventCopyWith(
          RedirectRouteEvent value, $Res Function(RedirectRouteEvent) then) =
      _$RedirectRouteEventCopyWithImpl<$Res, RedirectRouteEvent>;
}

/// @nodoc
class _$RedirectRouteEventCopyWithImpl<$Res, $Val extends RedirectRouteEvent>
    implements $RedirectRouteEventCopyWith<$Res> {
  _$RedirectRouteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$RedirectRouteEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl with DiagnosticableTreeMixin implements _Started {
  const _$StartedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RedirectRouteEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RedirectRouteEvent.started'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() routeEntered,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? routeEntered,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? routeEntered,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(RouteEntered value) routeEntered,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(RouteEntered value)? routeEntered,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(RouteEntered value)? routeEntered,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements RedirectRouteEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$RouteEnteredImplCopyWith<$Res> {
  factory _$$RouteEnteredImplCopyWith(
          _$RouteEnteredImpl value, $Res Function(_$RouteEnteredImpl) then) =
      __$$RouteEnteredImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RouteEnteredImplCopyWithImpl<$Res>
    extends _$RedirectRouteEventCopyWithImpl<$Res, _$RouteEnteredImpl>
    implements _$$RouteEnteredImplCopyWith<$Res> {
  __$$RouteEnteredImplCopyWithImpl(
      _$RouteEnteredImpl _value, $Res Function(_$RouteEnteredImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RouteEnteredImpl with DiagnosticableTreeMixin implements RouteEntered {
  const _$RouteEnteredImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RedirectRouteEvent.routeEntered()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'RedirectRouteEvent.routeEntered'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RouteEnteredImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() routeEntered,
  }) {
    return routeEntered();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? routeEntered,
  }) {
    return routeEntered?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? routeEntered,
    required TResult orElse(),
  }) {
    if (routeEntered != null) {
      return routeEntered();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(RouteEntered value) routeEntered,
  }) {
    return routeEntered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(RouteEntered value)? routeEntered,
  }) {
    return routeEntered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(RouteEntered value)? routeEntered,
    required TResult orElse(),
  }) {
    if (routeEntered != null) {
      return routeEntered(this);
    }
    return orElse();
  }
}

abstract class RouteEntered implements RedirectRouteEvent {
  const factory RouteEntered() = _$RouteEnteredImpl;
}

/// @nodoc
mixin _$RedirectRouteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() splashNotSeen,
    required TResult Function() splashSeen,
    required TResult Function() loggedIn,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? splashNotSeen,
    TResult? Function()? splashSeen,
    TResult? Function()? loggedIn,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? splashNotSeen,
    TResult Function()? splashSeen,
    TResult Function()? loggedIn,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SplashNotSeen value) splashNotSeen,
    required TResult Function(_SplashSeen value) splashSeen,
    required TResult Function(LoggedInRouteEntered value) loggedIn,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SplashNotSeen value)? splashNotSeen,
    TResult? Function(_SplashSeen value)? splashSeen,
    TResult? Function(LoggedInRouteEntered value)? loggedIn,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SplashNotSeen value)? splashNotSeen,
    TResult Function(_SplashSeen value)? splashSeen,
    TResult Function(LoggedInRouteEntered value)? loggedIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedirectRouteStateCopyWith<$Res> {
  factory $RedirectRouteStateCopyWith(
          RedirectRouteState value, $Res Function(RedirectRouteState) then) =
      _$RedirectRouteStateCopyWithImpl<$Res, RedirectRouteState>;
}

/// @nodoc
class _$RedirectRouteStateCopyWithImpl<$Res, $Val extends RedirectRouteState>
    implements $RedirectRouteStateCopyWith<$Res> {
  _$RedirectRouteStateCopyWithImpl(this._value, this._then);

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
    extends _$RedirectRouteStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RedirectRouteState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RedirectRouteState.initial'));
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
    required TResult Function() splashNotSeen,
    required TResult Function() splashSeen,
    required TResult Function() loggedIn,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? splashNotSeen,
    TResult? Function()? splashSeen,
    TResult? Function()? loggedIn,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? splashNotSeen,
    TResult Function()? splashSeen,
    TResult Function()? loggedIn,
    TResult Function()? error,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_SplashNotSeen value) splashNotSeen,
    required TResult Function(_SplashSeen value) splashSeen,
    required TResult Function(LoggedInRouteEntered value) loggedIn,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SplashNotSeen value)? splashNotSeen,
    TResult? Function(_SplashSeen value)? splashSeen,
    TResult? Function(LoggedInRouteEntered value)? loggedIn,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SplashNotSeen value)? splashNotSeen,
    TResult Function(_SplashSeen value)? splashSeen,
    TResult Function(LoggedInRouteEntered value)? loggedIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RedirectRouteState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$RedirectRouteStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl with DiagnosticableTreeMixin implements _Loading {
  const _$LoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RedirectRouteState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RedirectRouteState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() splashNotSeen,
    required TResult Function() splashSeen,
    required TResult Function() loggedIn,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? splashNotSeen,
    TResult? Function()? splashSeen,
    TResult? Function()? loggedIn,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? splashNotSeen,
    TResult Function()? splashSeen,
    TResult Function()? loggedIn,
    TResult Function()? error,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_SplashNotSeen value) splashNotSeen,
    required TResult Function(_SplashSeen value) splashSeen,
    required TResult Function(LoggedInRouteEntered value) loggedIn,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SplashNotSeen value)? splashNotSeen,
    TResult? Function(_SplashSeen value)? splashSeen,
    TResult? Function(LoggedInRouteEntered value)? loggedIn,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SplashNotSeen value)? splashNotSeen,
    TResult Function(_SplashSeen value)? splashSeen,
    TResult Function(LoggedInRouteEntered value)? loggedIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements RedirectRouteState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SplashNotSeenImplCopyWith<$Res> {
  factory _$$SplashNotSeenImplCopyWith(
          _$SplashNotSeenImpl value, $Res Function(_$SplashNotSeenImpl) then) =
      __$$SplashNotSeenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SplashNotSeenImplCopyWithImpl<$Res>
    extends _$RedirectRouteStateCopyWithImpl<$Res, _$SplashNotSeenImpl>
    implements _$$SplashNotSeenImplCopyWith<$Res> {
  __$$SplashNotSeenImplCopyWithImpl(
      _$SplashNotSeenImpl _value, $Res Function(_$SplashNotSeenImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SplashNotSeenImpl
    with DiagnosticableTreeMixin
    implements _SplashNotSeen {
  const _$SplashNotSeenImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RedirectRouteState.splashNotSeen()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'RedirectRouteState.splashNotSeen'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SplashNotSeenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() splashNotSeen,
    required TResult Function() splashSeen,
    required TResult Function() loggedIn,
    required TResult Function() error,
  }) {
    return splashNotSeen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? splashNotSeen,
    TResult? Function()? splashSeen,
    TResult? Function()? loggedIn,
    TResult? Function()? error,
  }) {
    return splashNotSeen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? splashNotSeen,
    TResult Function()? splashSeen,
    TResult Function()? loggedIn,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (splashNotSeen != null) {
      return splashNotSeen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SplashNotSeen value) splashNotSeen,
    required TResult Function(_SplashSeen value) splashSeen,
    required TResult Function(LoggedInRouteEntered value) loggedIn,
    required TResult Function(_Error value) error,
  }) {
    return splashNotSeen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SplashNotSeen value)? splashNotSeen,
    TResult? Function(_SplashSeen value)? splashSeen,
    TResult? Function(LoggedInRouteEntered value)? loggedIn,
    TResult? Function(_Error value)? error,
  }) {
    return splashNotSeen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SplashNotSeen value)? splashNotSeen,
    TResult Function(_SplashSeen value)? splashSeen,
    TResult Function(LoggedInRouteEntered value)? loggedIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (splashNotSeen != null) {
      return splashNotSeen(this);
    }
    return orElse();
  }
}

abstract class _SplashNotSeen implements RedirectRouteState {
  const factory _SplashNotSeen() = _$SplashNotSeenImpl;
}

/// @nodoc
abstract class _$$SplashSeenImplCopyWith<$Res> {
  factory _$$SplashSeenImplCopyWith(
          _$SplashSeenImpl value, $Res Function(_$SplashSeenImpl) then) =
      __$$SplashSeenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SplashSeenImplCopyWithImpl<$Res>
    extends _$RedirectRouteStateCopyWithImpl<$Res, _$SplashSeenImpl>
    implements _$$SplashSeenImplCopyWith<$Res> {
  __$$SplashSeenImplCopyWithImpl(
      _$SplashSeenImpl _value, $Res Function(_$SplashSeenImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SplashSeenImpl with DiagnosticableTreeMixin implements _SplashSeen {
  const _$SplashSeenImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RedirectRouteState.splashSeen()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'RedirectRouteState.splashSeen'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SplashSeenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() splashNotSeen,
    required TResult Function() splashSeen,
    required TResult Function() loggedIn,
    required TResult Function() error,
  }) {
    return splashSeen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? splashNotSeen,
    TResult? Function()? splashSeen,
    TResult? Function()? loggedIn,
    TResult? Function()? error,
  }) {
    return splashSeen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? splashNotSeen,
    TResult Function()? splashSeen,
    TResult Function()? loggedIn,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (splashSeen != null) {
      return splashSeen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SplashNotSeen value) splashNotSeen,
    required TResult Function(_SplashSeen value) splashSeen,
    required TResult Function(LoggedInRouteEntered value) loggedIn,
    required TResult Function(_Error value) error,
  }) {
    return splashSeen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SplashNotSeen value)? splashNotSeen,
    TResult? Function(_SplashSeen value)? splashSeen,
    TResult? Function(LoggedInRouteEntered value)? loggedIn,
    TResult? Function(_Error value)? error,
  }) {
    return splashSeen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SplashNotSeen value)? splashNotSeen,
    TResult Function(_SplashSeen value)? splashSeen,
    TResult Function(LoggedInRouteEntered value)? loggedIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (splashSeen != null) {
      return splashSeen(this);
    }
    return orElse();
  }
}

abstract class _SplashSeen implements RedirectRouteState {
  const factory _SplashSeen() = _$SplashSeenImpl;
}

/// @nodoc
abstract class _$$LoggedInRouteEnteredImplCopyWith<$Res> {
  factory _$$LoggedInRouteEnteredImplCopyWith(_$LoggedInRouteEnteredImpl value,
          $Res Function(_$LoggedInRouteEnteredImpl) then) =
      __$$LoggedInRouteEnteredImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoggedInRouteEnteredImplCopyWithImpl<$Res>
    extends _$RedirectRouteStateCopyWithImpl<$Res, _$LoggedInRouteEnteredImpl>
    implements _$$LoggedInRouteEnteredImplCopyWith<$Res> {
  __$$LoggedInRouteEnteredImplCopyWithImpl(_$LoggedInRouteEnteredImpl _value,
      $Res Function(_$LoggedInRouteEnteredImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoggedInRouteEnteredImpl
    with DiagnosticableTreeMixin
    implements LoggedInRouteEntered {
  const _$LoggedInRouteEnteredImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RedirectRouteState.loggedIn()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RedirectRouteState.loggedIn'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoggedInRouteEnteredImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() splashNotSeen,
    required TResult Function() splashSeen,
    required TResult Function() loggedIn,
    required TResult Function() error,
  }) {
    return loggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? splashNotSeen,
    TResult? Function()? splashSeen,
    TResult? Function()? loggedIn,
    TResult? Function()? error,
  }) {
    return loggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? splashNotSeen,
    TResult Function()? splashSeen,
    TResult Function()? loggedIn,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SplashNotSeen value) splashNotSeen,
    required TResult Function(_SplashSeen value) splashSeen,
    required TResult Function(LoggedInRouteEntered value) loggedIn,
    required TResult Function(_Error value) error,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SplashNotSeen value)? splashNotSeen,
    TResult? Function(_SplashSeen value)? splashSeen,
    TResult? Function(LoggedInRouteEntered value)? loggedIn,
    TResult? Function(_Error value)? error,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SplashNotSeen value)? splashNotSeen,
    TResult Function(_SplashSeen value)? splashSeen,
    TResult Function(LoggedInRouteEntered value)? loggedIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class LoggedInRouteEntered implements RedirectRouteState {
  const factory LoggedInRouteEntered() = _$LoggedInRouteEnteredImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$RedirectRouteStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorImpl with DiagnosticableTreeMixin implements _Error {
  const _$ErrorImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RedirectRouteState.error()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RedirectRouteState.error'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() splashNotSeen,
    required TResult Function() splashSeen,
    required TResult Function() loggedIn,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? splashNotSeen,
    TResult? Function()? splashSeen,
    TResult? Function()? loggedIn,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? splashNotSeen,
    TResult Function()? splashSeen,
    TResult Function()? loggedIn,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SplashNotSeen value) splashNotSeen,
    required TResult Function(_SplashSeen value) splashSeen,
    required TResult Function(LoggedInRouteEntered value) loggedIn,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SplashNotSeen value)? splashNotSeen,
    TResult? Function(_SplashSeen value)? splashSeen,
    TResult? Function(LoggedInRouteEntered value)? loggedIn,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SplashNotSeen value)? splashNotSeen,
    TResult Function(_SplashSeen value)? splashSeen,
    TResult Function(LoggedInRouteEntered value)? loggedIn,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements RedirectRouteState {
  const factory _Error() = _$ErrorImpl;
}
