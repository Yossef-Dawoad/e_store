import 'package:e_store/core/utils/errors/server_errors.dart';

import 'package:e_store/core/utils/types/result_type.dart';
import 'package:e_store/features/authentication/data/datasources/remote/firebase_user_authentication/firebase_authentication_impl.dart';
import 'package:e_store/features/authentication/domain/entities/user_entity.dart';

import 'package:firebase_auth/firebase_auth.dart';

import '../../domain/repositories/auth_repo.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationRemoteDataSourceImpl _remoteDataSource;

  AuthenticationRepositoryImpl({
    required AuthenticationRemoteDataSourceImpl remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  @override
  FutureResult<UserAccountEntity, BaseException> signInWithEmailPassword(
    String email,
    String password,
  ) async {
    try {
      final userData =
          await _remoteDataSource.signInWithEmailPassword(email, password);
      return Result.success(userData.toEntity);
    } on FirebaseAuthException catch (err) {
      return Result.failure(BaseException(msg: err.toString()));
    }
  }

  @override
  FutureResult<UserAccountEntity, BaseException> signInWithGoogle() async {
    try {
      final googleUser = await _remoteDataSource.signInWithGoogle();
      return Result.success(googleUser.toEntity);
    } on FirebaseAuthException catch (err) {
      return Result.failure(BaseException(msg: err.toString()));
    }
  }

  @override
  Future<Result<void, BaseException>> signOut() async {
    try {
      _remoteDataSource.signOut();
      return const Result.success(null);
    } on FirebaseAuthException catch (err) {
      return Result.failure(BaseException(msg: err.toString()));
    }
  }

  @override
  FutureResult<UserAccountEntity, BaseException> signUpEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      final userData =
          await _remoteDataSource.signUpEmailAndPassword(email, password);
      return Result.success(userData.toEntity);
    } on FirebaseAuthException catch (err) {
      return Result.failure(BaseException(msg: err.toString()));
    }
  }

  @override
  FutureResult<void, BaseException> verifyEmail() async {
    try {
      await _remoteDataSource.verifyEmail();
      return const Result.success(null);
    } catch (err) {
      return Result.failure(BaseException(msg: err.toString()));
    }
  }

  @override
  bool get isSignedIn => _remoteDataSource.isUserLoggedIn;
}
