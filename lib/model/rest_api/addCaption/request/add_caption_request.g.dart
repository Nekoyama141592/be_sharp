// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_caption_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddCaptionRequest _$AddCaptionRequestFromJson(Map<String, dynamic> json) =>
    _AddCaptionRequest(
      problemId: json['problemId'] as String,
      stringCaption: json['stringCaption'] as String,
    );

Map<String, dynamic> _$AddCaptionRequestToJson(_AddCaptionRequest instance) =>
    <String, dynamic>{
      'problemId': instance.problemId,
      'stringCaption': instance.stringCaption,
    };
