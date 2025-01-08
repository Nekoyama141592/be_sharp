import 'package:be_sharp/core/col_ref_core.dart';
import 'package:be_sharp/typedefs/firestore_typedef.dart';

class DocRefCore {
  static DocRef user(String uid) => ColRefCore.users().doc(uid);
}
