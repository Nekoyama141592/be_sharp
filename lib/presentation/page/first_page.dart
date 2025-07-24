import 'package:auto_route/auto_route.dart';
import 'package:be_sharp/presentation/common/edit_user_screen.dart';
import 'package:be_sharp/presentation/notifier/auto_dispose/check/check_view_model.dart';
import 'package:be_sharp/presentation/common/async_screen.dart';
import 'package:be_sharp/presentation/page/auth_page.dart';
import 'package:be_sharp/presentation/page/my_home_page/my_home_page.dart';
import 'package:be_sharp/presentation/page/terms_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class FirstPage extends HookConsumerWidget {
  const FirstPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncCheckValue = ref.watch(checkViewModelProvider);
    return AsyncScreen(
        asyncValue: asyncCheckValue,
        data: (state) {
          if (state.needsAgreeToTerms) {
            return const TermsPage();
          } else if (state.needsSignup) {
            return const AuthPage();
          } else if (state.user?.registeredInfo == null) {
            return Scaffold(
              body: EditUserScreen(),
            );
          } else {
            return const MyHomePage();
          }
        });
  }
}
