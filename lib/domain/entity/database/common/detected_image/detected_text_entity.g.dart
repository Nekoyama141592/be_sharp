// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detected_text_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DetectedTextEntity _$DetectedTextEntityFromJson(Map<String, dynamic> json) =>
    _DetectedTextEntity(
      negativeScore: (json['negativeScore'] as num).toInt(),
      value: json['value'] as String,
    );

Map<String, dynamic> _$DetectedTextEntityToJson(_DetectedTextEntity instance) =>
    <String, dynamic>{
      'negativeScore': instance.negativeScore,
      'value': instance.value,
    };
