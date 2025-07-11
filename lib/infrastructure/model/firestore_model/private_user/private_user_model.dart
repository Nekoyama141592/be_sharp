import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'private_user_model.freezed.dart';
part 'private_user_model.g.dart';

@freezed
abstract class PrivateUserModel with _$PrivateUserModel {
  const PrivateUserModel._();
  const factory PrivateUserModel({
    required String fcmToken,
    @Default(false) bool isAdmin,
    required String uid,
    required dynamic createdAt,
  }) = _PrivateUserModel;
  factory PrivateUserModel.fromJson(Map<String, dynamic> json) =>
      _$PrivateUserModelFromJson(json);
  factory PrivateUserModel.withServerTimestamp(String uid, {String? fcmToken, bool isAdmin = false}) {
    return PrivateUserModel(
      fcmToken: fcmToken ?? '',
      isAdmin: isAdmin,
      uid: uid,
      createdAt: FieldValue.serverTimestamp(),
    );
  }
}
