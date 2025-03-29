// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'write_public_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WritePublicUserImpl _$$WritePublicUserImplFromJson(
        Map<String, dynamic> json) =>
    _$WritePublicUserImpl(
      createdAt: json['createdAt'],
      followerCount: (json['followerCount'] as num?)?.toInt() ?? 0,
      followingCount: (json['followingCount'] as num?)?.toInt() ?? 0,
      muteCount: (json['muteCount'] as num?)?.toInt() ?? 0,
      uid: json['uid'] as String,
      updatedAt: json['updatedAt'],
    );

Map<String, dynamic> _$$WritePublicUserImplToJson(
        _$WritePublicUserImpl instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'followerCount': instance.followerCount,
      'followingCount': instance.followingCount,
      'muteCount': instance.muteCount,
      'uid': instance.uid,
      'updatedAt': instance.updatedAt,
    };
