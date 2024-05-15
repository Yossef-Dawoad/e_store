import 'package:e_store/features/authentication/data/models/user_auth_params.dart';
import 'package:e_store/features/authentication/domain/entities/user_entity.dart';
import 'package:e_store/features/authentication/domain/usecases/signup_email_and_password.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_state.dart';
part 'signup_cubit.freezed.dart';

class SignUpCubit extends Cubit<SignupState> {
  final SignUpUseCase usecase;
  SignUpCubit(this.usecase) : super(const SignupState.initial());

  void signUp({required String email, required String password}) async {
    emit(const SignupState.loading());

    final credentialsResult = await usecase(
      params: SignInParams(email: email, password: password),
    );
    credentialsResult.when(
      success: (credentials) => SignupState.success(credentials),
      failure: (err) => SignupState.failure(err.toString()),
    );
  }
}
