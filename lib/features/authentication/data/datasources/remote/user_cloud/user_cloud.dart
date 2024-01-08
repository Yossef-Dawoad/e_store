import 'package:e_store/features/authentication/data/models/user_account.dart';

abstract class UserCloudService {
  Future<UserAccount> readUser(String uid);
  Future<void> writeUser(UserAccount user);
}
