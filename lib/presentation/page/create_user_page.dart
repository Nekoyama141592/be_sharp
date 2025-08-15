import 'package:be_sharp/presentation/common/edit_user_screen.dart';
import 'package:be_sharp/presentation/notifier/auto_dispose/check/check_view_model.dart';
import 'package:be_sharp/presentation/util/toast_ui_util.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CreateUserPage extends ConsumerWidget {
  const CreateUserPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: EditUserScreen(
        isRoot: true,
        success: () {
          ToastUiUtil.showSuccessSnackBar(context, 'ユーザーを作成しました');
          ref.invalidate(checkViewModelProvider);
        },
        failure: () {
          ToastUiUtil.showFailureSnackBar(context, 'ユーザーの作成に失敗しました。');
        },
      ),
    );
  }
}
