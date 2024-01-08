import 'package:e_store/core/utils/errors/server_errors.dart';
import 'package:e_store/core/utils/types/result_type.dart';

import '../entities/user_entity.dart';

abstract class AuthenticationRepository {
  FutureResult<UserAccountEntity, BaseException> signInWithEmailPassword(
    String email,
    String password,
  );

  FutureResult<UserAccountEntity, BaseException> signUpEmailAndPassword(
    String email,
    String password,
  );

  FutureResult<UserAccountEntity, BaseException> signInWithGoogle();

  FutureResult<void, BaseException> signOut();

  FutureResult<void, BaseException> verifyEmail();
}
