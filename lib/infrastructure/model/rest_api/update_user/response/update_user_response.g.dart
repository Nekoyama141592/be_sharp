// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateUserResponse _$UpdateUserResponseFromJson(Map<String, dynamic> json) =>
    _UpdateUserResponse(
      moderatedImage: json['moderatedImage'] == null
          ? null
          : ModeratedImage.fromJson(
              json['moderatedImage'] as Map<String, dynamic>),
      detectedBio:
          DetectedText.fromJson(json['detectedBio'] as Map<String, dynamic>),
      detectedUserName: DetectedText.fromJson(
          json['detectedUserName'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdateUserResponseToJson(_UpdateUserResponse instance) =>
    <String, dynamic>{
      'moderatedImage': instance.moderatedImage,
      'detectedBio': instance.detectedBio,
      'detectedUserName': instance.detectedUserName,
    };
