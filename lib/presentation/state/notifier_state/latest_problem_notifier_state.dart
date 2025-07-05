import 'package:freezed_annotation/freezed_annotation.dart';

part 'latest_problem_notifier_state.freezed.dart';
part 'latest_problem_notifier_state.g.dart';

@freezed
abstract class LatestProblemNotifierState with _$LatestProblemNotifierState {
  const LatestProblemNotifierState._();
  const factory LatestProblemNotifierState(
      {@Default(false) bool isNewProblem,
      String? problemId}) = _LatestProblemNotifierState;
  factory LatestProblemNotifierState.fromJson(Map<String, dynamic> json) =>
      _$LatestProblemNotifierStateFromJson(json);
}
