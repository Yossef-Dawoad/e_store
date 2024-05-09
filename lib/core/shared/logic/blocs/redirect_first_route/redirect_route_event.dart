part of 'redirect_route_bloc.dart';

@freezed
class RedirectRouteEvent with _$RedirectRouteEvent {
  const factory RedirectRouteEvent.started() = _Started;
  const factory RedirectRouteEvent.routeEntered() = RouteEntered;
}
