import 'package:be_sharp/infrastructure/model/firestore_model/common/detected_text/detected_text.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class DetectedTextConverter
    implements JsonConverter<DetectedText, Map<String, dynamic>> {
  const DetectedTextConverter();

  @override
  DetectedText fromJson(Map<String, dynamic> json) =>
      DetectedText.fromJson(json);

  @override
  Map<String, dynamic> toJson(DetectedText object) => object.toJson();
}
