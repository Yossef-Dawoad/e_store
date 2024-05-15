part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LogInInitial extends LoginState {}

final class LogInLoading extends LoginState {}

final class LogInSuccess<T> extends LoginState {
  final T data;
  LogInSuccess({required this.data});
}

final class LogInFailure extends LoginState {
  final String message;
  LogInFailure({required this.message});
}

final class SendResetEmailLoading extends LoginState {}

final class SendResetEmailSuccess extends LoginState {}

final class SendResetEmailFailure extends LoginState {
  final String message;
  SendResetEmailFailure({required this.message});
}
