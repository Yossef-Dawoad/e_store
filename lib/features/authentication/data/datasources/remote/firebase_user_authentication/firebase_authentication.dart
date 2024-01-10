import 'package:e_store/features/authentication/data/models/user_account.dart';

abstract class AuthenticationRemoteDataSource {
  Future<UserAccount> signInWithEmailPassword(String email, String password);
  Future<UserAccount> signUpEmailAndPassword(String email, String password);
  Future<void> verifyEmail();
  Future<UserAccount> signInWithGoogle();
  void signOut();
  bool get isUserLoggedIn;
}
