import 'dart:async';

import 'package:be_sharp/core/doc_ref_core.dart';
import 'package:be_sharp/model/firestore_model/public_user/read/read_public_user.dart';
import 'package:be_sharp/provider/user_provider.dart';
import 'package:be_sharp/ui_core/toast_ui_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:be_sharp/repository/on_call_repository.dart';
import 'package:be_sharp/provider/view_model/check_view_model.dart';
import 'package:be_sharp/model/rest_api/edit_user_info/request/edit_user_info_request.dart';
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
  Future<void> updateUser(EditUserInfoRequest request,String uid) async {
    final repository = OnCallRepository();
    final result = await repository.editUserInfo(request);
    await result.when(success: (_) async {
      await ref.read(checkProvider.notifier).onUserUpdateSuccess(uid);
      ToastUICore.showFlutterToast("プロフィールを更新しました。");
    }, failure: () {
      ToastUICore.showErrorFlutterToast("プロフィールを更新できませんでした");
    });
  }

}

final editUserProvider =
    AsyncNotifierProvider.autoDispose<EditUserViewModel, ReadPublicUser>(() => EditUserViewModel());
