import 'package:e_store/features/authentication/domain/entities/user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_account.freezed.dart';
part 'user_account.g.dart';

@freezed
class UserAccount with _$UserAccount {
  const UserAccount._();
  const factory UserAccount({
    required String uid,
    required String email,
    String? username,
    String? photoURL,
    bool? isEmailVerified,
  }) = _UserAccount;

  factory UserAccount.fromJson(Map<String, Object?> json) =>
      _$UserAccountFromJson(json);

  UserAccountEntity get toEntity => UserAccountEntity(
        uid: uid,
        email: email,
        username: username,
        photoURL: photoURL,
        isEmailVerified: isEmailVerified,
      );
}
