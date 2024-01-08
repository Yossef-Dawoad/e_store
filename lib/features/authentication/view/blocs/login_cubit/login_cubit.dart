import 'package:e_store/features/authentication/data/models/user_auth_params.dart';
import 'package:e_store/features/authentication/domain/usecases/signin_email_and_password.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final SignInWithMailPasswordUseCase usecase;
  LoginCubit(this.usecase) : super(LogInInitial());

  void logIn({required String email, required String password}) async {
    emit(LogInLoading());
    try {
      final credentials = await usecase(
        params: SignInParams(email: email, password: password),
      );
      emit(LogInSuccess(data: credentials));
    } on FirebaseAuthException catch (e) {
      emit(LogInFailure(message: e.toString()));
    }
  }
}
