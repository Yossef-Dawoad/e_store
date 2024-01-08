import 'package:e_store/features/authentication/data/models/user_auth_params.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:e_store/features/authentication/domain/usecases/user_email_verify.dart';

part 'verify_email_cubit_cubit.freezed.dart';
part 'verify_email_cubit_state.dart';

class VerifyEmailCubitCubit extends Cubit<VerifyEmailCubitState> {
  VerifyEmailUseCase usecase;
  VerifyEmailCubitCubit(this.usecase)
      : super(const VerifyEmailCubitState.initial());

  void verifyEmail({required String email}) async {
    emit(const VerifyEmailCubitState.loading());
    final result = await usecase(params: VoidParams());
    result.when(
      success: (_) => emit(const VerifyEmailCubitState.success()),
      failure: (err) => emit(VerifyEmailCubitState.failure(err.toString())),
    );
  }
}
