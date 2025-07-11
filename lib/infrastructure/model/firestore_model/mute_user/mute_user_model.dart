import 'package:freezed_annotation/freezed_annotation.dart';

part 'mute_user_model.freezed.dart';
part 'mute_user_model.g.dart';

@freezed
abstract class MuteUserModel with _$MuteUserModel {
  const MuteUserModel._();
  const factory MuteUserModel({
    required String muteUid,
    required dynamic createdAt,
  }) = _MuteUserModel;
  factory MuteUserModel.fromJson(Map<String, dynamic> json) =>
      _$MuteUserModelFromJson(json);
}
