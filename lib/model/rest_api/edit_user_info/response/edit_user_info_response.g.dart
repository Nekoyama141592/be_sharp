// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_user_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EditUserInfoResponse _$EditUserInfoResponseFromJson(
        Map<String, dynamic> json) =>
    _EditUserInfoResponse(
      nickName: DetectedText.fromJson(json['nickName'] as Map<String, dynamic>),
      bio: DetectedText.fromJson(json['bio'] as Map<String, dynamic>),
      image: ModeratedImage.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EditUserInfoResponseToJson(
        _EditUserInfoResponse instance) =>
    <String, dynamic>{
      'nickName': instance.nickName,
      'bio': instance.bio,
      'image': instance.image,
    };
