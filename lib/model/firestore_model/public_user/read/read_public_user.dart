import 'package:be_sharp/core/doc_ref_core.dart';
import 'package:be_sharp/model/firestore_model/public_user/registeredInfo/registered_info.dart';
import 'package:be_sharp/typedefs/firestore_typedef.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'read_public_user.freezed.dart';
part 'read_public_user.g.dart';

@freezed
abstract class ReadPublicUser implements _$ReadPublicUser {
  const ReadPublicUser._();
  const factory ReadPublicUser({
    required RegisteredInfo registeredInfo,
    required String uid,
  }) = _ReadPublicUser;
  factory ReadPublicUser.fromJson(Map<String, dynamic> json) =>
      _$ReadPublicUserFromJson(json);
  bool needsEdit() {
    return true;
  }
  DocRef typedRef() => DocRefCore.user(uid);
}
