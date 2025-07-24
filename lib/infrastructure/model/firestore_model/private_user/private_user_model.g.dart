// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'private_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PrivateUserModel _$PrivateUserModelFromJson(Map<String, dynamic> json) =>
    _PrivateUserModel(
      fcmToken: json['fcmToken'] as String,
      isAdmin: json['isAdmin'] as bool? ?? false,
      uid: json['uid'] as String,
      createdAt: json['createdAt'],
    );

Map<String, dynamic> _$PrivateUserModelToJson(_PrivateUserModel instance) =>
    <String, dynamic>{
      'fcmToken': instance.fcmToken,
      'isAdmin': instance.isAdmin,
      'uid': instance.uid,
      'createdAt': instance.createdAt,
    };
