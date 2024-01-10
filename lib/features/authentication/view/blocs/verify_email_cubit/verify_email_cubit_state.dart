part of 'verify_email_cubit_cubit.dart';

@freezed
class VerifyEmailCubitState with _$VerifyEmailCubitState {
  const factory VerifyEmailCubitState.initial() = _Initial;
  const factory VerifyEmailCubitState.loading() = VerifyEmailLoading;
  const factory VerifyEmailCubitState.success(bool isSignedIn) =
      VerifyEmailSuccess;
  const factory VerifyEmailCubitState.failure(
    String message,
    StackTrace? stackTrace,
  ) = VerifyEmailFailure;
}
