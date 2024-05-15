part of 'google_auth_cubit.dart';

@freezed
class GoogleAuthState with _$GoogleAuthState {
  const factory GoogleAuthState.initial() = _Initial;
  const factory GoogleAuthState.loading() = GoogleAuthLoading;
  const factory GoogleAuthState.success(UserAccountEntity user) =
      GoogleAuthSuccess;
  const factory GoogleAuthState.failure(String message) = GoogleAuthFailure;
}
