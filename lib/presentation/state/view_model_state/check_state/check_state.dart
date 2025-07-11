import 'package:be_sharp/domain/entity/database/public_user/public_user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_state.freezed.dart';
part 'check_state.g.dart';

@freezed
abstract class CheckState with _$CheckState {
  const CheckState._();
  const factory CheckState(
      {required bool needsAgreeToTerms,
      required bool needsSignup,
      required PublicUserEntity? user}) = _CheckState;
  factory CheckState.fromJson(Map<String, dynamic> json) =>
      _$CheckStateFromJson(json);
}
