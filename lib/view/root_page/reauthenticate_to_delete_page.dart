import 'package:be_sharp/core/route_core.dart';
import 'package:be_sharp/provider/view_model/delete_user/delete_user_view_model.dart';
import 'package:be_sharp/ui_core/toast_ui_core.dart';
import 'package:be_sharp/view/common/auth_screen.dart';
import 'package:be_sharp/view/page/basic_page.dart';
import 'package:be_sharp/view/root_page/user_deleted_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ReauthenticateToDeletePage extends ConsumerWidget {
  const ReauthenticateToDeletePage({super.key});
  static const path = "/reauthenticate/delete";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModelState = ref.watch(deleteUserViewModelProvider);
    final notifier = ref.read(deleteUserViewModelProvider.notifier);

    // Handle state changes
    ref.listen(deleteUserViewModelProvider, (previous, next) {
      if (next.showConfirmDialog) {
        _showConfirmDialog(context, notifier);
      }
      if (next.state == DeleteUserState.deleted) {
        RouteCore.pushPath(context, UserDeletedPage.path);
      }
    });

    return BasicPage(
      appBarText: 'ユーザーを削除',
      child: AuthScreen(
        useApple: viewModelState.user?.providerData
                .any((e) => e.providerId == 'apple.com') ??
            false,
        useGoogle: viewModelState.user?.providerData
                .any((e) => e.providerId == 'google.com') ??
            false,
        iconData: Icons.delete,
        title: "ユーザーの削除には再認証が必要です",
        onAppleSignInButtonPressed: () => notifier.onAppleSignInButtonPressed(),
        onGoogleSignInButtonPressed: () =>
            notifier.onGoogleSignInButtonPressed(),
      ),
    );
  }

  void _showConfirmDialog(BuildContext context, DeleteUserViewModel notifier) {
    ToastUiCore.cupertinoAlertDialog(
      context,
      "ユーザーを削除しますが本当によろしいですか？",
      () => notifier.confirmDelete(),
    );
  }
}
