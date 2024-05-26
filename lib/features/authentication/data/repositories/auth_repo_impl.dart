import 'package:e_store/core/shared/logic/services/network_manager.dart';
import 'package:e_store/core/utils/errors/server_errors.dart';

import 'package:e_store/core/utils/types/result_type.dart';
import 'package:e_store/features/authentication/data/datasources/remote/firebase_user_authentication/firebase_authentication.dart';
import 'package:e_store/features/authentication/data/models/user_account.dart';
import 'package:e_store/features/authentication/domain/entities/user_entity.dart';

import 'package:firebase_auth/firebase_auth.dart';

import '../../domain/repositories/auth_repo.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationRemoteDataSource _remoteDataSource;
  final NetworkManager _networkManager;

  AuthenticationRepositoryImpl({
    required AuthenticationRemoteDataSource remoteDataSource,
    required NetworkManager networkManager,
  })  : _remoteDataSource = remoteDataSource,
        _networkManager = networkManager;

  @override
  FutureResult<UserAccountEntity, BaseException> signInWithEmailPassword(
    String email,
    String password,
  ) async {
    try {
      if (!(await _networkManager.hasInternetConnection())) {
        return Result.left(NetworkException());
      }
      final userData = await _remoteDataSource.signInWithEmailPassword(email, password);
      return Result.right(userData.toEntity);
    } on FirebaseAuthException catch (err) {
      return Result.left(BaseException(msg: err.toString()));
    } catch (err, st) {
      return Result.left(BaseException(msg: err.toString(), stackTrace: st));
    }
  }

  @override
  FutureResult<UserAccountEntity, BaseException> signInWithGoogle() async {
    try {
      final googleUser = await _remoteDataSource.signInWithGoogle();
      return Result.right(googleUser.toEntity);
    } on FirebaseAuthException catch (err) {
      return Result.left(BaseException(msg: err.toString()));
    } catch (err, st) {
      return Result.left(BaseException(msg: err.toString(), stackTrace: st));
    }
  }

  @override
  Future<Result<void, BaseException>> signOut() async {
    try {
      _remoteDataSource.signOut();
      return const Result.right(null);
    } on FirebaseAuthException catch (err) {
      return Result.left(BaseException(msg: err.toString()));
    } catch (err, st) {
      return Result.left(BaseException(msg: err.toString(), stackTrace: st));
    }
  }

  @override
  FutureResult<UserAccountEntity, BaseException> signUpEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      if (!(await _networkManager.hasInternetConnection())) {
        return Result.left(NetworkException());
      }
      final userData = await _remoteDataSource.signUpEmailAndPassword(email, password);

      return Result.right(userData.toEntity);
    } on FirebaseAuthException catch (err) {
      return Result.left(BaseException(msg: err.toString()));
    } catch (err, st) {
      return Result.left(BaseException(msg: err.toString(), stackTrace: st));
    }
  }

  @override
  FutureResult<void, BaseException> sendVerifyEmail() async {
    try {
      await _remoteDataSource.sendVerifyEmail();
      return const Result.right(null);
    } catch (err, st) {
      return Result.left(BaseException(msg: err.toString(), stackTrace: st));
    }
  }

  @override
  Future<(bool, UserAccount?)> get isVerifiedUser => _remoteDataSource.isUserVerified;

  @override
  FutureResult<void, BaseException> sendResetPasswordEmail(String email) async {
    try {
      await _remoteDataSource.sendResetPasswordEmail(email);
      return const Result.right(null);
    } on FirebaseAuthException catch (err) {
      return Result.left(BaseException(msg: err.toString()));
    } catch (err, st) {
      return Result.left(BaseException(msg: err.toString(), stackTrace: st));
    }
  }

  @override
  Stream<User?> get userAuthStatusStream => _remoteDataSource.userAuthStatusStream;
}
