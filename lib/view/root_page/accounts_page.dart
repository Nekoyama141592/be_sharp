import 'package:be_sharp/provider/user_provider.dart';
import 'package:be_sharp/view/root_page/reauthenticate_to_delete_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';

class AccountPage extends ConsumerWidget {
  const AccountPage({
    super.key,
  });
  static const path = "/account";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(userProvider);
    UserProvider notifier() => ref.read(userProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text("アカウントページ"),
      ),
      body: ListView(
        children: [
          ListTile(
              title: Text(
                  "認証情報: ${state?.providerData.map((e) => e.providerId).join(',') ?? ''}")),
          ListTile(title: SelectableText("ユーザーID: ${state?.uid ?? ''}")),
          ListTile(title: SelectableText("メールアドレス: ${state?.email ?? ''}")),
          if (state != null) ...[
            ListTile(
              title: const Text("ログアウトする"),
              onTap: notifier().onSignoutButtonPressed,
            ),
            ListTile(
                title: const Text(
                  "ユーザーを消去する",
                  style: TextStyle(color: Colors.red),
                ),
                onTap: () => Get.toNamed(ReauthenticateToDeletePage.path))
          ]
        ],
      ),
    );
  }
}
