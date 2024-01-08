part of 'verify_email_cubit_cubit.dart';

@freezed
class VerifyEmailCubitState with _$VerifyEmailCubitState {
  const factory VerifyEmailCubitState.initial() = _Initial;
  const factory VerifyEmailCubitState.loading() = _Loading;
  const factory VerifyEmailCubitState.success() = _Success;
  const factory VerifyEmailCubitState.failure(String message) = _Failure;
}
