import 'package:be_sharp/core/query_core.dart';
import 'package:be_sharp/extensions/prefs_extension.dart';
import 'package:be_sharp/model/firestore_model/mute_user/mute_user.dart';
import 'package:be_sharp/model/firestore_model/public_user/read/read_public_user.dart';
import 'package:be_sharp/model/firestore_model/user_answer/read/read_user_answer.dart';
import 'package:be_sharp/model/view_model_state/home_state/answered_user/answered_user.dart';
import 'package:be_sharp/typedefs/firestore_typedef.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

class HomeCore {
  static List<String> _getUids(QSnapshot qshot) {
    final userAnswers =
        qshot.docs.map((e) => ReadUserAnswer.fromJson(e.data())).toList();
    final uids = userAnswers.map((e) => e.uid).toList();
    return uids;
  }

  static Future<AnsweredUser?> _answer(
      QDoc qDoc, List<ReadPublicUser> users, SharedPreferences prefs) async {
    final userAnswer = ReadUserAnswer.fromJson(qDoc.data());
    final publicUser = users.firstWhereOrNull((e) => e.uid == userAnswer.uid);
    if (publicUser == null) return null;
    final userImage = await prefs.getS3Image(
        publicUser.imageCacheKey(), publicUser.imageValue());
    return AnsweredUser(
        publicUser: publicUser,
        userAnswerQDoc: qDoc,
        userImage: userImage,
        userAnswer: userAnswer);
  }

  static Future<List<AnsweredUser>> fetchAnsweredUsers(
      QSnapshot qshot, SharedPreferences prefs) async {
    final uids = _getUids(qshot);
    if (uids.isEmpty) return [];
    final usersQshot = await QueryCore.users(uids).get();
    final users =
        usersQshot.docs.map((e) => ReadPublicUser.fromJson(e.data())).toList();
    final nullableAnsweredUsers =
        await Future.wait(qshot.docs.map((e) => _answer(e, users, prefs)));
    final answeredUsers =
        nullableAnsweredUsers.whereType<AnsweredUser>().toList();
    return answeredUsers;
  }

  static Future<List<String>> fetchMuteUsers(
      String? currentUid, QSnapshot qshot) async {
    if (currentUid == null) return [];
    final uids = _getUids(qshot);
    if (uids.isEmpty) return [];
    final query = QueryCore.muteUsers(uid: currentUid, uids: uids);
    final usersQshot = await query.get();
    final docs = usersQshot.docs;
    return docs.map((e) => MuteUser.fromJson(e.data()).muteUid).toList();
  }
}
