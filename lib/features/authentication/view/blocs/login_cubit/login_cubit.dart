import 'package:e_store/features/authentication/data/models/user_auth_params.dart';

import 'package:e_store/features/authentication/domain/usecases/signin_email_and_password.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final SignInWithMailPasswordUseCase usecaseEmailPassword;

  LoginCubit(this.usecaseEmailPassword) : super(LogInInitial());

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
}
