import 'dart:async';

import 'package:e_store/features/authentication/data/models/user_account.dart';
import 'package:e_store/features/authentication/data/models/user_auth_params.dart';
import 'package:e_store/features/authentication/domain/usecases/is_user_verified.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:e_store/features/authentication/domain/usecases/user_email_send_verify.dart';

part 'verify_email_cubit_cubit.freezed.dart';
part 'verify_email_cubit_state.dart';

class VerifyEmailCubit extends Cubit<VerifyEmailCubitState> {
  final VerifyEmailUseCase verifyEmailUsecase;
  // final AuthChangesStateUseCase isAuthChangesUsecase;
  final IsUserVerifiedUseCase isUserVerified;

  StreamSubscription<User?>? _userAuthChangesSubscription;
  late Timer timer;

  VerifyEmailCubit({
    required this.verifyEmailUsecase,
    // required this.isAuthChangesUsecase,
    required this.isUserVerified, // TODO Add This to di
  }) : super(const VerifyEmailCubitState.initial()) {
    timer = Timer.periodic(const Duration(seconds: 2), (_) async {
      final (isEmailVerifed, user) = await isUserVerified.call(params: VoidParams());
      if (isEmailVerifed) emit(VerifyEmailCubitState.userVerifiedsuccess(user));
    });
  }

  void verifyEmail({required String email}) async {
    emit(const VerifyEmailCubitState.loading());

    final result = await verifyEmailUsecase(params: VoidParams());
    result.when(
      right: (_) => emit(const VerifyEmailCubitState.emailSent()),
      left: (err) => emit(VerifyEmailCubitState.failure(err.msg, err.stackTrace)),
    );
  }

  @override
  Future<void> close() {
    _userAuthChangesSubscription?.cancel();
    timer.cancel();
    return super.close();
  }
}
