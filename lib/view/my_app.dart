import 'package:be_sharp/flavors.dart';
import 'package:be_sharp/view/page/first_page.dart';
import 'package:be_sharp/view/root_page/accounts_page.dart';
import 'package:be_sharp/view/root_page/admin_page.dart';
import 'package:be_sharp/view/root_page/create_user_answer_page.dart';
import 'package:be_sharp/view/root_page/edit_user_page.dart';
import 'package:be_sharp/view/root_page/logouted_page.dart';
import 'package:be_sharp/view/root_page/mute_users_page.dart';
import 'package:be_sharp/view/root_page/reauthenticate_to_delete_page.dart';
import 'package:be_sharp/view/root_page/user_deleted_page.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  static const path = "/";
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GetMaterialApp(
        title: F.title,
        debugShowCheckedModeBanner: false,
        getPages: getPages,
        initialRoute: path,
        home: const FirstPage());
  }
}

final getPages = [
  GetPage(name: MyApp.path, page: () => const MyApp()),
  GetPage(name: AccountPage.path, page: () => const AccountPage()),
  GetPage(name: AdminPage.path, page: () => AdminPage()),
  GetPage(name: EditUserPage.path, page: () => const EditUserPage()),
  GetPage(name: CreateUserAnswerPage.path, page: () => CreateUserAnswerPage()),
  GetPage(name: MuteUsersPage.path, page: () => const MuteUsersPage()),
  GetPage(name: LogoutedPage.path, page: () => const LogoutedPage()),
  GetPage(
    name: ReauthenticateToDeletePage.path,
    page: () => const ReauthenticateToDeletePage(),
  ),
  GetPage(
    name: UserDeletedPage.path,
    page: () => const UserDeletedPage(),
  )
];
