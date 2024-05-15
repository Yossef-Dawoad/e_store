part of 'signup_cubit.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState.initial() = _Initial;
  const factory SignupState.loading() = SignUpLoading;
  const factory SignupState.success(UserAccountEntity data) = SignUpSuccess;
  const factory SignupState.failure(String message) = SignUpFailure;
}
