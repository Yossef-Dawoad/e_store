import 'package:e_store/core/utils/errors/server_errors.dart';

import 'package:e_store/core/utils/types/result_type.dart';
import 'package:e_store/features/authentication/data/datasources/remote/firebase_user_authentication/firebase_authentication.dart';
import 'package:e_store/features/authentication/domain/entities/user_entity.dart';

import 'package:firebase_auth/firebase_auth.dart';

import '../../domain/repositories/auth_repo.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationRemoteDataSource _remoteDataSource;

  AuthenticationRepositoryImpl({
    required AuthenticationRemoteDataSource remoteDataSource,
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
    } catch (e) {
      return Result.failure(BaseException(msg: e.toString()));
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
  FutureResult<bool, BaseException> verifyEmail() async {
    try {
      await _remoteDataSource.verifyEmail();
      return Result.success(await isVerifiedUser);
    } catch (err, st) {
      return Result.failure(BaseException(msg: err.toString(), stackTrace: st));
    }
  }

  @override
  Future<bool> get isVerifiedUser => _remoteDataSource.isUserVerified;

  @override
  FutureResult<void, BaseException> sendResetPasswordEmail(String email) async {
    try {
      await _remoteDataSource.sendResetPasswordEmail(email);
      return const Result.success(null);
    } on FirebaseAuthException catch (err) {
      return Result.failure(BaseException(msg: err.toString()));
    }
  }

  @override
  Stream<UserAccountEntity> get userAuthStatusStream =>
      _remoteDataSource.userAuthStatusStream.map((event) => event.toEntity);
}
