import 'dart:convert';

import 'package:be_sharp/core/util/padding_util.dart';
import 'package:be_sharp/domain/entity/database/public_user/public_user_entity.dart';
import 'package:be_sharp/presentation/notifier/auto_dispose/edit_user/edit_user_view_model.dart';
import 'package:be_sharp/presentation/state/view_model_state/edit/edit_view_model_state.dart';
import 'package:be_sharp/presentation/util/validator_ui_util.dart';
import 'package:be_sharp/presentation/common/async_screen.dart';
import 'package:be_sharp/presentation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class EditUserScreen extends HookConsumerWidget {
  final bool isRoot;
  final void Function() success;
  final void Function() failure;

  const EditUserScreen({
    super.key,
    required this.isRoot,
    required this.success,
    required this.failure,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // useMemoizedでformKeyを生成
    final formKey = useMemoized(() => GlobalKey<FormState>());

    EditUserViewModel notifier() =>
        ref.read(editUserViewModelProvider.notifier);
    final asyncValue = ref.watch(editUserViewModelProvider);

    const primaryColor = AppColors.premiumInfo;
    const secondaryColor = AppColors.premiumInfo;
    const animationDuration = Duration(milliseconds: 300);

    Widget positiveButton() {
      return Container(
        width: PaddingUtil.textFieldWidth(context),
        height: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: primaryColor,
          boxShadow: [
            BoxShadow(
              color: primaryColor.withValues(alpha: 0.3),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: ElevatedButton(
          onPressed: () async {
            HapticFeedback.mediumImpact();
            final isValid = formKey.currentState!.validate();
            if (!isValid) return;
            formKey.currentState!.save();
            final result = await notifier().onUpdateButtonPressed();
            result.when(
              success: (_) => success(),
              failure: (_) => failure(),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Text(
            isRoot ? '作成する' : '更新する',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
        ),
      );
    }

    List<Widget> nickNameField(PublicUserEntity? user) {
      return [
        const Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 12.0, bottom: 8.0),
            child: Text(
              'ニックネーム',
              style: TextStyle(
                color: AppColors.text,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        Container(
          width: PaddingUtil.textFieldWidth(context),
          decoration: BoxDecoration(
            color: AppColors.card,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.05),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: TextFormField(
            initialValue: user?.nickNameValue(),
            onSaved: notifier().setNickName,
            validator: ValidatorUIUtil.nickName,
            style: const TextStyle(
              color: AppColors.text,
              fontSize: 16,
            ),
            decoration: InputDecoration(
              hintText: 'あなたのニックネームを入力',
              hintStyle: const TextStyle(
                color: AppColors.textLight,
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

    List<Widget> bioField(PublicUserEntity? user) {
      return [
        const Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 12.0, bottom: 8.0, top: 16.0),
            child: Text(
              '自己紹介',
              style: TextStyle(
                color: AppColors.text,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        Container(
          width: PaddingUtil.textFieldWidth(context),
          decoration: BoxDecoration(
            color: AppColors.card,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.05),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: TextFormField(
            initialValue: user?.bioValue(),
            onSaved: notifier().setBio,
            validator: ValidatorUIUtil.bio,
            style: const TextStyle(
              color: AppColors.text,
              fontSize: 16,
            ),
            maxLines: 4,
            decoration: InputDecoration(
              hintText: 'あなたのことを教えてください',
              hintStyle: const TextStyle(
                color: AppColors.textLight,
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
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            ),
          ),
        ),
      ];
    }

    Widget updateUserInfoForm(PublicUserEntity? user) {
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

    List<Widget> userImage(String uid, EditViewModelState state) {
      final image = state.image;
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
                  colors: [
                    primaryColor.withValues(alpha: 0.2),
                    secondaryColor.withValues(alpha: 0.2)
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                boxShadow: [
                  BoxShadow(
                    color: primaryColor.withValues(alpha: 0.2),
                    blurRadius: 15,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: InkWell(
                    onTap: () {
                      HapticFeedback.lightImpact();
                      notifier().onImagePickButtonPressed();
                    },
                    child: image == null
                        ? const Icon(
                            Icons.person,
                            size: 112,
                          )
                        : ClipOval(
                            child: Image.memory(
                              base64Decode(image),
                              width: 112,
                              height: 112,
                              fit: BoxFit.cover,
                            ),
                          )),
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
                    color: primaryColor.withValues(alpha: 0.3),
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
      ];
    }

    return AsyncScreen(
      asyncValue: asyncValue,
      data: (state) {
        final user = state.user;
        return SafeArea(
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
                    AnimatedContainer(
                      duration: animationDuration,
                      curve: Curves.easeInOut,
                      child: Column(
                        children: userImage(user?.uid ?? '', state),
                      ),
                    ),
                    const SizedBox(height: 32),
                    AnimatedContainer(
                      duration: animationDuration,
                      curve: Curves.easeInOut,
                      child: updateUserInfoForm(user),
                    ),
                    const SizedBox(height: 40),
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
        );
      },
    );
  }
}
