import 'package:be_sharp/core/provider/repository/auth_repository/auth_repository_provider.dart';
import 'package:be_sharp/core/provider/keep_alive/stream/auth/stream_auth_provider.dart';
import 'package:be_sharp/presentation/util/toast_ui_util.dart';
import 'package:be_sharp/presentation/root_page/logouted_page.dart';
import 'package:be_sharp/presentation/root_page/reauthenticate_to_delete_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:be_sharp/core/util/route_util.dart';

class AccountPage extends ConsumerWidget {
  const AccountPage({
    super.key,
  });
  static const path = "/account";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(streamAuthProvider).value;
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
              onTap: () async {
                final result = await ref.read(authRepositoryProvider).signOut();
                result.when(success: (_) {
                  RouteUtil.pushPath(context, LogoutedPage.path);
                }, failure: (msg) {
                  ToastUiUtil.showErrorFlutterToast(msg);
                });
              },
            ),
            ListTile(
                title: const Text(
                  "ユーザーを消去する",
                  style: TextStyle(color: Colors.red),
                ),
                onTap: () => RouteUtil.pushPath(
                    context, ReauthenticateToDeletePage.path))
          ]
        ],
      ),
    );
  }
}
