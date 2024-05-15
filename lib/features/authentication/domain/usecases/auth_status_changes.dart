import 'package:e_store/core/utils/usecases/usecase.dart';
import 'package:e_store/features/authentication/data/models/user_auth_params.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../repositories/auth_repo.dart';

class AuthChangesStateUseCase implements UseCase<Stream, VoidParams> {
  final AuthenticationRepository _authenticationRepository;

  AuthChangesStateUseCase(this._authenticationRepository);

  @override
  Stream<User?> call({required VoidParams params}) async* {
    yield* _authenticationRepository.userAuthStatusStream;
  }
}
