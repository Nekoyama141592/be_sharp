import 'package:be_sharp/typedefs/firestore_typedef.dart';
import 'package:be_sharp/user_case/file/file_usecase.dart';

import 'package:be_sharp/core/query_core.dart';
import 'package:be_sharp/model/firestore_model/mute_user/mute_user.dart';
import 'package:be_sharp/model/firestore_model/public_user/read/read_public_user.dart';
import 'package:be_sharp/model/firestore_model/user_answer/read/read_user_answer.dart';
import 'package:be_sharp/model/view_model_state/home_state/answered_user/answered_user.dart';
import 'package:collection/collection.dart';

class HomeUseCase {
  HomeUseCase({required this.fileUseCase});
  final FileUseCase fileUseCase;
  List<String> _getUids(QSnapshot qshot) {
    final userAnswers =
        qshot.docs.map((e) => ReadUserAnswer.fromJson(e.data())).toList();
    final uids = userAnswers.map((e) => e.uid).toList();
    return uids;
  }

  Future<AnsweredUser?> _answer(
      QDoc qDoc, List<ReadPublicUser> users) async {
    final userAnswer = ReadUserAnswer.fromJson(qDoc.data());
    final publicUser = users.firstWhereOrNull((e) => e.uid == userAnswer.uid);
    if (publicUser == null) return null;
    final userImage = await fileUseCase.getS3Image(
        publicUser.imageCacheKey(), publicUser.imageValue());
    return AnsweredUser(
        publicUser: publicUser,
        userAnswerQDoc: qDoc,
        userImage: userImage,
        userAnswer: userAnswer);
  }

  Future<List<AnsweredUser>> fetchAnsweredUsers(
      QSnapshot qshot) async {
    final uids = _getUids(qshot);
    if (uids.isEmpty) return [];
    final usersQshot = await QueryCore.usersQuery(uids).get();
    final users =
        usersQshot.docs.map((e) => ReadPublicUser.fromJson(e.data())).toList();
    final nullableAnsweredUsers =
        await Future.wait(qshot.docs.map((e) => _answer(e, users)));
    final answeredUsers =
        nullableAnsweredUsers.whereType<AnsweredUser>().toList();
    return answeredUsers;
  }

  Future<List<String>> fetchMuteUsers(
      String? currentUid, QSnapshot qshot) async {
    if (currentUid == null) return [];
    final uids = _getUids(qshot);
    if (uids.isEmpty) return [];
    final query = QueryCore.muteUsers(uid: currentUid, uids: uids);
    final usersQshot = await query.get();
    final docs = usersQshot.docs;
    return docs.map((e) => MuteUser.fromJson(e.data()).muteUid).toList();
  }

  Future<int> fetchUserCount(String problemId) async {
    final query = QueryCore.userAnswersQuery(problemId);
    final qshot = await query.count().get();
    final result = qshot.count ?? 0;
    return result;
  }
}