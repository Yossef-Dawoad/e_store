import 'package:e_store/core/utils/errors/server_errors.dart';
import 'package:e_store/core/utils/types/result_type.dart';
import 'package:e_store/core/utils/usercase/usecase.dart';
import 'package:e_store/features/authentication/data/models/user_auth_params.dart';
import 'package:e_store/features/authentication/domain/entities/user_entity.dart';

import '../repositories/auth_repo.dart';

typedef UserCredentialResult = Result<UserAccountEntity, BaseException>;

class SignInWithGoogleUseCase
    implements UseCase<UserCredentialResult, VoidParams> {
  final AuthenticationRepository _authenticationRepository;

  SignInWithGoogleUseCase(this._authenticationRepository);

  @override
  Future<UserCredentialResult> call({required VoidParams params}) async {
    return await _authenticationRepository.signInWithGoogle();
  }
}
