import 'dart:typed_data';

import 'package:be_sharp/core/aws_s3_core.dart';
import 'package:be_sharp/core/file_core.dart';
import 'package:be_sharp/extensions/prefs_extension.dart';
import 'package:be_sharp/model/firestore_model/public_user/read/read_public_user.dart';
import 'package:be_sharp/model/rest_api/edit_user_info/request/edit_user_info_request.dart';
import 'package:be_sharp/model/rest_api/put_object/request/put_object_request.dart';
import 'package:be_sharp/provider/cache_provider.dart';
import 'package:be_sharp/provider/view_model/edit_user_view_model.dart';
import 'package:be_sharp/repository/aws_s3_repository.dart';
import 'package:be_sharp/ui_core/toast_ui_core.dart';
import 'package:be_sharp/ui_core/validator_ui_core.dart';
import 'package:be_sharp/view/common/async_screen.dart';
import 'package:be_sharp/view/common/form/form_label.dart';
import 'package:be_sharp/view/common/form/original_form.dart';
import 'package:be_sharp/view/common/rounded_button.dart';
import 'package:be_sharp/view/state/abstract/processing_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

// ユーザー情報を編集するページ
class EditUserPage extends ConsumerStatefulWidget {
  const EditUserPage({super.key});
  static const path = "/editUser";
  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _EditUserPageState();
  }
}

