import 'package:be_sharp/infrastructure/model/firestore_model/public_user/read/read_public_user.dart';
import 'package:be_sharp/infrastructure/model/firestore_model/user_answer/read/read_user_answer.dart';

abstract class HomeUseCaseInterface {
  Future<List<ReadPublicUser>> fetchAnsweredUsers(
      List<ReadUserAnswer> userAnswers);
  Future<List<String>> fetchMuteUsers(
      String? currentUid, List<ReadUserAnswer> userAnswers);
  Future<int> fetchUserCount(String problemId);
}
