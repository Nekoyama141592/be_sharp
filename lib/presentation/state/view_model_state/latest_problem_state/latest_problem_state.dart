import 'package:be_sharp/domain/entity/database/problem/problem_entity.dart';
import 'package:be_sharp/domain/entity/database/user_answer/user_answer_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'latest_problem_state.freezed.dart';
part 'latest_problem_state.g.dart';

@freezed
abstract class LatestProblemState with _$LatestProblemState {
  const LatestProblemState._();
  const factory LatestProblemState(
      {ProblemEntity? problem, UserAnswerEntity? userAnswer}) = _LatestProblemState;
  factory LatestProblemState.fromJson(Map<String, dynamic> json) =>
      _$LatestProblemStateFromJson(json);
}
