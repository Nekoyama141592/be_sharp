import 'package:be_sharp/provider/private_user_provider.dart';
import 'package:be_sharp/view/root_page/accounts_page.dart';
import 'package:be_sharp/view/root_page/admin_page.dart';
import 'package:be_sharp/view/root_page/edit_user_page.dart';
import 'package:be_sharp/view/root_page/mute_users_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/route_manager.dart';
import 'package:be_sharp/view/common/drawer/components/original_drawer_header.dart';

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
            const OriginalDrawerHeader(),
            ListTile(
              title: const Text("プロフィール編集"),
              onTap: () {
                Navigator.of(context).pop();
                Get.toNamed(EditUserPage.path);
              },
            ),
            ListTile(
              title: const Text("アカウント情報"),
              onTap: () {
                Navigator.of(context).pop();
                Get.toNamed(AccountPage.path);
              },
            ),
            ListTile(
              title: const Text("ミュートしているユーザー"),
              onTap: () {
                Navigator.of(context).pop();
                Get.toNamed(MuteUsersPage.path);
              },
            ),
            if (data.isAdmin)
              ListTile(
                title: const Text("管理者ページ"),
                onTap: () {
                  Navigator.of(context).pop();
                  Get.toNamed(AdminPage.path);
                },
              ),
          ],
        ),
      ),
      error: (e, _) => const Drawer(),
      loading: () => const Drawer(),
    );
  }
}
