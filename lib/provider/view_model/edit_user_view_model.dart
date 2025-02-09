import 'dart:async';

import 'package:be_sharp/core/aws_s3_core.dart';
import 'package:be_sharp/core/doc_ref_core.dart';
import 'package:be_sharp/core/file_core.dart';
import 'package:be_sharp/model/firestore_model/public_user/read/read_public_user.dart';
import 'package:be_sharp/model/rest_api/edit_user_info/response/edit_user_info_response.dart';
import 'package:be_sharp/model/rest_api/put_object/request/put_object_request.dart';
import 'package:be_sharp/model/view_model_state/edit_user/edit_user_state.dart';
import 'package:be_sharp/provider/cache_provider.dart';
import 'package:be_sharp/provider/user_provider.dart';
import 'package:be_sharp/repository/aws_s3_repository.dart';
import 'package:be_sharp/ui_core/toast_ui_core.dart';
import 'package:be_sharp/view/root_page/edit_user_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:be_sharp/repository/on_call_repository.dart';
import 'package:be_sharp/provider/view_model/check_view_model.dart';
import 'package:be_sharp/model/rest_api/edit_user_info/request/edit_user_info_request.dart';
import 'package:be_sharp/extensions/prefs_extension.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class EditUserViewModel extends AutoDisposeAsyncNotifier<EditUserState> {
  String? stringNickName;
  String? stringBio;
  bool isPicked = false;

  void setNickName(String? value) {
    stringNickName = value;
  }

  void setBio(String? value) {
    stringBio = value;
  }

  @override
  FutureOr<EditUserState> build() async {
    return _fetchData();
  }

  Future<EditUserState> _fetchData() async {
    final uid = ref.read(userProvider)!.uid;
    final doc = await DocRefCore.user(uid).get();
    final docData = doc.data()!;
    final user = ReadPublicUser.fromJson(docData);
    final image = await ref
        .read(prefsProvider)
        .getS3Image(user.imageCacheKey(), user.imageValue());
    return EditUserState(user: user, image: image);
  }

  void onUpdateButtonPressed() async {
    final uid = ref.read(userProvider)?.uid;
    if (uid == null) return;
    final image = state.value?.image;
    if (image == null) {
      ToastUICore.showErrorFlutterToast("アイコンをタップしてプロフィール画像を設定してください");
      return;
    }
    final stateValue = state.value;
    if (stateValue == null) return;
    state = const AsyncValue.loading();
    if (isPicked) {
      // 写真が新しくなった場合の処理
      final repository = AWSS3Repository();
      final object = AWSS3Core.profileObject(uid);
      final request =
          PutObjectRequest.fromUint8List(uint8list: image, fileName: object);
      final result = await repository.putObject(request);
      await result.when(success: (res) async {
        await _updateUser();
      }, failure: () {
        ToastUICore.showErrorFlutterToast("画像のアップロードが失敗しました");
      });
    } else {
      // 写真がそのまま場合の処理
      await _updateUser();
    }
    state = await AsyncValue.guard(() async {
      return stateValue;
    });
  }

  void onImagePickButtonPressed() async {
    const source = ImageSource.gallery;
    final result = await FileCore.getCompressedImage(source);
    if (result == null) return;
    final isNotSquare = await FileCore.isNotSquareImage(result);
    if (isNotSquare) {
      ToastUICore.showErrorFlutterToast(FileCore.squareImageRequestMsg);
      return;
    }
    final stateValue = state.value;
    if (stateValue == null) return;
    state = await AsyncValue.guard(() async {
      return stateValue.copyWith(image: result);
    });
    isPicked = true;
  }

  Future<void> _updateUser() async {
    final uid = ref.read(userProvider)!.uid;
    final object = AWSS3Core.profileObject(uid);
    final request = EditUserInfoRequest(
        stringNickName: stringNickName!, stringBio: stringBio!, object: object);
    final repository = OnCallRepository();
    final result = await repository.editUserInfo(request);
    await result.when(success: _success, failure: _failure);
  }

  Future<void> _success(EditUserInfoResponse res) async {
    final uid = ref.read(userProvider)!.uid;
    await ref.read(checkProvider.notifier).onUserUpdateSuccess(uid);
    ToastUICore.showFlutterToast("プロフィールを更新しました。");
    if (Get.currentRoute == EditUserPage.path) {
      Get.back();
    }
  }

  Future<void> _failure() async {
    ToastUICore.showErrorFlutterToast("プロフィールを更新できませんでした");
  }
}

final editUserProvider =
    AsyncNotifierProvider.autoDispose<EditUserViewModel, EditUserState>(
        () => EditUserViewModel());