class _EditUserPageState extends ProcessingState<EditUserPage> {
  double? _deviceHeight, _deviceWidth;
  // ログとフォームキーをとる
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? stringNickName;
  String? stringBio;
  String? stringBirthDate;
  Uint8List? uint8list;
  bool isPicked = false;
  @override
  Widget build(BuildContext context) {
    final asyncValue = ref.watch(editUserProvider);
    _deviceHeight = MediaQuery.of(context).size.height; // 高さを設定
    _deviceWidth = MediaQuery.of(context).size.width; // 幅を設定
    return AsyncScreen(
        asyncValue: asyncValue,
        data: (user) {
          return Scaffold(
            appBar: AppBar(
              title: const Text(
                "ユーザー情報を編集",
              ),
            ),
            body: SafeArea(
                child: GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: _deviceWidth! * 0.05),
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      // 水平パディング
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        _updateUserInfoForm(user),
                        EditImage(
                            onTap: _onImagePickButtonPressed,
                            uint8list: uint8list,
                            user: user),
                        const SizedBox(
                          height: 20.0,
                        ),
                        _positiveButton(user),
                      ],
                    ),
                  ),
                ),
              ),
            )),
          );
        });
  }

  // 入力フォーム関数
  Widget _updateUserInfoForm(ReadPublicUser user) {
    return SizedBox(
      height: _deviceHeight! * 0.50,
      child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ..._userNameTextField(user),
                ..._bioTextField(user),
                ..._stringBirthDateTextField(user),
              ],
            ),
          )),
    );
  }

  // ログインボタン関数
  Widget _positiveButton(ReadPublicUser publicUser) {
    return RoundedButton(
        text: "送信",
        press: () => _onUpdateButtonPressed(publicUser),
        buttonColor: Theme.of(context).primaryColor,
        textColor: Colors.white);
  }

  // userName入力をする関数
  List<Widget> _userNameTextField(ReadPublicUser user) {
    return [
      const FormLabel(
        title: "ニックネーム",
      ),
      OriginalForm(
          initialValue: user.nickNameValue(),
          onSaved: (value) {
            setState(() {
              stringNickName = value;
            });
          },
          validator: ValidatorUICore.nickName)
    ];
  }

  // description入力をする関数
  List<Widget> _bioTextField(ReadPublicUser user) {
    return [
      const FormLabel(
        title: "紹介文",
      ),
      OriginalForm(
        initialValue: user.bioValue(),
        keyboardType: TextInputType.multiline,
        maxLines: null,
        onSaved: (value) {
          setState(() {
            stringBio = value;
          });
        },
        validator: ValidatorUICore.bio,
      )
    ];
  }

  // 誕生日を入力をする関数
  List<Widget> _stringBirthDateTextField(ReadPublicUser user) {
    return [
      const FormLabel(
        title: "誕生日(8桁の数字)",
      ),
      OriginalForm(
        initialValue: user.birthDateValue(),
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(hintText: '2004年1月1日生まれなら20040101'),
        onSaved: (value) {
          setState(() {
            stringBirthDate = value;
          });
        },
        validator: ValidatorUICore.stringBirthDate,
      )
    ];
  }

  void _onUpdateButtonPressed(ReadPublicUser publicUser) async {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) return;
    // フォームフィールドの情報を変数に保存
    _formKey.currentState!.save();
    if (uint8list == null) {
      await ToastUICore.showErrorFlutterToast("アイコンをタップしてプロフィール画像を設定してください");
      return;
    }
    if (isProcessing) return; // 二重リクエストを防止.
    startProcess();
    if (isPicked) {
      // 写真が新しくなった場合の処理
      final repository = AWSS3Repository();
      final fileName = AWSS3Core.profileObject(publicUser.uid);
      final request = PutObjectRequest.fromUint8List(
          uint8list: uint8list!, fileName: fileName);
      ToastUICore.showFlutterToast('更新中...');
      final result = await repository.putObject(request);
      await result.when(success: (res) async {
        await _updateUser(publicUser);
      }, failure: () {
        ToastUICore.showErrorFlutterToast("画像のアップロードが失敗しました");
      });
    } else {
      // 写真がそのまま場合の処理
      await _updateUser(publicUser);
    }
    endProcess();
  }

  void _onImagePickButtonPressed() async {
    const source = ImageSource.gallery;
    final result = await FileCore.getCompressedImage(source);
    if (result == null) return;
    final isNotSquare = await FileCore.isNotSquareImage(result);
    if (isNotSquare) {
      ToastUICore.showErrorFlutterToast(FileCore.squareImageRequestMsg);
      return;
    }
    setState(() {
      uint8list = result;
      isPicked = true;
    });
  }

  Future<void> _updateUser(ReadPublicUser publicUser) async {
    final notifier = ref.read(editUserProvider.notifier);
    final uid = publicUser.uid;
    final object = AWSS3Core.profileObject(uid);
    final requst = EditUserInfoRequest(
        stringNickName: stringNickName!,
        stringBio: stringBio!,
        stringBirthDate: stringBirthDate!,
        object: object);
    await notifier.updateUser(requst, uid);
  }
}

class EditImage extends HookConsumerWidget {
  const EditImage({
    super.key,
    this.onTap,
    required this.uint8list,
    required this.user,
  });

  final ReadPublicUser user;
  final Uint8List? uint8list;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final initialImage = useState<Uint8List?>(null);

    useEffect(() {
      _loadInitialImage(ref, initialImage);
      return;
    }, []);

    return InkWell(
      onTap: onTap,
      child: _buildImageContent(initialImage.value),
    );
  }

  Future<void> _loadInitialImage(
      WidgetRef ref, ValueNotifier<Uint8List?> initialImage) async {
    final userImage = await ref
        .read(prefsProvider)
        .getS3Image(user.imageCacheKey(), user.imageValue());
    initialImage.value = userImage;
  }

  Widget _buildImageContent(Uint8List? initialValue) {
    if (uint8list != null) {
      return SizedBox(
          height: 100.0, width: 100.0, child: Image.memory(uint8list!));
    } else if (initialValue != null) {
      return SizedBox(
          height: 100.0, width: 100.0, child: Image.memory(initialValue));
    } else {
      return const Row(
        children: [
          Icon(
            Icons.image,
            size: 100.0,
          ),
          Text("画像を選択"),
        ],
      );
    }
  }
}
