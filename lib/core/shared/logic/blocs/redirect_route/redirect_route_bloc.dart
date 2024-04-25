import 'package:e_store/features/authentication/domain/repositories/auth_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'redirect_route_event.dart';
part 'redirect_route_state.dart';
part 'redirect_route_bloc.freezed.dart';

class RedirectRouteBloc extends Bloc<RedirectRouteEvent, RedirectRouteState> {
  final AuthenticationRepository _authenticationRepository;

  RedirectRouteBloc(this._authenticationRepository) : super(const _Initial()) {
    on<RouteEntered>((event, emit) async {
      emit(const _Loading());
      await Future.delayed(const Duration(milliseconds: 1300), () async {
        final userIsVerified = await _authenticationRepository.isVerifiedUser;
        if (userIsVerified) {
          emit(const RedirectRouteState.loggedIn());
        } else {
          emit(const RedirectRouteState.notLoggedIn());
        }
      });
    });
  }
}
