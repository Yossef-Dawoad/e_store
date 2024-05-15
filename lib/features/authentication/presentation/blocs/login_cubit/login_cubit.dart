import 'package:e_store/features/authentication/data/models/user_auth_params.dart';
import 'package:e_store/features/authentication/domain/usecases/send_reset_email.dart';

import 'package:e_store/features/authentication/domain/usecases/signin_email_and_password.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final SignInWithMailPasswordUseCase usecaseEmailPassword;
  final SendResetPasswordEmailUseCase usecaseSendResetEmail;

  LoginCubit(this.usecaseEmailPassword, this.usecaseSendResetEmail)
      : super(LogInInitial());

  void logIn({required String email, required String password}) async {
    emit(LogInLoading());

    final credentialsResult = await usecaseEmailPassword(
      params: SignInParams(email: email, password: password),
    );
    credentialsResult.when(
      success: (credentials) => emit(LogInSuccess(data: credentials)),
      failure: (failure) => emit(LogInFailure(message: failure.msg)),
    );
  }

  void sendResetEmail({required String email}) async {
    emit(SendResetEmailLoading());

    final result = await usecaseSendResetEmail(
      params: ResetPasswordParam(email: email),
    );

    result.when(
      success: (_) => emit(SendResetEmailSuccess()),
      failure: (failure) => emit(SendResetEmailFailure(message: failure.msg)),
    );
  }
}
