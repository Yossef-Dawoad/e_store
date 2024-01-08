import 'package:e_store/core/utils/errors/server_errors.dart';
import 'package:e_store/core/utils/types/result_type.dart';
import 'package:e_store/core/utils/usercase/usecase.dart';
import 'package:e_store/features/authentication/data/models/user_auth_params.dart';
import 'package:e_store/features/authentication/domain/entities/user_entity.dart';
import 'package:e_store/features/authentication/domain/repositories/auth_repo.dart';

typedef UserAccountResult = Result<UserAccountEntity, BaseException>;

class SignInWithMailPasswordUseCase
    implements UseCase<UserAccountResult, SignInParams> {
  final AuthenticationRepository _authenticationRepository;

  SignInWithMailPasswordUseCase(this._authenticationRepository);

  @override
  Future<UserAccountResult> call({required SignInParams params}) async {
    return await _authenticationRepository.signInWithEmailPassword(
      params.email,
      params.password,
    );
  }
}
