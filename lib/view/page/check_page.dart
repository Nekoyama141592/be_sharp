import 'package:be_sharp/provider/view_model/check_view_model.dart';
import 'package:be_sharp/view/page/auth_page.dart';
import 'package:be_sharp/view/page/edit_user_page.dart';
import 'package:be_sharp/view/page/error_page.dart';
import 'package:be_sharp/view/page/loading_page.dart';
import 'package:be_sharp/view/page/terms_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CheckPage extends ConsumerWidget {
  const CheckPage({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncCheckValue = ref.watch(checkProvider);
    return asyncCheckValue.when(data: (state) {
      if (state.needsAgreeToTerms) {
        return const TermsPage();
      } else if (state.needsSignup) {
        return const AuthPage();
      } else if (state.needsEditUser) {
        return const EditUserPage();
      } else {
        return child;
      }
    }, error: (e,s) => ErrorPage(e: e,), loading: () => const LoadingPage());
  }
}
