// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_caption_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddCaptionResponse _$AddCaptionResponseFromJson(Map<String, dynamic> json) =>
    _AddCaptionResponse(
      problemId: json['problemId'] as String,
      caption: DetectedText.fromJson(json['caption'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddCaptionResponseToJson(_AddCaptionResponse instance) =>
    <String, dynamic>{
      'problemId': instance.problemId,
      'caption': instance.caption,
    };
