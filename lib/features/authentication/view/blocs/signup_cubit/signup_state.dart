part of 'signup_cubit.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState.initial() = _Initial;
  const factory SignupState.loading() = _Loading;
  const factory SignupState.success(UserAccountEntity data) = _Success;
  const factory SignupState.failure(String message) = _Failure;
}
