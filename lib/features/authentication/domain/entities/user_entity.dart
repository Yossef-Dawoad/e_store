class UserAccountEntity {
  const UserAccountEntity({
    required this.uid,
    required this.email,
    this.username,
    this.photoURL,
    this.isEmailVerified,
  });

  final String uid;
  final String email;
  final String? username;
  final String? photoURL;
  final bool? isEmailVerified;
}
