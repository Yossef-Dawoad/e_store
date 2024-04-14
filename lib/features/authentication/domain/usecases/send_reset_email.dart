import 'package:e_store/core/utils/errors/server_errors.dart';
import 'package:e_store/core/utils/types/result_type.dart';
import 'package:e_store/core/utils/usercase/usecase.dart';

import '../repositories/auth_repo.dart';

typedef VoidResult = Result<void, BaseException>;

class ResetPasswordParam {
  String email;
  ResetPasswordParam({required this.email});
}

class SendResetPasswordEmailUseCase
    implements UseCase<void, ResetPasswordParam> {
  final AuthenticationRepository _authenticationRepository;

  SendResetPasswordEmailUseCase(this._authenticationRepository);

  @override
  Future<VoidResult> call({required ResetPasswordParam params}) async {
    return await _authenticationRepository.sendResetPasswordEmail(params.email);
  }
}
