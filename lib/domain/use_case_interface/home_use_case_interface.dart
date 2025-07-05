import 'package:be_sharp/domain/use_case_interface/use_case_interface.dart';

abstract class HomeUseCaseInterface extends UseCaseInterface<void> {
  Future<List<dynamic>> fetchAnsweredUsers(List<dynamic> userAnswers);
  Future<List<String>> fetchMuteUsers(
      String? currentUid, List<dynamic> userAnswers);
  Future<int> fetchUserCount(String problemId);
}
