import 'package:be_sharp/provider/view_model/check_view_model.dart';
import 'package:be_sharp/view/common/async_screen.dart';
import 'package:be_sharp/view/page/auth_page.dart';
import 'package:be_sharp/view/root_page/edit_user_page.dart';
import 'package:be_sharp/view/page/terms_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CheckPage extends HookConsumerWidget {
  const CheckPage({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncCheckValue = ref.watch(checkProvider);
    CheckViewModel notifier() => ref.read(checkProvider.notifier);
    useEffect(() {
      notifier().toProblemPage();
      return;
    },[]);
    return AsyncScreen(
        asyncValue: asyncCheckValue,
        data: (state) {
          if (state.needsAgreeToTerms) {
            return const TermsPage();
          } else if (state.needsSignup) {
            return const AuthPage();
          } else if (state.needsEditUser) {
            return const EditUserPage();
          } else {
            return child;
          }
        });
  }
}
