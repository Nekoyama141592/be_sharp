// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moderation_label.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ModerationLabel _$ModerationLabelFromJson(Map<String, dynamic> json) =>
    _ModerationLabel(
      confidence: (json['confidence'] as num).toDouble(),
      name: json['name'] as String,
      parentName: json['parentName'] as String,
      taxonomyLevel: (json['taxonomyLevel'] as num).toInt(),
    );

Map<String, dynamic> _$ModerationLabelToJson(_ModerationLabel instance) =>
    <String, dynamic>{
      'confidence': instance.confidence,
      'name': instance.name,
      'parentName': instance.parentName,
      'taxonomyLevel': instance.taxonomyLevel,
    };
