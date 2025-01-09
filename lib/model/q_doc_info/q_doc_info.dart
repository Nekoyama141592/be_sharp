import 'dart:typed_data';

import 'package:be_sharp/model/firestore_model/public_user/read/read_public_user.dart';
import 'package:be_sharp/typedefs/firestore_typedef.dart';

class QDocInfo {
  QDocInfo(
      {required this.publicUser, required this.qDoc, required this.userImage});
  final ReadPublicUser publicUser;
  final QDoc qDoc;
  final Uint8List? userImage;
}
