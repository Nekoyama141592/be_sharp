import 'package:freezed_annotation/freezed_annotation.dart';

part 'mute_user.freezed.dart';
part 'mute_user.g.dart';

@freezed
abstract class MuteUser implements _$MuteUser {
  const MuteUser._();
  const factory MuteUser({
    required String muteUid,
    required dynamic createdAt,
  }) = _MuteUser;
  factory MuteUser.fromJson(Map<String, dynamic> json) =>
      _$MuteUserFromJson(json);
}
