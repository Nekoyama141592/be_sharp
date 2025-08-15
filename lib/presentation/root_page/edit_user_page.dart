import 'package:auto_route/auto_route.dart';
import 'package:be_sharp/presentation/common/edit_user_screen.dart';
import 'package:be_sharp/presentation/constants/colors.dart';
import 'package:be_sharp/presentation/util/toast_ui_util.dart';
import 'package:flutter/material.dart';
import 'package:be_sharp/core/util/route_util.dart';

@RoutePage()
class EditUserPage extends StatelessWidget {
  const EditUserPage({super.key});
  static const path = "/editUser";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: EditUserScreen(
          isRoot: false,
          success: () {
            ToastUiUtil.showSuccessSnackBar(context, 'プロフィールを更新しました。');
            RouteUtil.back(context);
          },
          failure: () {
            ToastUiUtil.showFailureSnackBar(context, 'プロフィールの更新に失敗しました。');
          },
        ),
        backgroundColor: AppColors.background,
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            centerTitle: true,
            title: const Text(
              "プロフィール編集",
              style: TextStyle(
                color: AppColors.text,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: AppColors.text,
              ),
              onPressed: () => RouteUtil.back(context),
            )));
  }
}
