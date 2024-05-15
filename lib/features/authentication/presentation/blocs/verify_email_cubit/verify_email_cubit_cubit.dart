import 'dart:async';

import 'package:e_store/features/authentication/data/models/user_auth_params.dart';
import 'package:e_store/features/authentication/domain/usecases/auth_status_changes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:e_store/features/authentication/domain/usecases/user_email_send_verify.dart';

part 'verify_email_cubit_cubit.freezed.dart';
part 'verify_email_cubit_state.dart';

class VerifyEmailCubit extends Cubit<VerifyEmailCubitState> {
  final VerifyEmailUseCase verifyEmailUsecase;
  final AuthChangesStateUseCase isAuthChangesUsecase;

  StreamSubscription<User?>? _userAuthChangesSubscription;

  VerifyEmailCubit({
    required this.verifyEmailUsecase,
    required this.isAuthChangesUsecase,
  }) : super(const VerifyEmailCubitState.initial()) {
    _userAuthChangesSubscription = isAuthChangesUsecase(
      params: VoidParams(),
    ).listen(
      (user) => emit(user != null
          ? VerifyEmailCubitState.userVerifiedsuccess(user)
          : const VerifyEmailCubitState.userNotVerified()),
    );
  }

  void verifyEmail({required String email}) async {
    emit(const VerifyEmailCubitState.loading());

    final result = await verifyEmailUsecase(params: VoidParams());

    result.when(
      success: (_) async => emit(const VerifyEmailCubitState.emailSent()),
      failure: (err) => emit(VerifyEmailCubitState.failure(err.msg, err.stackTrace)),
    );
  }

  @override
  Future<void> close() {
    _userAuthChangesSubscription?.cancel();
    return super.close();
  }
}
