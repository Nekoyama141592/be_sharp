import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_caption_request.freezed.dart';
part 'add_caption_request.g.dart';

@freezed
abstract class AddCaptionRequest implements _$AddCaptionRequest {
  const AddCaptionRequest._();
  const factory AddCaptionRequest(
      {required String problemId,
      required String stringCaption}) = _AddCaptionRequest;
  factory AddCaptionRequest.fromJson(Map<String, dynamic> json) =>
      _$AddCaptionRequestFromJson(json);
}
