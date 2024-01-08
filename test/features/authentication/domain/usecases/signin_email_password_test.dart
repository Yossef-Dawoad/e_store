import 'package:e_store/core/utils/errors/server_errors.dart';
import 'package:e_store/core/utils/types/result_type.dart';
import 'package:e_store/features/authentication/data/models/user_auth_params.dart';
import 'package:e_store/features/authentication/domain/entities/user_entity.dart';
import 'package:e_store/features/authentication/domain/usecases/signin_email_and_password.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../utils/dummy_data/models_etities.dart';
import '../../../../utils/mocks/repositories_mocks.mocks.dart';

void main() {
  late SignInWithMailPasswordUseCase signInEmailPasswordUseCase;
  late MockAuthenticationRepository mockAuthenticationRepository;

  setUp(() {
    mockAuthenticationRepository = MockAuthenticationRepository();
    signInEmailPasswordUseCase =
        SignInWithMailPasswordUseCase(mockAuthenticationRepository);
  });
  test('should return a UserCredential when the call method is called',
      () async {
    // arrange
    const email = 'test@example.com';
    const password = 'password123';
    when(mockAuthenticationRepository.signInWithEmailPassword(email, password))
        .thenAnswer((_) async => const Result.success(testUserAccountEntity));

    // UserAccountEntity()
    final result = await signInEmailPasswordUseCase(
      params: SignInParams(email: email, password: password),
    );

    // assert
    expect(result, isA<Result<UserAccountEntity, BaseException>>());
    expect(result.isSuccess, true);
    expect(
      result,
      const Result<UserAccountEntity, BaseException>.success(
          testUserAccountEntity),
    );
  });
}
