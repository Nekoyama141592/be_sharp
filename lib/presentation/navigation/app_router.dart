import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:be_sharp/presentation/page/first_page.dart';
import 'package:be_sharp/presentation/root_page/accounts_page.dart';
import 'package:be_sharp/presentation/root_page/admin_page.dart';
import 'package:be_sharp/presentation/root_page/create_user_answer_page.dart';
import 'package:be_sharp/presentation/root_page/edit_user_page.dart';
import 'package:be_sharp/presentation/root_page/logouted_page.dart';
import 'package:be_sharp/presentation/root_page/mute_users_page.dart';
import 'package:be_sharp/presentation/root_page/reauthenticate_to_delete_page.dart';
import 'package:be_sharp/presentation/root_page/user_deleted_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: FirstRoute.page,
          path: '/',
          initial: true,
        ),
        AutoRoute(
          page: AccountRoute.page,
          path: AccountPage.path,
        ),
        AutoRoute(
          page: AdminRoute.page,
          path: AdminPage.path,
        ),
        AutoRoute(
          page: EditUserRoute.page,
          path: EditUserPage.path,
        ),
        AutoRoute(
          page: CreateUserAnswerRoute.page,
          path: CreateUserAnswerPage.path,
        ),
        AutoRoute(
          page: MuteUsersRoute.page,
          path: MuteUsersPage.path,
        ),
        AutoRoute(
          page: LogoutedRoute.page,
          path: LogoutedPage.path,
        ),
        AutoRoute(
          page: ReauthenticateToDeleteRoute.page,
          path: ReauthenticateToDeletePage.path,
        ),
        AutoRoute(
          page: UserDeletedRoute.page,
          path: UserDeletedPage.path,
        ),
      ];
}
