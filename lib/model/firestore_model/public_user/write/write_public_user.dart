import 'package:freezed_annotation/freezed_annotation.dart';

part 'write_public_user.freezed.dart';
part 'write_public_user.g.dart';

@freezed
abstract class WritePublicUser implements _$WritePublicUser {
  const WritePublicUser._();
  const factory WritePublicUser({required String uid}) = _WritePublicUser;
  factory WritePublicUser.fromJson(Map<String, dynamic> json) =>
      _$WritePublicUserFromJson(json);
}
