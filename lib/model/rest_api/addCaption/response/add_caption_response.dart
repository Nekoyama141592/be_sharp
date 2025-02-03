import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_caption_response.freezed.dart';
part 'add_caption_response.g.dart';

@freezed
abstract class AddCaptionResponse implements _$AddCaptionResponse {
  const AddCaptionResponse._();
  const factory AddCaptionResponse(
      {required String problemId,
      required String caption}) = _AddCaptionResponse;
  factory AddCaptionResponse.fromJson(Map<String, dynamic> json) =>
      _$AddCaptionResponseFromJson(json);
}
