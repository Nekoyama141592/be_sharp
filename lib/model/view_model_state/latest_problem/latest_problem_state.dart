import 'package:be_sharp/model/firestore_model/problem/read/read_problem.dart';
import 'package:be_sharp/model/firestore_model/user_answer/read/read_user_answer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'latest_problem_state.freezed.dart';
part 'latest_problem_state.g.dart';

@freezed
abstract class LatestProblemState with _$LatestProblemState {
  const LatestProblemState._();
  const factory LatestProblemState(
      {ReadProblem? problem, ReadUserAnswer? userAnswer}) = _LatestProblemState;
  factory LatestProblemState.fromJson(Map<String, dynamic> json) =>
      _$LatestProblemStateFromJson(json);
}
