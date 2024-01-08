// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserAccountImpl _$$UserAccountImplFromJson(Map<String, dynamic> json) =>
    _$UserAccountImpl(
      uid: json['uid'] as String,
      email: json['email'] as String,
      username: json['username'] as String?,
      photoURL: json['photoURL'] as String?,
      isEmailVerified: json['isEmailVerified'] as bool?,
    );

Map<String, dynamic> _$$UserAccountImplToJson(_$UserAccountImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'username': instance.username,
      'photoURL': instance.photoURL,
      'isEmailVerified': instance.isEmailVerified,
    };
