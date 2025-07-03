import 'package:be_sharp/infrastructure/repository/database_repository.dart';
import 'package:be_sharp/application/use_case/file_use_case.dart';

import 'package:be_sharp/infrastructure/model/firestore_model/public_user/read/read_public_user.dart';
import 'package:be_sharp/infrastructure/model/firestore_model/user_answer/read/read_user_answer.dart';
import 'package:be_sharp/infrastructure/model/view_model_state/home_state/answered_user/answered_user.dart';
import 'package:collection/collection.dart';

class HomeUseCase {
  HomeUseCase({required this.repository, required this.fileUseCase});
  final DatabaseRepository repository;
  final FileUseCase fileUseCase;
  List<String> _getUids(List<ReadUserAnswer> userAnswers) {
    final uids = userAnswers.map((e) => e.uid).toList();
    return uids;
  }

  Future<AnsweredUser?> _answer(
      ReadUserAnswer userAnswer, List<ReadPublicUser> users) async {
    final publicUser = users.firstWhereOrNull((e) => e.uid == userAnswer.uid);
    if (publicUser == null) return null;
    final userImage = await fileUseCase.getS3Image(
        publicUser.imageCacheKey(), publicUser.imageValue());
    return AnsweredUser(
        publicUser: publicUser, userImage: userImage, userAnswer: userAnswer);
  }

  Future<List<AnsweredUser>> fetchAnsweredUsers(
      List<ReadUserAnswer> userAnswers) async {
    final uids = _getUids(userAnswers);
    if (uids.isEmpty) return [];

    final users = await repository.getUsers(uids);
    final nullableAnsweredUsers =
        await Future.wait(userAnswers.map((e) => _answer(e, users)));
    final answeredUsers =
        nullableAnsweredUsers.whereType<AnsweredUser>().toList();
    return answeredUsers;
  }

  Future<List<String>> fetchMuteUsers(
      String? currentUid, List<ReadUserAnswer> userAnswers) {
    final uids = _getUids(userAnswers);
    return repository.getMuteUsers(currentUid, uids);
  }

  Future<int> fetchUserCount(String problemId) {
    return repository.getUserCount(problemId);
  }
}
