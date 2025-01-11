import 'package:be_sharp/core/col_ref_core.dart';
import 'package:be_sharp/typedefs/firestore_typedef.dart';

class QueryCore {
  static const int oneTimeReadCount = whereInLimit;
  static const int whereInLimit = 10;
  // 基本
  static MapQuery users() => ColRefCore.users().limit(oneTimeReadCount);
  static MapQuery latestProblem() => ColRefCore.problems().orderBy('createdAt',descending: true).limit(1);
}
