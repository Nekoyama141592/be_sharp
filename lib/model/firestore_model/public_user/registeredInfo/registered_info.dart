import 'package:freezed_annotation/freezed_annotation.dart';

part 'registered_info.freezed.dart';
part 'registered_info.g.dart';

@freezed
abstract class RegisteredInfo implements _$RegisteredInfo {
  const RegisteredInfo._();
  const factory RegisteredInfo(
      {@Default({}) Map<String, dynamic> nickName,
      @Default({}) Map<String, dynamic> bio,
      required dynamic birthDate,
      @Default({}) Map<String, dynamic> image}) = _RegisteredInfo;
  factory RegisteredInfo.fromJson(Map<String, dynamic> json) =>
      _$RegisteredInfoFromJson(json);
}
