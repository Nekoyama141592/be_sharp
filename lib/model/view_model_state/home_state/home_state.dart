import 'package:be_sharp/model/firestore_model/problem/read/read_problem.dart';
import 'package:be_sharp/model/view_model_state/home_state/answered_user/answered_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';
part 'home_state.g.dart';

@freezed
abstract class HomeState with _$HomeState {
  const HomeState._();
  const factory HomeState(
      {ReadProblem? latestProblem,
      @Default([]) List<AnsweredUser> answeredUsers,
      @Default([]) List<String> muteUids,
      @Default(0) int userCount}) = _HomeState;
  factory HomeState.fromJson(Map<String, dynamic> json) =>
      _$HomeStateFromJson(json);
  bool isMute(String uid) => muteUids.contains(uid);
}
