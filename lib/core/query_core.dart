import 'package:be_sharp/core/col_ref_core.dart';
import 'package:be_sharp/typedefs/firestore_typedef.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class QueryCore {
  static const int oneTimeReadCount = whereInLimit;
  static const int whereInLimit = 10;
  // 基本
  static FirebaseFirestore get _instance => FirebaseFirestore.instance;
  static MapQuery users(List<String> uids) =>
      ColRefCore.users().where('uid', whereIn: uids);
  static MapQuery latestProblem() =>
      ColRefCore.problems().orderBy('createdAt', descending: true).limit(1);
  static MapQuery latestUserAnswer(String uid, String problemId) =>
      ColRefCore.userAnswers(uid)
          .where('problemId', isEqualTo: problemId)
          .limit(1);
  static MapQuery correctUserAnswers(String problemId, List<String> answers) =>
      _instance
          .collectionGroup('userAnswers')
          .where('problemId', isEqualTo: problemId)
          .where('answer', whereIn: answers)
          .limit(whereInLimit);
}
