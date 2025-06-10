import 'dart:async';
import 'dart:convert';

import 'package:be_sharp/core/aws_s3_core.dart';
import 'package:be_sharp/core/file_core.dart';
import 'package:be_sharp/core/route_core.dart';
import 'package:be_sharp/model/rest_api/edit_user_info/response/edit_user_info_response.dart';
import 'package:be_sharp/model/rest_api/put_object/request/put_object_request.dart';
import 'package:be_sharp/model/view_model_state/common/user_and_image/user_and_image_state.dart';
import 'package:be_sharp/provider/keep_alive/stream/auth/stream_auth_provider.dart';
import 'package:be_sharp/provider/repository/cloud_functions/cloud_functions_repository_provider.dart';
import 'package:be_sharp/provider/repository/database_repository/database_repository_provider.dart';
import 'package:be_sharp/repository/database_repository.dart';
import 'package:be_sharp/ui_core/toast_ui_core.dart';
import 'package:be_sharp/use_case/file/file_usecase.dart';
import 'package:be_sharp/view/root_page/edit_user_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:be_sharp/repository/cloud_functions_repository.dart';
import 'package:be_sharp/provider/view_model/check/check_view_model.dart';
import 'package:be_sharp/model/rest_api/edit_user_info/request/edit_user_info_request.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
part 'edit_user_view_model.g.dart';

@riverpod
class EditUserViewModel extends _$EditUserViewModel {
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
  FutureOr<UserAndImageState> build() async {
    return _fetchData();
  }
  DatabaseRepository get _databaseRepository => ref.read(databaseRepositoryProvider);
  CloudFunctionsRepository get repository => ref.read(cloudFunctionsRepositoryProvider);
  Future<UserAndImageState> _fetchData() async {
    final uid = ref.read(streamAuthUidProvider).value!;
    final user = await _databaseRepository.getPublicUser(uid);
    final image = user != null ? await ref
        .read(fileUseCaseProvider)
        .getS3Image(user.imageCacheKey(), user.imageValue()) : null;
    return UserAndImageState(user: user, image: image);
  }

  void onUpdateButtonPressed() async {
    final uid = ref.read(streamAuthUidProvider).value;
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
      final object = AWSS3Core.profileObject(uid);
      final request =
          PutObjectRequest(base64Image: image, object: object);
      final result = await repository.putObject(request);
      await result.when(success: (res) async {
        await _updateUser();
      }, failure: (String msg) {
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
      return stateValue.copyWith(image: base64Encode(result));
    });
    isPicked = true;
  }

  Future<void> _updateUser() async {
    final uid = ref.read(streamAuthUidProvider).value!;
    final object = AWSS3Core.profileObject(uid);
    final request = EditUserInfoRequest(
        stringNickName: stringNickName!, stringBio: stringBio!, object: object);
    final result = await repository.editUserInfo(request);
    await result.when(success: _success, failure: _failure);
  }

  Future<void> _success(EditUserInfoResponse res) async {
    final uid = ref.read(streamAuthUidProvider).value!;
    await ref.read(checkViewModelProvider.notifier).onUserUpdateSuccess(uid);
    ToastUICore.showFlutterToast("プロフィールを更新しました。");
    if (Get.currentRoute == EditUserPage.path) {
      RouteCore.back();
    }
  }

  Future<void> _failure(String msg) async {
    ToastUICore.showErrorFlutterToast("プロフィールを更新できませんでした");
  }
}

