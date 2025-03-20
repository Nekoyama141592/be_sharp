import 'package:be_sharp/core/padding_core.dart';
import 'package:be_sharp/model/firestore_model/public_user/read/read_public_user.dart';
import 'package:be_sharp/provider/view_model/edit_user_view_model.dart';
import 'package:be_sharp/ui_core/validator_ui_core.dart';
import 'package:be_sharp/view/common/async_screen.dart';
import 'package:be_sharp/view/common/circle_image/circle_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/services.dart';

// ユーザー情報を編集するページ
class EditUserPage extends HookConsumerWidget {
  EditUserPage({super.key});
  final formKey = GlobalKey<FormState>();
  static const path = "/editUser";
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    EditUserViewModel notifier() => ref.read(editUserProvider.notifier);
    final asyncValue = ref.watch(editUserProvider);
    
    // テーマカラーの定義
    const primaryColor = Color(0xFF6C63FF);
    const secondaryColor = Color(0xFF8F8CF2);
    const backgroundColor = Color(0xFFF8F9FE);
    const textColor = Color(0xFF2E3E5C);
    
    // アニメーション用のコントローラー
    const animationDuration = Duration(milliseconds: 300);
    
    // 更新ボタン
    Widget positiveButton() {
      return Container(
        width: PaddingCore.textFieldWidth(context),
        height: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: const LinearGradient(
            colors: [primaryColor, secondaryColor],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          boxShadow: [
            BoxShadow(
              color: primaryColor.withOpacity(0.3),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: ElevatedButton(
          onPressed: () {
            HapticFeedback.mediumImpact();
            final isValid = formKey.currentState!.validate();
            if (!isValid) return;
            formKey.currentState!.save();
            notifier().onUpdateButtonPressed();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: const Text(
            '更新する',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
        ),
      );
    }

    // ニックネームの入力フィールド
    List<Widget> nickNameField(ReadPublicUser? user) {
      return [
        const Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 12.0, bottom: 8.0),
            child: Text(
              'ニックネーム',
              style: TextStyle(
                color: textColor,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        Container(
          width: PaddingCore.textFieldWidth(context),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: TextFormField(
            initialValue: user?.nickNameValue(),
            onSaved: notifier().setNickName,
            validator: ValidatorUICore.nickName,
            style: const TextStyle(
              color: textColor,
              fontSize: 16,
            ),
            decoration: InputDecoration(
              hintText: 'あなたのニックネームを入力',
              hintStyle: TextStyle(
                color: Colors.grey.shade400,
                fontSize: 16,
              ),
              prefixIcon: const Icon(
                Icons.person_outline,
                color: primaryColor,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide.none,
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 16),
            ),
          ),
        ),
      ];
    }

    // 紹介文の入力フィールド
    List<Widget> bioField(ReadPublicUser? user) {
      return [
        const Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 12.0, bottom: 8.0, top: 16.0),
            child: Text(
              '自己紹介',
              style: TextStyle(
                color: textColor,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        Container(
          width: PaddingCore.textFieldWidth(context),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: TextFormField(
            initialValue: user?.bioValue(),
            onSaved: notifier().setBio,
            validator: ValidatorUICore.bio,
            style: const TextStyle(
              color: textColor,
              fontSize: 16,
            ),
            maxLines: 4,
            decoration: InputDecoration(
              hintText: 'あなたのことを教えてください',
              hintStyle: TextStyle(
                color: Colors.grey.shade400,
                fontSize: 16,
              ),
              prefixIcon: const Padding(
                padding: EdgeInsets.only(bottom: 64.0, left: 12.0, right: 12.0),
                child: Icon(
                  Icons.edit_note,
                  color: primaryColor,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide.none,
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            ),
          ),
        ),
      ];
    }

    // フォーム全体
    Widget updateUserInfoForm(ReadPublicUser? user) {
      return Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ...nickNameField(user),
            ...bioField(user),
          ],
        ),
      );
    }

    // プロフィール画像
    List<Widget> userImage(Uint8List? image) {
      final isImageNull = image == null;
      return [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              height: 120.0,
              width: 120.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [primaryColor.withOpacity(0.2), secondaryColor.withOpacity(0.2)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                boxShadow: [
                  BoxShadow(
                    color: primaryColor.withOpacity(0.2),
                    blurRadius: 15,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: CircleImage(
                  height: 112.0,
                  width: 112.0,
                  uint8list: image,
                  onTap: () {
                    HapticFeedback.lightImpact();
                    notifier().onImagePickButtonPressed();
                  },
                ),
              ),
            ),
            Container(
              height: 36,
              width: 36,
              decoration: BoxDecoration(
                color: primaryColor,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: primaryColor.withOpacity(0.3),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                  size: 18,
                ),
                onPressed: () {
                  HapticFeedback.lightImpact();
                  notifier().onImagePickButtonPressed();
                },
              ),
            ),
          ],
        ),
        if (isImageNull) ...[
          const SizedBox(height: 12.0),
          Text(
            'プロフィール画像を選択',
            style: TextStyle(
              color: textColor.withOpacity(0.7),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ]
      ];
    }

    return AsyncScreen(
      asyncValue: asyncValue,
      data: (state) {
        final user = state.user;
        final image = state.image;
        return Scaffold(
          backgroundColor: backgroundColor,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            centerTitle: true,
            title: const Text(
              "プロフィール編集",
              style: TextStyle(
                color: textColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: textColor,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          body: SafeArea(
            child: GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      // プロフィール画像セクション
                      AnimatedContainer(
                        duration: animationDuration,
                        curve: Curves.easeInOut,
                        child: Column(
                          children: userImage(image),
                        ),
                      ),
                      const SizedBox(height: 32),
                      // フォームセクション
                      AnimatedContainer(
                        duration: animationDuration,
                        curve: Curves.easeInOut,
                        child: updateUserInfoForm(user),
                      ),
                      const SizedBox(height: 40),
                      // 更新ボタン
                      AnimatedContainer(
                        duration: animationDuration,
                        curve: Curves.easeInOut,
                        child: positiveButton(),
                      ),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

