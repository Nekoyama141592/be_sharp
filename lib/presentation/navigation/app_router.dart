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
          path: '/account',
        ),
        AutoRoute(
          page: AdminRoute.page,
          path: '/admin',
        ),
        AutoRoute(
          page: EditUserRoute.page,
          path: '/edit-user',
        ),
        AutoRoute(
          page: CreateUserAnswerRoute.page,
          path: '/problems/:problemId/createUserAnswer',
        ),
        AutoRoute(
          page: MuteUsersRoute.page,
          path: '/mute-users',
        ),
        AutoRoute(
          page: LogoutedRoute.page,
          path: '/logouted',
        ),
        AutoRoute(
          page: ReauthenticateToDeleteRoute.page,
          path: '/reauthenticate-to-delete',
        ),
        AutoRoute(
          page: UserDeletedRoute.page,
          path: '/user-deleted',
        ),
      ];
}
