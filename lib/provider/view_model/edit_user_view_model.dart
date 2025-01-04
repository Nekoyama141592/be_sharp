import 'dart:async';

import 'package:be_sharp/core/doc_ref_core.dart';
import 'package:be_sharp/model/firestore_model/public_user/read/read_public_user.dart';
import 'package:be_sharp/provider/user_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EditUserViewModel extends AutoDisposeAsyncNotifier<ReadPublicUser> {
  @override
  FutureOr<ReadPublicUser> build() async {
    return _fetchData(); 
  }

  Future<ReadPublicUser> _fetchData() async {
    final uid = ref.read(userProvider)!.uid;
    final doc = await DocRefCore.user(uid).get();
    return ReadPublicUser.fromJson(doc.data()!);
  }
  

}

final editUserProvider =
    AsyncNotifierProvider.autoDispose<EditUserViewModel, ReadPublicUser>(() => EditUserViewModel());
