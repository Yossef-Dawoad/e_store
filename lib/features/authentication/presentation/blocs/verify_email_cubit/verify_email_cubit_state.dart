part of 'verify_email_cubit_cubit.dart';

@freezed
class VerifyEmailCubitState with _$VerifyEmailCubitState {
  const factory VerifyEmailCubitState.initial() = _Initial;
  const factory VerifyEmailCubitState.loading() = VerifyEmailLoading;
  const factory VerifyEmailCubitState.emailSent() = VerifyEmailSent;
  const factory VerifyEmailCubitState.userNotVerified() = UserNotVerified;
  const factory VerifyEmailCubitState.userVerifiedsuccess(UserAccount? user) = UserVerifiedsuccess;
  const factory VerifyEmailCubitState.failure(String message, [StackTrace? stackTrace]) =
      VerifyEmailFailure;
}
