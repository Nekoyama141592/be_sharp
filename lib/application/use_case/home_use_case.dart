import 'package:be_sharp/domain/entity/database/user_answer/user_answer_entity.dart';
import 'package:be_sharp/infrastructure/repository/database_repository.dart';
import 'package:be_sharp/domain/use_case_interface/home_use_case_interface.dart';

import 'package:be_sharp/domain/entity/database/public_user/public_user_entity.dart';
import 'package:be_sharp/presentation/state/view_model_state/home_state/answered_user/answered_user.dart';
import 'package:collection/collection.dart';

class HomeUseCase implements HomeUseCaseInterface {
  HomeUseCase({required this.repository});
  final DatabaseRepository repository;
  List<String> _getUids(List<UserAnswerEntity> userAnswers) {
    final uids = userAnswers.map((e) => e.uid).toList();
    return uids;
  }

  Future<AnsweredUser?> _answer(
      UserAnswerEntity userAnswer, List<PublicUserEntity> users) async {
    final publicUser = users.firstWhereOrNull((e) => e.uid == userAnswer.uid);
    if (publicUser == null) return null;

    return AnsweredUser(
        publicUser: publicUser, userAnswer: userAnswer);
  }

  @override
  Future<List<AnsweredUser>> fetchAnsweredUsers(
      String problemId, List<String> answers) async {
    // Fetch correct user answers for the problem
    final userAnswers =
        await repository.fetchCorrectUserAnswers(problemId, answers);
    final uids = _getUids(userAnswers);
    if (uids.isEmpty) return [];

    final users = await repository.getUsers(uids);
    final nullableAnsweredUsers =
        await Future.wait(userAnswers.map((e) => _answer(e, users)));
    final answeredUsers =
        nullableAnsweredUsers.whereType<AnsweredUser>().toList();
    return answeredUsers;
  }

  @override
  Future<List<String>> fetchMuteUsers(String? currentUid, List<String> uids) {
    return repository.getMuteUsers(currentUid, uids);
  }

  @override
  Future<int> fetchUserCount(String problemId) {
    return repository.getUserCount(problemId);
  }
}