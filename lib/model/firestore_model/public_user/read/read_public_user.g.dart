// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_public_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReadPublicUser _$ReadPublicUserFromJson(Map<String, dynamic> json) =>
    _ReadPublicUser(
      registeredInfo: json['registeredInfo'] == null
          ? null
          : RegisteredInfo.fromJson(
              json['registeredInfo'] as Map<String, dynamic>),
      uid: json['uid'] as String,
      updatedAt: json['updatedAt'],
    );

Map<String, dynamic> _$ReadPublicUserToJson(_ReadPublicUser instance) =>
    <String, dynamic>{
      'registeredInfo': instance.registeredInfo,
      'uid': instance.uid,
      'updatedAt': instance.updatedAt,
    };
