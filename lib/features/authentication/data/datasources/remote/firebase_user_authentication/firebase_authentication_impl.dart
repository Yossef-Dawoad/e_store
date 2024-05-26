import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:e_store/core/utils/errors/server_errors.dart';
import 'package:e_store/features/authentication/data/datasources/remote/user_cloud/user_cloud.dart';
import 'package:e_store/features/authentication/data/models/user_account.dart';

import 'firebase_authentication.dart';

class AuthenticationRemoteDataSourceImpl implements AuthenticationRemoteDataSource {
  final UserCloudService userCloudService;

  AuthenticationRemoteDataSourceImpl({
    required this.userCloudService,
  });

  final _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  /// return true if the user is logged in
  @override
  Future<(bool, UserAccount?)> get isUserVerified async {
    await _auth.currentUser?.reload();
    if (_auth.currentUser?.emailVerified ?? false) {
      final user = await userCloudService.readUser(_auth.currentUser!.uid);
      await userCloudService.writeUser(user.copyWith(isEmailVerified: true));
      return (true, user);
    }
    return (false, null);
  }

  @override
  Future<UserAccount> signInWithEmailPassword(
    String email,
    String password,
  ) async {
    try {
      final userData = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      final userAccount = UserAccount(
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
  Future<UserAccount> signUpEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      final userData = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      print('*********');
      print(userData);
      final userAccount = UserAccount(
        uid: userData.user!.uid,
        email: email,
        username: userData.user?.displayName,
      );
      await userCloudService.writeUser(userAccount);
      return userAccount;
    } on FirebaseAuthException catch (e) {
      late final String message;
      if (e.code == 'weak-password') {
        message = 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        message = 'The account already exists for that email.';
      }
      throw FirebaseAuthException(code: e.code, message: message);
    } on FirebaseException catch (_) {
      rethrow;
    } catch (e) {
      throw 'Something went wrong, Please try again later';
    }
  }

  @override
  Future<UserAccount> signInWithGoogle() async {
    try {
      final googleUserAccount = await _googleSignIn.signIn();
      final googleAuth = await googleUserAccount!.authentication;
      final credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
        accessToken: googleAuth.accessToken,
      );

      final userData = await _auth.signInWithCredential(credential);
      final userAccount = UserAccount(
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
  Future<void> sendVerifyEmail() async {
    try {
      await _auth.currentUser?.reload();
      await _auth.currentUser?.sendEmailVerification();
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
          code: "Somthing went Wrong, Please try again later", message: e.toString());
    }
  }

  @override
  Stream<User?> get userAuthStatusStream => _auth.userChanges();
}
