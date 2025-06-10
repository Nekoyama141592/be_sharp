import 'package:freezed_annotation/freezed_annotation.dart';

part 'put_object_request.freezed.dart';
part 'put_object_request.g.dart';

@freezed
abstract class PutObjectRequest with _$PutObjectRequest {
  const PutObjectRequest._();
  const factory PutObjectRequest(
      {required String base64Image,
      required String object}) = _PutObjectRequest;
  factory PutObjectRequest.fromJson(Map<String, dynamic> json) =>
      _$PutObjectRequestFromJson(json);
}
