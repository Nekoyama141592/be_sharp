import 'package:freezed_annotation/freezed_annotation.dart';

part 'detected_text.freezed.dart';
part 'detected_text.g.dart';

@freezed
abstract class DetectedText with _$DetectedText {
  const DetectedText._();
  const factory DetectedText(
      {@Default("") String languageCode,
      @Default(0) int negativeScore,
      @Default(0) int positiveScore,
      @Default("") String sentiment,
      @Default("") String value}) = _DetectedText;
  factory DetectedText.fromJson(Map<String, dynamic> json) =>
      _$DetectedTextFromJson(json);

  bool isInvalid() {
    const limit = 85;
    return negativeScore > limit;
  }
}
