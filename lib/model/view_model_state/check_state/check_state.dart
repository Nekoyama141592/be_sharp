import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_state.freezed.dart';
part 'check_state.g.dart';

@freezed
abstract class CheckState implements _$CheckState {
  const CheckState._();
  const factory CheckState(
      {required bool needsAgreeToTerms,
      required bool needsSignup,
      required bool needsEditUser}) = _CheckState;
  factory CheckState.fromJson(Map<String, dynamic> json) =>
      _$CheckStateFromJson(json);
}
