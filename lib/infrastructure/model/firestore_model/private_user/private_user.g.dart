// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'private_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PrivateUser _$PrivateUserFromJson(Map<String, dynamic> json) => _PrivateUser(
      fcmToken: json['fcmToken'] as String,
      isAdmin: json['isAdmin'] as bool? ?? false,
      uid: json['uid'] as String,
      createdAt: json['createdAt'],
    );

Map<String, dynamic> _$PrivateUserToJson(_PrivateUser instance) =>
    <String, dynamic>{
      'fcmToken': instance.fcmToken,
      'isAdmin': instance.isAdmin,
      'uid': instance.uid,
      'createdAt': instance.createdAt,
    };
