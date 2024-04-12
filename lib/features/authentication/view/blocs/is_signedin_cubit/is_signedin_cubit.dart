import 'package:e_store/features/authentication/data/models/user_auth_params.dart';
import 'package:e_store/features/authentication/domain/usecases/is_signedin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'is_signedin_state.dart';
part 'is_signedin_cubit.freezed.dart';

class IsSignedinCubit extends Cubit<IsSignedinState> {
  final IsSignedInUseCase _isSignedInUseCase;
  IsSignedinCubit(this._isSignedInUseCase)
      : super(const IsSignedinState.initial());

  void onSignedIn() async {
    emit(const IsSignedinState.authentecationPending());
    final result = await _isSignedInUseCase(params: VoidParams());
    result.when(
      success: (isLogedin) =>
          emit(IsSignedinState.authentecatedUser(isLogedin)),
      failure: (err) => emit(IsSignedinState.notAuthentecatedUser(err.msg)),
    );
  }
}
