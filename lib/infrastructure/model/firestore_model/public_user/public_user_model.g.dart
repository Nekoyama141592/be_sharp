// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PublicUserModel _$PublicUserModelFromJson(Map<String, dynamic> json) =>
    _PublicUserModel(
      createdAt: json['createdAt'],
      followerCount: (json['followerCount'] as num?)?.toInt() ?? 0,
      followingCount: (json['followingCount'] as num?)?.toInt() ?? 0,
      muteCount: (json['muteCount'] as num?)?.toInt() ?? 0,
      registeredInfo: json['registeredInfo'] as Map<String, dynamic>?,
      uid: json['uid'] as String,
      updatedAt: json['updatedAt'],
    );

Map<String, dynamic> _$PublicUserModelToJson(_PublicUserModel instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'followerCount': instance.followerCount,
      'followingCount': instance.followingCount,
      'muteCount': instance.muteCount,
      'registeredInfo': instance.registeredInfo,
      'uid': instance.uid,
      'updatedAt': instance.updatedAt,
    };
