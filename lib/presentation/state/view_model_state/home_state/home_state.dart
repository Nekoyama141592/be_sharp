import 'package:be_sharp/domain/entity/database/problem/problem_entity.dart';
import 'package:be_sharp/presentation/state/view_model_state/home_state/answered_user/answered_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';
part 'home_state.g.dart';

@freezed
abstract class HomeState with _$HomeState {
  const HomeState._();
  const factory HomeState(
      {ProblemEntity? latestProblem,
      @Default([]) List<AnsweredUser> answeredUsers,
      @Default([]) List<String> muteUids,
      @Default(0) int userCount}) = _HomeState;
  factory HomeState.fromJson(Map<String, dynamic> json) =>
      _$HomeStateFromJson(json);
  bool isMute(String uid) => muteUids.contains(uid);
}
