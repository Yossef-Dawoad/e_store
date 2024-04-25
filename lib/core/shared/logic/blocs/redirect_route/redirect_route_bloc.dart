import 'package:e_store/core/shared/logic/services/storage_utility.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'redirect_route_event.dart';
part 'redirect_route_state.dart';
part 'redirect_route_bloc.freezed.dart';

class RedirectRouteBloc extends Bloc<RedirectRouteEvent, RedirectRouteState> {
  final LocalStorageManager _storage;

  RedirectRouteBloc(this._storage) : super(const _Initial()) {
    on<RouteEntered>((event, emit) async {
      emit(const _Loading());
      // final userIsVerified = await _authenticationRepository.isVerifiedUser;

      final initialRoute = _storage.readData('initial_route');

      await Future.delayed(const Duration(milliseconds: 1300), () async {
        if (kDebugMode) print(initialRoute);
        if (initialRoute == null || initialRoute == 0) {
          emit(const RedirectRouteState.splashNotSeen());
        } else if (initialRoute == 1) {
          emit(const RedirectRouteState.splashSeen());
        } else if (initialRoute == 2) {
          emit(const RedirectRouteState.loggedIn());
        }
      });
    });
  }
}
