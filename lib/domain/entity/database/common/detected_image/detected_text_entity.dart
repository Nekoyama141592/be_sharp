import 'package:freezed_annotation/freezed_annotation.dart';

part 'detected_text_entity.freezed.dart';
part 'detected_text_entity.g.dart';

@freezed
abstract class DetectedTextEntity with _$DetectedTextEntity {
  const DetectedTextEntity._();
  const factory DetectedTextEntity({
    required int negativeScore,
    required String value,
  }) = _DetectedTextEntity;
  factory DetectedTextEntity.fromJson(Map<String, dynamic> json) =>
      _$DetectedTextEntityFromJson(json);
  bool isInvalid() {
    const limit = 85;
    return negativeScore > limit;
  }
}
