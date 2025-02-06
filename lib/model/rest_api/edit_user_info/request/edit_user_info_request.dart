import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_user_info_request.freezed.dart';
part 'edit_user_info_request.g.dart';

@freezed
abstract class EditUserInfoRequest implements _$EditUserInfoRequest {
  const EditUserInfoRequest._();
  const factory EditUserInfoRequest({
    required String stringNickName,
    required String stringBio,
    required String object,
  }) = _EditUserInfoRequest;
  factory EditUserInfoRequest.fromJson(Map<String, dynamic> json) =>
      _$EditUserInfoRequestFromJson(json);
}
