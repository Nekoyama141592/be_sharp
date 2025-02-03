import 'package:be_sharp/provider/view_model/delete_user_view_model.dart';
import 'package:be_sharp/view/common/auth_screen.dart';
import 'package:be_sharp/view/page/basic_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ReauthenticateToDeletePage extends ConsumerWidget {
  const ReauthenticateToDeletePage({super.key});
  static const path = "/reauthenticate/delete";
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(deleteUserProvider);
    DeleteUserViewModel notifier() => ref.read(deleteUserProvider.notifier);
    return BasicPage(
        appBarText: 'ユーザーを削除',
        child: AuthScreen(
            useApple:
                state?.providerData.any((e) => e.providerId == 'apple.com') ??
                    false,
            useGoogle:
                state?.providerData.any((e) => e.providerId == 'google.com') ??
                    false,
            iconData: Icons.delete,
            title: "ユーザーの削除には再認証が必要です",
            onAppleSignInButtonPressed: notifier().onAppleSignInButtonPressed,
            onGoogleSignInButtonPressed:
                notifier().onGoogleSignInButtonPressed));
  }
}
