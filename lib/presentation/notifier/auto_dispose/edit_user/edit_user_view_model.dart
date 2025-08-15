import 'dart:async';
import 'dart:convert';

import 'package:be_sharp/core/util/file_util.dart';
import 'package:be_sharp/core/provider/stream/auth/stream_auth_provider.dart';
import 'package:be_sharp/core/provider/repository/cloud_functions/cloud_functions_repository_provider.dart';
import 'package:be_sharp/core/provider/repository/database_repository/database_repository_provider.dart';
import 'package:be_sharp/infrastructure/model/rest_api/update_user/response/update_user_response.dart';
import 'package:be_sharp/infrastructure/repository/database_repository.dart';
import 'package:be_sharp/infrastructure/repository/result/result.dart';
import 'package:be_sharp/presentation/state/view_model_state/edit/edit_view_model_state.dart';
import 'package:be_sharp/presentation/util/toast_ui_util.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:be_sharp/infrastructure/repository/api_repository.dart';
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
  FutureOr<EditViewModelState> build() async {
    return _fetchData();
  }

  DatabaseRepository get _databaseRepository =>
      ref.read(databaseRepositoryProvider);
  ApiRepository get repository => ref.read(cloudFunctionsRepositoryProvider);
  Future<EditViewModelState> _fetchData() async {
    final uid = ref.watch(streamAuthUidProvider).value;
    if (uid == null) {
      return const EditViewModelState();
    }
    final user = await _databaseRepository.getPublicUser(uid);
    return EditViewModelState(user: user);
  }

  Future<Result<UpdateUserResponse>> onUpdateButtonPressed() async {
    final uid = ref.read(streamAuthUidProvider).value;
    if (uid == null) return const Result.failure('ログインしてください');
    final image = state.value?.image;
    if (image == null) {
      return const Result.failure('アイコンをタップしてプロフィール画像を設定してください');
    }
    state = const AsyncValue.loading();

    final result = await repository.updateUser(
        base64Image: image, bio: stringBio!, userName: stringNickName!);
    return result;
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

  void resetState() {
    isSuccess = false;
  }
}
