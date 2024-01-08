import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_store/features/authentication/data/models/user_account.dart';

import 'user_cloud.dart';

class UserCloudServiceImpl implements UserCloudService {
  final db = FirebaseFirestore.instance;

  @override
  Future<UserAccount> readUser(String uid) async {
    DocumentSnapshot doc = await db.doc(uid).get();
    return UserAccount.fromJson(doc.data() as Map<String, dynamic>);
  }

  @override
  Future<void> writeUser(UserAccount user) async {
    await db.doc(user.uid).set(user.toJson());
  }
}
