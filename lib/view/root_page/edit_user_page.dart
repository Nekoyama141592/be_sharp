import 'dart:typed_data';

import 'package:be_sharp/core/padding_core.dart';
import 'package:be_sharp/model/firestore_model/public_user/read/read_public_user.dart';
import 'package:be_sharp/provider/view_model/edit_user_view_model.dart';
import 'package:be_sharp/ui_core/validator_ui_core.dart';
import 'package:be_sharp/view/common/async_screen.dart';
import 'package:be_sharp/view/common/circle_image/circle_image.dart';
import 'package:be_sharp/view/common/rounded_button.dart';
import 'package:be_sharp/view/common/text_field_container.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// ユーザー情報を編集するページ
class EditUserPage extends HookConsumerWidget {
  EditUserPage({super.key});
  final formKey = GlobalKey<FormState>();
  static const path = "/editUser";
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    EditUserViewModel notifier() => ref.read(editUserProvider.notifier);
    final asyncValue = ref.watch(editUserProvider);
    Widget positiveButton() {
      return RoundedButton(
        text: '更新',
        press: () {
          final isValid = formKey.currentState!.validate();
          if (!isValid) return;
          formKey.currentState!.save();
          notifier().onUpdateButtonPressed();
        },
      );
    }

    // ニックネームの入力をする関数
    List<Widget> nickNameField(ReadPublicUser? user) {
      return [
        const Text('ニックネームを入力'),
        const SizedBox(height: 4.0),
        TextFieldContainer(
            width: PaddingCore.textFieldWidth(context),
            child: TextFormField(
              initialValue: user?.nickNameValue(),
              onSaved: notifier().setNickName,
              validator: ValidatorUICore.nickName,
            ))
      ];
    }

    // 紹介文の入力をする関数
    List<Widget> bioField(ReadPublicUser? user) {
      return [
        const Text('紹介文を入力'),
        const SizedBox(height: 4.0),
        TextFieldContainer(
            width: PaddingCore.textFieldWidth(context),
            child: TextFormField(
              initialValue: user?.bioValue(),
              decoration: const InputDecoration(hintText: '紹介文を入力'),
              onSaved: notifier().setBio,
              validator: ValidatorUICore.bio,
            ))
      ];
    }

    Widget updateUserInfoForm(ReadPublicUser? user) {
      return Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ...nickNameField(user),
                ...bioField(user),
              ],
            ),
          ));
    }

    List<Widget> userImage(Uint8List? image) {
      final isImageNull = image == null;
      return [
        CircleImage(
          height: 100.0,
          width: 100.0,
          uint8list: image,
          onTap: notifier().onImagePickButtonPressed,
        ),
        if (isImageNull) ...[
          const SizedBox(height: 10.0),
          const Text('タップして画像を選択'),
        ]
      ];
    }

    return AsyncScreen(
        asyncValue: asyncValue,
        data: (state) {
          final user = state.user;
          final image = state.image;
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
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Center(
                  child: Column(
                    // 水平パディング
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      updateUserInfoForm(user),
                      ...userImage(image),
                      const SizedBox(height: 20.0),
                      positiveButton(),
                    ],
                  ),
                ),
              ),
            )),
          );
        });
  }
}
