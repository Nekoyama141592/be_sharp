// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registered_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RegisteredInfo _$RegisteredInfoFromJson(Map<String, dynamic> json) =>
    _RegisteredInfo(
      nickName: DetectedText.fromJson(json['nickName'] as Map<String, dynamic>),
      bio: DetectedText.fromJson(json['bio'] as Map<String, dynamic>),
      image: ModeratedImage.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RegisteredInfoToJson(_RegisteredInfo instance) =>
    <String, dynamic>{
      'nickName': instance.nickName,
      'bio': instance.bio,
      'image': instance.image,
    };
