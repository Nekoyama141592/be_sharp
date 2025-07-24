import 'package:be_sharp/core/util/route_util.dart';
import 'package:be_sharp/presentation/constants/colors.dart';
import 'package:be_sharp/presentation/notifier/keep_alive/private_user/private_user_notifier_provider.dart';
import 'package:be_sharp/presentation/root_page/accounts_page.dart';
import 'package:be_sharp/presentation/root_page/admin_page.dart';
import 'package:be_sharp/presentation/root_page/edit_user_page.dart';
import 'package:be_sharp/presentation/root_page/mute_users_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:be_sharp/presentation/common/drawer/components/original_drawer_header.dart';

class OriginalDrawer extends ConsumerWidget {
  const OriginalDrawer({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(privateUserNotifierProvider);
    return asyncValue.when(
      data: (data) => Drawer(
        backgroundColor: AppColors.surface,
        child: Column(
          children: [
            const OriginalDrawerHeader(),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: 8),
                children: [
                  _buildDrawerItem(
                    context,
                    title: "プロフィール編集",
                    icon: Icons.person_outline,
                    onTap: () {
                      Navigator.pop(context);
                      RouteUtil.pushPath(context, EditUserPage.path);
                    },
                  ),
                  _buildDrawerItem(
                    context,
                    title: "アカウント情報",
                    icon: Icons.account_circle_outlined,
                    onTap: () {
                      Navigator.pop(context);
                      RouteUtil.pushPath(context, AccountPage.path);
                    },
                  ),
                  _buildDrawerItem(
                    context,
                    title: "ミュートしているユーザー",
                    icon: Icons.volume_off_outlined,
                    onTap: () {
                      Navigator.pop(context);
                      RouteUtil.pushPath(context, MuteUsersPage.path);
                    },
                  ),
                  if (data?.isAdmin ?? false)
                    _buildDrawerItem(
                      context,
                      title: "管理者ページ",
                      icon: Icons.admin_panel_settings_outlined,
                      onTap: () {
                        Navigator.pop(context);
                        RouteUtil.pushPath(context, AdminPage.path);
                      },
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
      error: (e, _) => const Drawer(),
      loading: () => const Drawer(),
    );
  }

  Widget _buildDrawerItem(
    BuildContext context, {
    required String title,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        color: AppColors.text,
        size: 20,
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: AppColors.text,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
    );
  }
}
