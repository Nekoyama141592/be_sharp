import 'dart:async';
import 'dart:convert';

import 'package:be_sharp/core/util/aws_s3_util.dart';
import 'package:be_sharp/core/util/file_util.dart';
import 'package:be_sharp/presentation/state/view_model_state/common/user_and_image/user_and_image_state.dart';
import 'package:be_sharp/core/provider/stream/auth/stream_auth_provider.dart';
import 'package:be_sharp/core/provider/repository/cloud_functions/cloud_functions_repository_provider.dart';
import 'package:be_sharp/core/provider/repository/database_repository/database_repository_provider.dart';
import 'package:be_sharp/infrastructure/repository/database_repository.dart';
import 'package:be_sharp/presentation/util/toast_ui_util.dart';
import 'package:be_sharp/core/provider/use_case/file/file_use_case_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:be_sharp/infrastructure/repository/api_repository.dart';
import 'package:be_sharp/presentation/notifier/auto_dispose/check/check_view_model.dart';
import 'package:image_picker/image_picker.dart';
part 'edit_user_view_model.g.dart';

@riverpod
class EditUserViewModel extends _$EditUserViewModel {
  String? stringNickName;
  String? stringBio;
  bool isPicked = false;
  bool isSuccess = false;

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

  DatabaseRepository get _databaseRepository =>
      ref.read(databaseRepositoryProvider);
  ApiRepository get repository => ref.read(cloudFunctionsRepositoryProvider);
  Future<UserAndImageState> _fetchData() async {
    final uid = ref.read(streamAuthUidProvider).value;
    if (uid == null) {
      return const UserAndImageState();
    }
    final user = await _databaseRepository.getPublicUser(uid);
    String? image;
    if (user != null) {
      final imageCacheKey = user.imageCacheKey();
      final imageValue = user.imageValue();
      if (imageCacheKey != null && imageValue != null) {
        final result = await ref
            .read(fileUseCaseProvider)
            .getS3Image(imageCacheKey, imageValue);
        image = result.when(
          success: (img) => img,
          failure: (_) => null,
        );
      }
    }
    return UserAndImageState(user: user, image: image);
  }

  Future<void> onUpdateButtonPressed() async {
    final uid = ref.read(streamAuthUidProvider).value;
    if (uid == null) return;
    final image = state.value?.image;
    if (image == null) {
      ToastUiUtil.showErrorFlutterToast("アイコンをタップしてプロフィール画像を設定してください");
      return;
    }
    final currentState = state.value;
    if (currentState == null) return;

    state = const AsyncValue.loading();

    if (isPicked) {
      // 写真が新しくなった場合の処理
      final object = AWSS3Util.profileObject(uid);
      final result = await repository.putObject(
        base64Image: image,
        object: object,
      );
      await result.when(
        success: (res) async {
          await _updateUser();
        },
        failure: (String msg) {
          ToastUiUtil.showErrorFlutterToast("画像のアップロードが失敗しました");
          state = AsyncValue.data(currentState);
        },
      );
    } else {
      // 写真がそのまま場合の処理
      await _updateUser();
    }
  }

  void onImagePickButtonPressed() async {
    const source = ImageSource.gallery;
    final result = await FileUtil.getCompressedImage(source);
    if (result == null) return;
    final isNotSquare = await FileUtil.isNotSquareImage(result);
    if (isNotSquare) {
      ToastUiUtil.showErrorFlutterToast(FileUtil.squareImageRequestMsg);
      return;
    }
    final currentState = state.value;
    if (currentState == null) return;

    state = AsyncValue.data(currentState.copyWith(image: base64Encode(result)));
    isPicked = true;
  }

  Future<void> _updateUser() async {
    final uid = ref.read(streamAuthUidProvider).value!;
    final object = AWSS3Util.profileObject(uid);
    final result = await repository.editUserInfo(
      stringNickName: stringNickName!,
      stringBio: stringBio!,
      object: object,
    );
    await result.when(
      success: (_) => _success(),
      failure: (msg) => _failure(msg),
    );
  }

  Future<void> _success() async {
    final uid = ref.read(streamAuthUidProvider).value!;
    await ref.read(checkViewModelProvider.notifier).onUserUpdateSuccess(uid);
    ToastUiUtil.showFlutterToast("プロフィールを更新しました。");
    isSuccess = true;
  }

  Future<void> _failure(String msg) async {
    ToastUiUtil.showErrorFlutterToast("プロフィールを更新できませんでした");
  }

  void resetState() {
    isSuccess = false;
  }
}
