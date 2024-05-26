import 'package:e_store/features/authentication/data/models/user_account.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthenticationRemoteDataSource {
  Future<UserAccount> signInWithEmailPassword(String email, String password);
  Future<UserAccount> signUpEmailAndPassword(String email, String password);
  Future<void> sendVerifyEmail();
  Future<UserAccount> signInWithGoogle();
  Future<void> sendResetPasswordEmail(String email);
  void signOut();
  Future<(bool, UserAccount?)> get isUserVerified;
  Stream<User?> get userAuthStatusStream;
}
