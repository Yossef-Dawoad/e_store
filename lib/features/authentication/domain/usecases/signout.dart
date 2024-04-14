import 'package:e_store/core/utils/errors/server_errors.dart';
import 'package:e_store/core/utils/types/result_type.dart';
import 'package:e_store/core/utils/usercase/usecase.dart';
import 'package:e_store/features/authentication/data/models/user_auth_params.dart';

import '../repositories/auth_repo.dart';

typedef VoidResult = Result<void, BaseException>;

class SignOutUseCase implements UseCase<void, VoidParams> {
  final AuthenticationRepository _authenticationRepository;

  SignOutUseCase(this._authenticationRepository);

  @override
  Future<VoidResult> call({required VoidParams params}) async {
    return await _authenticationRepository.signOut();
  }
}
