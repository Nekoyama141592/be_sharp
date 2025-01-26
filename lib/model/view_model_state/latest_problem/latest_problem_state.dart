import 'package:be_sharp/model/firestore_model/problem/read/read_problem.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'latest_problem_state.freezed.dart';
part 'latest_problem_state.g.dart';

@freezed
abstract class LatestProblemState implements _$LatestProblemState {
  const LatestProblemState._();
  const factory LatestProblemState(
      {ReadProblem? problem}) = _LatestProblemState;
  factory LatestProblemState.fromJson(Map<String, dynamic> json) =>
      _$LatestProblemStateFromJson(json);
}
