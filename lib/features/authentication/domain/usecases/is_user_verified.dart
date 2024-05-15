import 'package:e_store/core/utils/usecases/usecase.dart';
import 'package:e_store/features/authentication/data/models/user_auth_params.dart';

import '../repositories/auth_repo.dart';

class IsUserVerifiedUseCase implements UseCase<bool, VoidParams> {
  final AuthenticationRepository _authenticationRepository;

  IsUserVerifiedUseCase(this._authenticationRepository);

  @override
  Future<bool> call({required VoidParams params}) async {
    return await _authenticationRepository.isVerifiedUser;
  }
}
