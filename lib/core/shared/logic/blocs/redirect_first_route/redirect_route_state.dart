part of 'redirect_route_bloc.dart';

@freezed
class RedirectRouteState with _$RedirectRouteState {
  const factory RedirectRouteState.initial() = _Initial;
  const factory RedirectRouteState.loading() = _Loading;
  const factory RedirectRouteState.splashNotSeen() = _SplashNotSeen;
  const factory RedirectRouteState.splashSeen() = _SplashSeen;
  const factory RedirectRouteState.loggedIn() = LoggedInRouteEntered;

  const factory RedirectRouteState.error() = _Error;
}
