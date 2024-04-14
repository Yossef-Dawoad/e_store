import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_store/core/utils/errors/server_errors.dart';
import 'package:e_store/features/authentication/data/datasources/remote/user_cloud/user_cloud.dart';
import 'package:e_store/features/authentication/data/models/user_account.dart'
    as models;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'firebase_authentication.dart';

class AuthenticationRemoteDataSourceImpl
    implements AuthenticationRemoteDataSource {
  final GetStorage localStorage;
  final UserCloudService userCloudService;

  AuthenticationRemoteDataSourceImpl({
    required this.userCloudService,
    required this.localStorage,
  });

  final _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  /// return true if the user is logged in
  @override
  bool get isUserLoggedIn {
    _auth.currentUser?.reload();
    if (_auth.currentUser?.emailVerified ?? false) return true;
    return false;
  }

  @override
  Future<models.UserAccount> signInWithEmailPassword(
    String email,
    String password,
  ) async {
    try {
      final userData = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      final userAccount = models.UserAccount(
          uid: userData.user!.uid,
          email: email,
          username: userData.user?.displayName,
          photoURL: userData.user?.photoURL);
      await userCloudService.writeUser(userAccount);
      return userAccount;
    } on FirebaseAuthException catch (_) {
      rethrow;
    }
  }

  @override
  Future<models.UserAccount> signUpEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      final userData = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final userAccount = models.UserAccount(
        uid: userData.user!.uid,
        email: email,
        username: userData.user?.displayName,
      );
      return userAccount;
    } on FirebaseAuthException catch (_) {
      rethrow;
    }
  }

  @override
  Future<models.UserAccount> signInWithGoogle() async {
    // TODO Add some error handling here.
    try {
      final googleUserAccount = await _googleSignIn.signIn();
      final googleAuth = await googleUserAccount!.authentication;
      final credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
        accessToken: googleAuth.accessToken,
      );

      final userData = await _auth.signInWithCredential(credential);
      final userAccount = models.UserAccount(
        uid: userData.user!.uid,
        email: userData.user!.email!,
        username: userData.user?.displayName,
        photoURL: userData.user?.photoURL,
      );

      await userCloudService.writeUser(userAccount);
      return userAccount;
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthException(code: e.code, message: e.message);
    } on FirebaseFirestore catch (_) {
      rethrow;
    } catch (e) {
      throw BaseException(msg: e.toString());
    }
  }

  @override
  void signOut() async {
    if (await _googleSignIn.isSignedIn()) await _googleSignIn.signOut();
    await _auth.signOut();
  }

  /// Sends an email verification to the current logged in user.
  ///
  /// Throws an [FirebaseAuthException] if sending the verification email fails.
  @override
  Future<void> verifyEmail() async {
    try {
      await _auth.currentUser?.reload();
      await _auth.currentUser?.sendEmailVerification();
      final user = await userCloudService.readUser(_auth.currentUser!.uid);
      await userCloudService.writeUser(user.copyWith(isEmailVerified: true));
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthException(code: e.code, message: e.message);
    }
  }

  @override
  Future<void> sendResetPasswordEmail(String email) {
    try {
      return _auth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthException(code: e.code, message: e.message);
    } catch (e) {
      throw FirebaseAuthException(
          code: "Somthing went Wrong, Please try again later",
          message: e.toString());
    }
  }
}
