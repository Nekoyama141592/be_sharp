import 'dart:async';
import 'package:be_sharp/core/query_core.dart';
import 'package:be_sharp/extensions/prefs_extension.dart';
import 'package:be_sharp/model/firestore_model/public_user/read/read_public_user.dart';
import 'package:be_sharp/model/q_doc_info/q_doc_info.dart';
import 'package:be_sharp/provider/cache_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
class HomeViewModel extends AutoDisposeAsyncNotifier<List<QDocInfo>> {
  @override
  FutureOr<List<QDocInfo>> build() async {
    return _fetchData();
  }

  Future<List<QDocInfo>> _fetchData() async {
    final usersQuery = QueryCore.users();
    final qshot = await usersQuery.get();
    final qDocInfoList = await Future.wait(qshot.docs.map((qDoc) async {
      final publicUser = ReadPublicUser.fromJson(qDoc.data());
      final userImage = await ref.read(prefsProvider).getS3Image(publicUser.imageValue(),publicUser.imageCacheKey());
      return QDocInfo(publicUser: publicUser, qDoc: qDoc, userImage: userImage);
    }));
    return qDocInfoList;
  }

}

final homeProvider =
    AsyncNotifierProvider.autoDispose<HomeViewModel, List<QDocInfo>>(
        () => HomeViewModel());
