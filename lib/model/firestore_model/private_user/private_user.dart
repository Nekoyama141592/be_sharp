import 'package:freezed_annotation/freezed_annotation.dart';

part 'private_user.freezed.dart';
part 'private_user.g.dart';

@freezed
abstract class PrivateUser implements _$PrivateUser {
  const PrivateUser._();
  const factory PrivateUser({
    required String fcmToken,
    @Default(false) bool isAdmin,
    required String uid,
    required dynamic createdAt,
  }) = _PrivateUser;
  factory PrivateUser.fromJson(Map<String, dynamic> json) =>
      _$PrivateUserFromJson(json);
}
