import 'package:be_sharp/provider/private_user_provider.dart';
import 'package:be_sharp/view/root_page/accounts_page.dart';
import 'package:be_sharp/view/root_page/admin_page.dart';
import 'package:be_sharp/view/root_page/edit_user_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/route_manager.dart';

class OriginalDrawer extends ConsumerWidget {
  const OriginalDrawer({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(privateUserProvider);
    return asyncValue.when(
        data: (data) => Drawer(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              child: ListView(
                children: [
                  ListTile(
                    title: const Text("プロフィール編集"),
                    onTap: () => Get.toNamed(EditUserPage.path),
                  ),
                  ListTile(
                    title: const Text("アカウント情報"),
                    onTap: () => Get.toNamed(AccountPage.path),
                  ),
                  if (data.isAdmin)
                    ListTile(
                      title: const Text("管理者ページ"),
                      onTap: () => Get.toNamed(AdminPage.path),
                    ),
                ],
              ),
            ),
        error: (e, _) => const SizedBox.shrink(),
        loading: () => const SizedBox.shrink());
  }
}
