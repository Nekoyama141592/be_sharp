import 'package:freezed_annotation/freezed_annotation.dart';

part 'moderation_label.freezed.dart';
part 'moderation_label.g.dart';

@freezed
abstract class ModerationLabel with _$ModerationLabel {
  const ModerationLabel._();
  const factory ModerationLabel({
    required double confidence,
    required String name,
    required String parentName,
    required int taxonomyLevel,
  }) = _ModerationLabel;

  factory ModerationLabel.fromJson(Map<String, dynamic> json) =>
      _$ModerationLabelFromJson(json);
}