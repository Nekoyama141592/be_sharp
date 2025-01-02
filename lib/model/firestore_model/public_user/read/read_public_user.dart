import 'package:freezed_annotation/freezed_annotation.dart';

part 'read_public_user.freezed.dart';
part 'read_public_user.g.dart';

@freezed
abstract class ReadPublicUser implements _$ReadPublicUser {
  const ReadPublicUser._();
  const factory ReadPublicUser({required String uid}) = _ReadPublicUser;
  factory ReadPublicUser.fromJson(Map<String, dynamic> json) =>
      _$ReadPublicUserFromJson(json);
  bool needsEdit() {
    return true;
  }
}
