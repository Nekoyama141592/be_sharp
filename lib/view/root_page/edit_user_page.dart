import 'dart:typed_data';

import 'package:be_sharp/core/aws_s3_core.dart';
import 'package:be_sharp/core/file_core.dart';
import 'package:be_sharp/model/firestore_model/common/detected_text/detected_text.dart';
import 'package:be_sharp/model/firestore_model/common/moderated_image/moderated_image.dart';
import 'package:be_sharp/model/firestore_model/public_user/read/read_public_user.dart';
import 'package:be_sharp/model/firestore_model/public_user/registeredInfo/registered_info.dart';
import 'package:be_sharp/model/rest_api/put_object/request/put_object_request.dart';
import 'package:be_sharp/provider/view_model/check_view_model.dart';
import 'package:be_sharp/provider/view_model/edit_user_view_model.dart';
import 'package:be_sharp/repository/aws_s3_repository.dart';
import 'package:be_sharp/repository/firestore_repository.dart';
import 'package:be_sharp/ui_core/toast_ui_core.dart';
import 'package:be_sharp/ui_core/validator_ui_core.dart';
import 'package:be_sharp/view/common/async_screen.dart';
import 'package:be_sharp/view/common/form/form_label.dart';
import 'package:be_sharp/view/common/form/original_form.dart';
import 'package:be_sharp/view/common/rounded_button.dart';
import 'package:be_sharp/view/state/abstract/processing_state.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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

  String? nickName;
  String? bio;
  String? stringBirthDate;
  Uint8List? uint8list;
  bool isPicked = false;


  @override
  Widget build(BuildContext context) {
    final asyncValue = ref.watch(editUserProvider);
    _deviceHeight = MediaQuery.of(context).size.height; // 高さを設定
    _deviceWidth = MediaQuery.of(context).size.width; // 幅を設定
    return AsyncScreen(asyncValue: asyncValue, data: (state) {
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
                  _updateUserInfoForm(),
                  _image(),
                  _positiveButton(state),
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
  Widget _updateUserInfoForm() {
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
                ..._userNameTextField(),
                ..._bioTextField(),
                ..._stringBirthDateTextField(),
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
  List<Widget> _userNameTextField() {
    return [
      const FormLabel(
        title: "ニックネーム",
      ),
      OriginalForm(
          initialValue: nickName,
          onSaved: (value) {
            setState(() {
              nickName = value;
            });
          },
          validator: ValidatorUICore.nickName)
    ];
  }

  // description入力をする関数
  List<Widget> _bioTextField() {
    return [
      const FormLabel(
        title: "紹介文",
      ),
      OriginalForm(
        initialValue: bio,
        keyboardType: TextInputType.multiline,
        maxLines: null,
        onSaved: (value) {
          setState(() {
            bio = value;
          });
        },
        validator: ValidatorUICore.bio,
      )
    ];
  }

  // 誕生日を入力をする関数
  List<Widget> _stringBirthDateTextField() {
    return [
      const FormLabel(
        title: "誕生日(8桁の数字)",
      ),
      OriginalForm(
        initialValue: stringBirthDate,
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

  

  Widget _image() {
    return uint8list == null
        ? Row(
            children: [
              InkWell(
                onTap: _onImagePickButtonPressed,
                child: const Icon(
                  Icons.image,
                  size: 100.0,
                ),
              ),
              const Text("画像を選択")
            ],
          )
        : InkWell(
            onTap: _onImagePickButtonPressed,
            child: SizedBox(
              width: 100.0,
              height: 100.0,
              child: Image.memory(uint8list!),
            ),
          );
  }

  void _onUpdateButtonPressed(ReadPublicUser publicUser) async {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) return;
    // フォームフィールドの情報を変数に保存
    _formKey.currentState!.save();
    if (uint8list == null) {
      await ToastUICore.showErrorFlutterToast("アイコンをタップしてプロフィール画像をアップロードしてください");
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
    final repository = FirestoreRepository();
    final docRef = publicUser.typedRef();
    final object = AWSS3Core.profileObject(publicUser.uid);
    final info = RegisteredInfo(
          nickName: DetectedText(value: nickName!).toJson(),
          bio: DetectedText(value: bio!).toJson(),
          birthDate: Timestamp.fromDate(DateTime.parse(stringBirthDate!)),
          image: ModeratedImage(object: object).toJson(),
        );
    final json = {'registeredInfo': info.toJson()};
    final result = await repository.updateDoc(docRef, json);
    await result.when(success: (_) async {
      await ref.read(checkProvider.notifier).onUserUpdateSuccess(publicUser.uid);
      ToastUICore.showFlutterToast("プロフィールを更新しました。");
    }, failure: () {
      ToastUICore.showErrorFlutterToast("プロフィールを更新できませんでした");
    });
  }
}
