import 'package:be_sharp/core/col_ref_core.dart';
import 'package:be_sharp/typedefs/firestore_typedef.dart';

class DocRefCore {
  static DocRef user(String uid) => ColRefCore.users().doc(uid);
  static DocRef userAnswer(String uid,String problemId) => ColRefCore.userAnswers(uid).doc(problemId);
  static DocRef privateUser(String uid) => ColRefCore.privateUsers().doc(uid);
  static DocRef problem(String problemId) => ColRefCore.problems().doc(problemId);
}
