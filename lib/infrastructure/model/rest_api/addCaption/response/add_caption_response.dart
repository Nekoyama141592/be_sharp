import 'package:be_sharp/infrastructure/model/firestore_model/common/detected_text/detected_text.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_caption_response.freezed.dart';
part 'add_caption_response.g.dart';

@freezed
abstract class AddCaptionResponse with _$AddCaptionResponse {
  const AddCaptionResponse._();
  const factory AddCaptionResponse(
      {required String problemId,
      required DetectedText caption}) = _AddCaptionResponse;
  factory AddCaptionResponse.fromJson(Map<String, dynamic> json) =>
      _$AddCaptionResponseFromJson(json);
}
