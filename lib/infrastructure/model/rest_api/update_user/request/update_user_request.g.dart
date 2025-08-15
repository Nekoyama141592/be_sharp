// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateUserRequest _$UpdateUserRequestFromJson(Map<String, dynamic> json) =>
    _UpdateUserRequest(
      base64Image: json['base64Image'] as String?,
      bio: json['bio'] as String,
      userName: json['userName'] as String,
    );

Map<String, dynamic> _$UpdateUserRequestToJson(_UpdateUserRequest instance) =>
    <String, dynamic>{
      'base64Image': instance.base64Image,
      'bio': instance.bio,
      'userName': instance.userName,
    };
