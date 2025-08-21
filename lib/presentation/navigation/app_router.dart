import 'package:auto_route/auto_route.dart';
import 'package:be_sharp/presentation/notifier/keep_alive/latest_problem/latest_problem_notifier_provider.dart';
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
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  AppRouter(this.ref);
  final Ref ref;
  @override
  List<AutoRoute> get routes {
    final latestProblemState = ref.watch(latestProblemNotifierProvider).value;
    final isNewProblem = latestProblemState?.isNewProblem ?? false;
    String rootPath = FirstPage.path;
    String createPath = CreateUserAnswerPage.path;
    return [
      AutoRoute(
        page: FirstRoute.page,
        path: isNewProblem ? createPath : rootPath,
      ),
      AutoRoute(
        page: CreateUserAnswerRoute.page,
        path: isNewProblem ? rootPath : createPath,
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
}
