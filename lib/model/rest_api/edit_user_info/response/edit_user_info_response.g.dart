// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_user_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditUserInfoResponseImpl _$$EditUserInfoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$EditUserInfoResponseImpl(
      nickName: DetectedText.fromJson(json['nickName'] as Map<String, dynamic>),
      bio: DetectedText.fromJson(json['bio'] as Map<String, dynamic>),
      image: ModeratedImage.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EditUserInfoResponseImplToJson(
        _$EditUserInfoResponseImpl instance) =>
    <String, dynamic>{
      'nickName': instance.nickName,
      'bio': instance.bio,
      'image': instance.image,
    };
