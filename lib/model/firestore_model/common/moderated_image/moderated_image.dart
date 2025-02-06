import 'package:freezed_annotation/freezed_annotation.dart';

part 'moderated_image.freezed.dart';
part 'moderated_image.g.dart';

@freezed
abstract class ModeratedImage implements _$ModeratedImage {
  const ModeratedImage._();
  const factory ModeratedImage({
    @Default([]) List<Map<String, dynamic>> moderationLabels,
    @Default('') String moderationModelVersion,
    @Default('') String value,
  }) = _ModeratedImage;
  factory ModeratedImage.fromJson(Map<String, dynamic> json) =>
      _$ModeratedImageFromJson(json);
  bool isInvalid() => moderationLabels.isNotEmpty;
  List<ModerationLabel> typedLabels() =>
      moderationLabels.map((e) => ModerationLabel.fromJson(e)).toList();
  String reason() => typedLabels().map((e) => e.name).toList().join(',');
}

class ModerationLabel {
  final double confidence;
  final String name;
  final String parentName;
  final int taxonomyLevel;

  ModerationLabel({
    required this.confidence,
    required this.name,
    required this.parentName,
    required this.taxonomyLevel,
  });

  factory ModerationLabel.fromJson(Map<String, dynamic> json) {
    return ModerationLabel(
      confidence: (json['confidence'] as num).toDouble(),
      name: json['name'] as String,
      parentName: json['parentName'] as String,
      taxonomyLevel: json['taxonomyLevel'] as int,
    );
  }
}
