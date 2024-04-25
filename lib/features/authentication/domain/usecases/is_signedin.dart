import 'package:e_store/core/utils/errors/server_errors.dart';
import 'package:e_store/core/utils/types/result_type.dart';
import 'package:e_store/core/utils/usecases/usecase.dart';
import 'package:e_store/features/authentication/data/models/user_auth_params.dart';

import '../repositories/auth_repo.dart';

typedef BoolResult = Result<bool, BaseException>;

class IsSignedInUseCase implements UseCase<BoolResult, VoidParams> {
  final AuthenticationRepository _authenticationRepository;

  IsSignedInUseCase(this._authenticationRepository);

  @override
  @override
  Future<BoolResult> call({required VoidParams params}) async {
    return Result.success(await _authenticationRepository.isVerifiedUser);
  }
}
