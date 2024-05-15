import 'package:e_store/features/authentication/data/models/user_auth_params.dart';
import 'package:e_store/features/authentication/domain/usecases/is_user_verified.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'is_signedin_state.dart';
part 'is_signedin_cubit.freezed.dart';

class IsSignedinCubit extends Cubit<IsSignedinState> {
  final IsUserVerifiedUseCase _isUserVerifiedUseCase;
  IsSignedinCubit(this._isUserVerifiedUseCase) : super(const IsSignedinState.initial());

  void onSignedIn() async {
    emit(const IsSignedinState.authentecationPending());
    final userIsVerified = await _isUserVerifiedUseCase(params: VoidParams());
    if (userIsVerified) {
      emit(const IsSignedinState.authentecatedUser(true));
      return;
    }
    emit(IsSignedinState.notAuthentecatedUser('User not verified'));
  }
}
