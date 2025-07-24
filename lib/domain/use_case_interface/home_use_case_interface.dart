import 'package:be_sharp/presentation/state/view_model_state/home_state/answered_user/answered_user.dart';

abstract class HomeUseCaseInterface {
  Future<List<AnsweredUser>> fetchAnsweredUsers(
      String problemId, List<String> answers);
  Future<List<String>> fetchMuteUsers(String? currentUid, List<String> uids);
  Future<int> fetchUserCount(String problemId);
}
