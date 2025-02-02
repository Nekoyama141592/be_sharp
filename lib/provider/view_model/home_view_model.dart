import 'dart:async';
import 'package:be_sharp/core/query_core.dart';
import 'package:be_sharp/extensions/prefs_extension.dart';
import 'package:be_sharp/model/firestore_model/problem/read/read_problem.dart';
import 'package:be_sharp/model/firestore_model/public_user/read/read_public_user.dart';
import 'package:be_sharp/model/firestore_model/user_answer/read/read_user_answer.dart';
import 'package:be_sharp/model/view_model_state/home_state/answered_user/answered_user.dart';
import 'package:be_sharp/model/view_model_state/home_state/home_state.dart';
import 'package:be_sharp/provider/cache_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';

class HomeViewModel extends AsyncNotifier<HomeState> {
  @override
  FutureOr<HomeState> build() async {
    return _fetchData();
  }

  Future<HomeState> _fetchData() async {
    final latestProblem = await _fetchLatestProblem();
    if (latestProblem == null) return const HomeState();
    final problemId = latestProblem.problemId;
    final answers = latestProblem.answers;
    if (answers.isEmpty) {
      return HomeState(latestProblem: latestProblem);
    }
    final query = QueryCore.correctUserAnswers(problemId, answers);
    final qshot = await query.get();
    final userAnswers =
        qshot.docs.map((e) => ReadUserAnswer.fromJson(e.data())).toList();
    final uids = userAnswers.map((e) => e.uid).toList();
    if (uids.isEmpty) {
      return HomeState(latestProblem: latestProblem);
    }
    final usersQshot = await QueryCore.users(uids).get();
    final users =
        usersQshot.docs.map((e) => ReadPublicUser.fromJson(e.data())).toList();
    final nullableAnsweredUsers =
        await Future.wait(qshot.docs.map((qDoc) async {
      final userAnswer = ReadUserAnswer.fromJson(qDoc.data());
      final publicUser = users.firstWhereOrNull((e) => e.uid == userAnswer.uid);
      if (publicUser == null) return null;
      final userImage = await ref
          .read(prefsProvider)
          .getS3Image(publicUser.imageCacheKey(), publicUser.imageValue());
      return AnsweredUser(
          publicUser: publicUser,
          userAnswerQDoc: qDoc,
          userImage: userImage,
          userAnswer: userAnswer);
    }));
    final answeredUsers =
        nullableAnsweredUsers.whereType<AnsweredUser>().toList();
    return HomeState(
        latestProblem: latestProblem, answeredUsers: answeredUsers);
  }

  Future<ReadProblem?> _fetchLatestProblem() async {
    final query = QueryCore.latestProblem();
    final qshot = await query.get();
    final docs = qshot.docs;
    if (docs.isEmpty) return null;
    return ReadProblem.fromJson(docs.first.data());
  }
}

final homeProvider =
    AsyncNotifierProvider<HomeViewModel, HomeState>(() => HomeViewModel());
