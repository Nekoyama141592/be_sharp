// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'private_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PrivateUserImpl _$$PrivateUserImplFromJson(Map<String, dynamic> json) =>
    _$PrivateUserImpl(
      fcmToken: json['fcmToken'] as String,
      isAdmin: json['isAdmin'] as bool? ?? false,
      uid: json['uid'] as String,
      createdAt: json['createdAt'],
    );

Map<String, dynamic> _$$PrivateUserImplToJson(_$PrivateUserImpl instance) =>
    <String, dynamic>{
      'fcmToken': instance.fcmToken,
      'isAdmin': instance.isAdmin,
      'uid': instance.uid,
      'createdAt': instance.createdAt,
    };
