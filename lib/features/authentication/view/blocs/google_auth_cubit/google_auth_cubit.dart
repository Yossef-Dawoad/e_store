import 'package:e_store/features/authentication/data/models/user_auth_params.dart';
import 'package:e_store/features/authentication/domain/entities/user_entity.dart';
import 'package:e_store/features/authentication/domain/usecases/signin_google.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'google_auth_state.dart';
part 'google_auth_cubit.freezed.dart';

class GoogleAuthCubit extends Cubit<GoogleAuthState> {
  final SignInWithGoogleUseCase usecaseGoogle;
  GoogleAuthCubit(this.usecaseGoogle) : super(const GoogleAuthState.initial());

  void logInWithGoogle() async {
    emit(const GoogleAuthState.loading());

    final credentialsResult = await usecaseGoogle(params: VoidParams());
    credentialsResult.when(
      success: (credentials) => emit(GoogleAuthState.success(credentials)),
      failure: (failure) => emit(GoogleAuthState.failure(failure.msg)),
    );
  }
}
